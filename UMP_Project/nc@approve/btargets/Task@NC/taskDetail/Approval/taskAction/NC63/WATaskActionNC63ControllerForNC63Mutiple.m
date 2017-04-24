
#import "WATaskActionNC63Controller.h"
#import "WAPickerTextField.h"
#import "WATitleAndAddBtnView.h"
#import "AppDelegate.h"
#import "WADoActionRequstVO.h"
#import "WADoActionRequstsVO.h"
#import "WAActivityVO.h"
#import "WATaskActionNC63ViewController.h"
#import "WALinkManVO.h"
#import <QuartzCore/CoreAnimation.h>
#import "WAGroupButtonIntervalView.h"
#import "WALinkManNC63VO.h"
#import "WAAttachMentUpRequestVO.h"
#import "WASpinnerView.h"

@implementation CWATaskActionNC63Controller

static NSString *WA_LEFT_TASKCENTER_BTNNORMALBD = @"a2_left";
static NSString *WA_LEFT_TASKCENTER_BTNTOUCHBD = @"a2_left_touch";
static NSString *WA_RIGHT_TASKCENTER_BTNNORMALBD = @"a2_right";
static NSString *WA_RIGHT_TASKCENTER_BTNTOUCHBD = @"a2_right_touch";

static NSString *WA_TASK_ACTION_CANTNOTE = @"0";
static NSString *WA_TASK_ACTION_SELECTABLEANDNOMUSTNOTE = @"1";
static NSString *WA_TASK_ACTION_SELECTABLEANDMUSTNOTE = @"2";
static NSString *WA_TASK_ACTION_NOSELECTABLEANDNOMUSTNOTE = @"3";
static NSString *WA_TASK_ACTION_NOSELECTABLEANDMUSTNOTE = @"4";

static NSString *WA_TASK_ACTION_USEROFASSIGNTYPE = @"1";
static NSString *WA_TASK_ACTION_ACTIVITYOFASSIGNTYPE = @"2";

static NSString *WA_TASK_ACTION_PARALLELASSIGNTYPE = @"1";
static NSString *WA_TASK_ACTION_SERIALASSIGNTYPE = @"2";


static int WA_DEAL_FINISH_ALERTVIEW_TAG = 1;
static int WA_CANCEL_ALERTVIEW_TAG = 2;

static int WA_AUDITTEXTFILE_MAXLENGTH = 100;

@synthesize iTaskActionNC63ViewController;
@synthesize iTaskActionViewVO;
@synthesize iAttachList;
@synthesize iArrayStrokes;

static NSString *WA_TASKCENTER_ADDBTNIMAGENAME = @"task_btn_add.png";
static NSString *WA_TASKCENTER_BLUEPEN = @"task_edit";


static NSString *WA_TASKCENTER_GREEN_ADDBTNIMAGENAME = @"taskcenter_green_add.png";


- (id)initWithTaskActionViewVO:(CWATaskActionViewVO *)aTaskActionViewVO
{
  self = [super init];
  if(self)
  {
    self.iTaskActionViewVO = aTaskActionViewVO;
    iTaskActionNC63BnsHandler = [[CWATaskActionNC63BnsHandler alloc] init];
    [self calRow];
  }
  return self;
  
}

#pragma mark 实现MWALinkManNC63ViewControllerDelegate委托
- (void)saveSelectedLists:(NSMutableArray *)aSelectedLists
         andLinkManNC63VO:(CWALinkManNC63VO *)aLinkManNC63VO;
{
  if(!aLinkManNC63VO)
  {
    CWAPickerNC63TextFieldCell *cell = nil;
    if(iAssginSelelctedType == EWASSINGCELL)
    {
      if(!iPickerNC63TextFieldCell)
      {
        [self initAssignCell];
      }
      cell = iPickerNC63TextFieldCell;
    }
    else if(iAssginSelelctedType == EWABEFORESINGCELL)
    {
      if(!iBeforAssingePickerNC63TextFieldCell)
      {
        [self initBeforAssignCell];
      }
      cell = iBeforAssingePickerNC63TextFieldCell;
    }
    else if(!iAfterAssingePickerNC63TextFieldCell)
    {
      if(!iAfterAssingePickerNC63TextFieldCell)
      {
        [self initAfterAssignCell];
      }
      cell = iAfterAssingePickerNC63TextFieldCell;
    }
    
    [cell deleteAllPickerCell];
    [iActivities removeAllObjects];
  
    BOOL isNeedSeletMan = NO;
    for (int i = 0 ;i < [aSelectedLists count]; i ++)
    {
      CWALinkManNC63VO *linkManNC63VO = (CWALinkManNC63VO *)[aSelectedLists objectAtIndex:i];
      if([linkManNC63VO.iRemark isEqualToString:@"Y"] && !isNeedSeletMan)
      {
        isNeedSeletMan = YES;
      }
      if(!iActivities)
      {
        iActivities = [[NSMutableArray alloc] initWithCapacity:1];
      }
      [iActivities addObject:linkManNC63VO ];
    }
	
    if(isNeedSeletMan)
    {
      [iTaskActionNC63ViewController.iTableView setEditing:YES animated:YES];
      iTaskActionNC63ViewController.iTableView.allowsSelectionDuringEditing = YES;
    }
  }
  else
  {
    if(!aLinkManNC63VO.iLinkMans)
    {
      aLinkManNC63VO.iLinkMans = [[NSMutableArray alloc] initWithCapacity:1];
    }
    [aLinkManNC63VO.iLinkMans removeAllObjects];
    [aLinkManNC63VO.iLinkMans addObjectsFromArray:aSelectedLists];
  }
  [iTaskActionNC63ViewController.iTableView reloadData];
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView
					editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return UITableViewCellEditingStyleDelete;
}

-(BOOL)tableView:(UITableView *)tableView
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
  if([iActivities count] <= 0)
  {
    return NO;
  }
	NSString *assingcell = [self getstrCellWithCellType:EWASSINGCELL];
	int section = [iCellTypes indexOfObject:assingcell];
	if(indexPath.section == section )
	{
		return YES;
	}
	else
	{
		return NO;
	}
}

#pragma mark 实现MEAMemoControllerDelegate委托
- (void)saveMemo:(NSString *)aMemo
{
  self.iTaskActionViewVO.iNextMemno = aMemo;
}

#pragma mark 实现UITableViewDataSource委托
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
  if([iCellTypes count] > 0)
  {
		NSString *assing = [self getstrCellWithCellType:EWASSINGCELL];
		int tSection = [iCellTypes indexOfObject:assing];
        NSString *beforeassing = [self getstrCellWithCellType:EWABEFORESINGCELL];
        int beforeSection = [iCellTypes indexOfObject:beforeassing];
        NSString *afterassing = [self getstrCellWithCellType:EWAAFTERSINGCELL];
        int afterSection = [iCellTypes indexOfObject:afterassing];
		if(tSection == section && [iActivities count] >0)
		{
			return [iActivities count];
        }else if(beforeSection == section)
        {
            return 2;
        }else if(afterSection == section)
        {
            return 2;
        }
		else
		{
    	return 1;
		}
  }
  else
  {
    return 0;
  }
}

- (void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
  if([iActivities count] >= indexPath.row)
  {
    [iActivities removeObjectAtIndex:indexPath.row];
  }
  [iTaskActionNC63ViewController.iTableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *cellType = [iCellTypes objectAtIndex:indexPath.section];
  switch ([cellType intValue])
  {
    case EWAMEMOCELL:
    {
      CWAMemoViewController *memoViewController = [[CWAMemoViewController alloc]
                                                   initWithNibName:@"WAMemoViewController"
                                                   Withbundle:nil
                                                   WithMemo:iTaskActionViewVO.iMemo
                                                   WithNextMemo:self.iTaskActionViewVO.iNextMemno
                                                   WithDelegate:self];
      if([iTaskActionViewVO.iIshasmemo isEqualToString:@"1"])
      {
        memoViewController.isCanEdit = NO;
      }
      else
      {
         memoViewController.isCanEdit = YES;
      }
     UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
     [navController pushViewController:memoViewController animated:YES];

    }
      break;
    case EWASENTCELL:
    {
      CWASentViewVO *sentViewVO = [[CWASentViewVO alloc] init];
      sentViewVO.iServiceCode = iTaskActionViewVO.iServiceCode;
      sentViewVO.iTaskID = iTaskActionViewVO.iTaskid;
      sentViewVO.iSenters = iTaskActionViewVO.iSenters;
      CWASentViewController *sentViewController = [[CWASentViewController alloc]
                                                   initWithNibName:@"WASentViewController"
                                                   WithBundle:nil
                                                   WithSentViewVO:sentViewVO
                                                   WithDelegate:self];

      UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
      [navController pushViewController:sentViewController animated:YES];

    }
    break;
    case EWAATTACHCELL:
    {
      NSString *title = NSLocalizedStringFromTable(@"uploadAttachment", @"btarget_task", nil);
      CWACTAttachmentListViewControll *attachmentListViewControll =
      [[CWACTAttachmentListViewControll alloc] init:iAttachList
                                             isEdit:YES
                                       withDelegate:self
                                    withServiceCode:iTaskActionViewVO.iServiceCode
                                          withTitle:title];
      attachmentListViewControll.iController.iDelegate = self;
      UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).  navigationCtl;
      [navController pushViewController:attachmentListViewControll animated:YES];

    }
      break;
    default:
      break;
  }
  
}

#pragma 完成MWACTAttachmentListDelegate委托
-(void)writeBackAttachList:(NSMutableArray *)aAry
{
  self.iAttachList = aAry;
  NSString *attachStr = [self getstrCellWithCellType:EWAATTACHCELL];
  int tSection = [iCellTypes indexOfObject:attachStr];
  NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:tSection];
  
  NSArray *refreshCells = [[NSArray alloc] initWithObjects:indexPath, nil];
  [iTaskActionNC63ViewController.iTableView reloadRowsAtIndexPaths:refreshCells
                                                  withRowAnimation:UITableViewRowAnimationNone];

}

- (void)savedPnsList:(NSArray *)aPnsList
{
  self.iTaskActionViewVO.iSenters = aPnsList;
  [iTaskActionNC63ViewController.iTableView reloadData];
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    NSString *strCellType = [iCellTypes objectAtIndex:indexPath.section];
    int cellType = [strCellType integerValue];
    UITableViewCell *cell = [self buildCellWithCellType:cellType
                         withTableView:tableView
                        withIndextPath:indexPath];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section
{
  NSString *cellType = [iCellTypes objectAtIndex:section];
  return [self buildHeaderWithCellType:[cellType intValue]];
}

- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
  NSString *cellType = [iCellTypes objectAtIndex:section];
  int type = [cellType intValue];
  return [self getHeightViewOfCellType:type];
}

- (CGFloat)getHeightViewOfCellType:(TWACellType)aCellType
{
  CGFloat height;
  
  switch (aCellType)
  {
    case EWAAUDITCELL:
    {
      height = 36.0f;
    }
    break;
    case EWAREJECT:
    {
      height = 26.0f;
    }
    break;
    case EWAREASSIGN:
    {
      height = 26.0f;
    }
    break;
    case EWASSINGCELL:
    {
      height = 26.0f;
    }
    break;
    
    case EWAATTACHCELL:
    {
      height = 0.0f;
    }
    break;
    
    case EWASENTCELL:
    {
      height = 0.0f;
    }
    break;
    
    case EWABEFORESINGCELL:
    {
      if([self isAddAprover])
      {
        height = 26.0f;
      }
      else
      {
        height = 26.0f;
      }
    
    
    }
    break;
    
    case EWAAFTERSINGCELL:
    {
      height = 26.0f;
    }
    break;
    
    case EWAMEMOCELL:
    {
      height = 0.0f;
    }
    break;
    
    default:
    break;
  }
  return height;
}

- (CGFloat)tableView:(UITableView *)tableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *cellType = [iCellTypes objectAtIndex:indexPath.section];
  int type = [cellType intValue];
  return [self getHeightOfCellType:type withIndexPath:indexPath];
}

#pragma mark 计算表头宽度
- (CGFloat)getHeightOfCellType:(TWACellType)aCellType
                 withIndexPath:(NSIndexPath *)indexPath
{
  CGFloat height = 0.0;

  switch (aCellType)
  {
    case EWAAUDITCELL:
    {
      height = 74.0f;
    }
    break;
    
    case EWASSINGCELL:
    {
      if(!iPickerNC63TextFieldCell)
      {
        height = 45.0f;
      }
      else
      {
        if([iActivities count] <= 0)
        {
          //height = [iPickerNC63TextFieldCell calFrameOfCell].size.height;
          height = 45.0f;
        }
        else
        {
          height = [self getHeightOfPickerNC63TextFieldCell:indexPath.row];
          //height = [iPickerNC63TextFieldCell calFrameOfCell].size.height;
          //height = 45.0f;
        }
      }
    }
    break;
    
    case EWAATTACHCELL:
    {
      height = 45.0f;
    }
    break;
    
    case EWASENTCELL:
    {
      height = 45.0f;
    }
    break;
    
    case EWABEFORESINGCELL:
    {
      if(!iBeforAssingePickerNC63TextFieldCell)
      {
          if (indexPath.row == 0) {
              height = 45.0f;
          }else{
              height = 45.0f;
          }
      }
      else
      {
          if (indexPath.row == 0) {
              height = [iBeforAssingePickerNC63TextFieldCell calFrameOfCell].size.height;
          }else{
              height = 45.0f;
          }
        //height = [iBeforAssingePickerNC63TextFieldCell calFrameOfCell].size.height;
      }

    }
    break;
    case EWAREJECT:
    {
      if(!iBeforAssingePickerNC63TextFieldCell)
      {
        height = 45.0f;
      }
      else
      {
        height = [iBeforAssingePickerNC63TextFieldCell calFrameOfCell].size.height;
      }
    
    }
    break;
    case EWAREASSIGN:
    {
    if(!iReassignPickernc63textfieldcell)
    {
      height = 45.0f;
    }
    else
    {
      height = [iReassignPickernc63textfieldcell calFrameOfCell].size.height;
    }
    
    }
    break;
    case EWAAFTERSINGCELL:
    {
      if(!iAfterAssingePickerNC63TextFieldCell)
      {
          if (indexPath.row == 0) {
              height = 45.0f;
          }else{
              height = 45.0f;
          }
      }
      else
      {
          if (indexPath.row == 0) {
              height = [iAfterAssingePickerNC63TextFieldCell calFrameOfCell].size.height;
          }else{
              height = 45.0f;
          }
        //height = [iAfterAssingePickerNC63TextFieldCell calFrameOfCell].size.height;
      }
    }
    break;
    
    case EWAMEMOCELL:
    {
      height = 45.0f;
    }
    break;
    
    default:
    break;
  }
  return height;
}

#pragma mark 导航取消按钮点击事件
- (IBAction)cancleBtnclick:(id)sender
{
  NSString *adopOperator = NSLocalizedStringFromTable(@"adopOperator", @"btarget_task", nil);
  NSString *cancel = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
  
  UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
                                                      message:adopOperator
                                                     delegate:self
                                            cancelButtonTitle:cancel                                            otherButtonTitles:ok,nil];
  alertView.tag = WA_CANCEL_ALERTVIEW_TAG;
  [alertView show];


}




#pragma mark 构建tableView头
- (UIView *)buildHeaderWithCellType:(TWACellType)aCellType
{
  UIView *view = nil;
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  switch (aCellType)
  {
    case EWAAUDITCELL:
    {
    
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, 0.00f, 60.0f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth -37.00f , 0.0f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
      //[addImage drawInRect:CGRectMake(0, 0, 10, 10)];
      NSString *title = NSLocalizedStringFromTable(@"approvenote", @"btarget_task", nil);
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                                 WithLableFrame:LabelFrame
                                                                                   WithBtnFrame:btnFrame
                                                                                   WithBtnImage:addImage
                                                                                      WithTitle:title];
      //不可选时，不提供按钮
      if([iTaskActionViewVO.iIshasnote isEqualToString:WA_TASK_ACTION_NOSELECTABLEANDMUSTNOTE]
         ||[iTaskActionViewVO.iIshasnote isEqualToString:WA_TASK_ACTION_NOSELECTABLEANDNOMUSTNOTE]
         )
      {
        [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn setHidden:YES];
      }
      else
      {
        CGRect penBtnFrame = CGRectMake(maxWidth -60.00f , 8.00f, 20.0f, 20.0f);
        UIButton *bututton = [[UIButton alloc] initWithFrame:penBtnFrame];
        UIImage *penImage = [UIImage imageNamed:WA_TASKCENTER_BLUEPEN];
        [bututton setBackgroundImage:penImage forState:UIControlStateNormal];
        [titleAndAddBtnView addSubview:bututton];
        [bututton addTarget:self
                   action:@selector(showHandWriteViewController:)
         forControlEvents:UIControlEventTouchUpInside];
        [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                                                 action:@selector(ShowAllNote:)
                                                       forControlEvents:UIControlEventTouchUpInside];
      }
      view = [[UIView alloc] initWithFrame:frame];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    case EWAREJECT:
    {
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, -10.00f, 60.0f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth -37.00f , -10.00f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
      NSString *title = NSLocalizedStringFromTable(@"RejectedTo", @"btarget_task", nil);
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                                 WithLableFrame:LabelFrame
                                                                                   WithBtnFrame:btnFrame
                                                                                   WithBtnImage:addImage
                                                                                      WithTitle:title];
      [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                                               action:@selector(showRejectActivity:)
                                                     forControlEvents:UIControlEventTouchUpInside];
      view = [[UIView alloc] initWithFrame:frame];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    case EWAREASSIGN:
    {
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, -10.00f, 60.0f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth -37.00f, -10.00f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
      NSString *title = iTaskActionNC63ViewController.iTitle;
    
      NSString *to = NSLocalizedStringFromTable(@"to", @"btarget_task", nil);
      NSString *space = NSLocalizedStringFromTable(@"space", @"btarget_task", nil);
      NSString *titleOfheader = [NSString stringWithFormat:@"%@%@%@",title,space,to];
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                                 WithLableFrame:LabelFrame
                                                                                   WithBtnFrame:btnFrame
                                                                                   WithBtnImage:addImage
                                                                                      WithTitle:titleOfheader];
      [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                                             action:@selector(ShowReAssign:)
                                                   forControlEvents:UIControlEventTouchUpInside];
      view = [[UIView alloc] initWithFrame:frame];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    case EWASSINGCELL:
    {
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, -10.00f, 60.00f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth - 37.00f, -10.00f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
      NSString *title = NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                                 WithLableFrame:LabelFrame
                                                                                   WithBtnFrame:btnFrame
                                                                                   WithBtnImage:addImage
                                                                                      WithTitle:title];
      [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                               action:@selector(ShowAssign:)
                                     forControlEvents:UIControlEventTouchUpInside];
      view = [[UIView alloc] initWithFrame:frame];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    
    case EWAATTACHCELL:
    {
      
    }
    break;
    
    case EWASENTCELL:
    {
     
    }
    break;
    
    case EWABEFORESINGCELL:
    {
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, -10.00f, 60.0f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth -37.00f, -10.0f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
    
    
    NSString *title = nil;
    if(![self isAddAprover])
    {
      title = NSLocalizedStringFromTable(@"beforassign", @"btarget_task", nil);
    }
    else
    {
       title = iTaskActionNC63ViewController.iTitle;
    }
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                                 WithLableFrame:LabelFrame
                                                                                   WithBtnFrame:btnFrame
                                                                                   WithBtnImage:addImage
                                                                                      WithTitle:title];
    [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                                             action:@selector(showBeforeAssing:)
                                                   forControlEvents:UIControlEventTouchUpInside];
    
    
      view = [[UIView alloc] initWithFrame:frame];
//      CWAGroupButtonIntervalView *groupButtonIntervalView = (CWAGroupButtonIntervalView *)[self getParallelAndSerialViewWithCellType:EWABEFORESINGCELL];
//    [[groupButtonIntervalView getButtonObjectOfIndex:0] addTarget:self
//                                                           action:@selector(beforSerialBtnClick:)
//                                                 forControlEvents:UIControlEventTouchUpInside];
//    
//    [[groupButtonIntervalView getButtonObjectOfIndex:1] addTarget:self
//                                                           action:@selector(beforParallelBtnClick:)
//                                                 forControlEvents:UIControlEventTouchUpInside];
//      if([self isAddAprover])
//      {
//        groupButtonIntervalView.hidden = YES;
//      }
//      else
//      {
//        groupButtonIntervalView.hidden = NO;
//      }
      //[view addSubview:groupButtonIntervalView];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    
    case EWAAFTERSINGCELL:
    {
      CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth, 36.0f);
      CGRect LabelFrame = CGRectMake(10.00f, -10.00f, 60.0f, 36.0f);
      CGRect btnFrame = CGRectMake(maxWidth -37.00f, -10.0f, 40.0f, 40.0f);
    
      UIImage *addImage = [UIImage imageNamed:WA_TASKCENTER_ADDBTNIMAGENAME];
      NSString *title = NSLocalizedStringFromTable(@"afterassign", @"btarget_task", nil);
      CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                               WithLableFrame:LabelFrame
                                                                                 WithBtnFrame:btnFrame
                                                                                 WithBtnImage:addImage
                                                                                    WithTitle:title];
    
      [((CWATitleAndAddBtnView*)titleAndAddBtnView).iAddBtn addTarget:self
                                                               action:@selector(showAfterAssing:)
                                                   forControlEvents:UIControlEventTouchUpInside];
    
//    CWAGroupButtonIntervalView *groupButtonIntervalView = (CWAGroupButtonIntervalView *)[self getParallelAndSerialViewWithCellType:EWAAFTERSINGCELL];
//    [[groupButtonIntervalView getButtonObjectOfIndex:0] addTarget:self
//                                                           action:@selector(afterSerialBtnClick:)
//                                                 forControlEvents:UIControlEventTouchUpInside];
//    
//    [[groupButtonIntervalView getButtonObjectOfIndex:1] addTarget:self
//                                                           action:@selector(afterParallelBtnClick:)
//                                                 forControlEvents:UIControlEventTouchUpInside];

      view = [[UIView alloc] initWithFrame:frame];
      //[view addSubview:groupButtonIntervalView];
      [view addSubview:titleAndAddBtnView];
    }
    break;
    
    case EWAMEMOCELL:
    {
      
    }
    break;
    
    default:
    break;
  }
  return view;
}

#pragma mark 是否是加签,非前加签
- (BOOL)isAddAprover
{
  return iTaskActionViewVO.iActFlag == 6 && [@"N" isEqualToString:iTaskActionViewVO.iIsbassign];
}

#pragma mark 驳回按钮点击事件
-(void)showRejectActivity:(id)sender
{
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getRejectNoleList";
  
  iAssginSelelctedType = EWAREJECT;
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                      initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
  
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"RejectedTo", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = YES;
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}
#pragma mark 前加签并行按钮点击事件
- (void)beforParallelBtnClick:(id)sender
{
    iTaskActionViewVO.iBsignaltype = WA_TASK_ACTION_PARALLELASSIGNTYPE;
	iBeforAssingePickerNC63TextFieldCell.iCanChangeOrder = NO;
}

#pragma mark 前加签串行按钮点击事件
- (void)beforSerialBtnClick:(id)sender
{
  iTaskActionViewVO.iBsignaltype = WA_TASK_ACTION_SERIALASSIGNTYPE;
  iBeforAssingePickerNC63TextFieldCell.iCanChangeOrder = YES;
}

#pragma mark 后加签并行按钮点击事件
- (void)afterParallelBtnClick:(id)sender
{
  iTaskActionViewVO.iAsignaltype = WA_TASK_ACTION_PARALLELASSIGNTYPE;
  iAfterAssingePickerNC63TextFieldCell.iCanChangeOrder = NO;
}

#pragma mark 后加签串行按钮点击事件
- (void)afterSerialBtnClick:(id)sender
{
  iTaskActionViewVO.iAsignaltype = WA_TASK_ACTION_SERIALASSIGNTYPE;
  iAfterAssingePickerNC63TextFieldCell.iCanChangeOrder = YES;
}

#pragma mark 构建并行、串行视图
- (UIView *)getParallelAndSerialViewWithCellType:(TWACellType)aCellType
{
  CWAButtonImagesArray *buttonImagesArray = [[CWAButtonImagesArray alloc] init];
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  UIImage * leftNormalImage = [UIImage imageNamed:WA_LEFT_TASKCENTER_BTNNORMALBD];
  UIImage * leftNouchImage = [UIImage imageNamed:WA_LEFT_TASKCENTER_BTNTOUCHBD];
  UIImage * rightNormalImage = [UIImage imageNamed:WA_RIGHT_TASKCENTER_BTNNORMALBD];
  UIImage * rightTouchImage = [UIImage imageNamed:WA_RIGHT_TASKCENTER_BTNTOUCHBD];
  NSString *serial = NSLocalizedStringFromTable(@"serial", @"btarget_task", nil);
  NSString *parallel = NSLocalizedStringFromTable(@"parallel", @"btarget_task", nil);
  CWAButton *serialBtn = [[CWAButton alloc] initWithNormalImage:leftNormalImage
                                             withHighlightImage:leftNouchImage
                                                       withText:serial
                                                 withStatusCode:nil
                                                withServiceCode:nil
                                                     withStatus:nil];
  

  [buttonImagesArray addButtonImage:serialBtn];

  

  CWAButton *parallelbtn = [[CWAButton alloc] initWithNormalImage:rightNormalImage
                                      withHighlightImage:rightTouchImage
                                                   withText:parallel
                                             withStatusCode:nil
                                            withServiceCode:nil
                                                 withStatus:nil];
  [buttonImagesArray addButtonImage:parallelbtn];

   
  CWAGroupButtonIntervalView *groupButtonView = [[CWAGroupButtonIntervalView alloc] initWithButtonImages:buttonImagesArray WithEdgeDistance:[[UIScreen mainScreen] applicationFrame].size.width -160.00f  WithInterval:0.0f];
    
    groupButtonView.frame = CGRectMake(0.00f, 7.00f, maxWidth, 31.0f);
    
//    NSArray *segmentedArray = [[NSArray alloc]initWithObjects:@"串行",@"并行",nil];
//    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
//    segmentedControl.tintColor = [UIColor redColor];
//    segmentedControl.frame = CGRectMake(maxWidth -120.00f, 0.00f, 90.00f, 30.0f);
//    segmentedControl.selectedSegmentIndex = 1;//设置默认选择项索引
//    segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
//    [groupButtonView addSubview:segmentedControl];

  
  
	if(aCellType == EWABEFORESINGCELL)
	{
		if([iTaskActionViewVO.iBsignaltype isEqualToString:WA_TASK_ACTION_SERIALASSIGNTYPE])
		{
			[groupButtonView setHighlightButtonWithIndex:0];
		}
		else
		{
  		[groupButtonView setHighlightButtonWithIndex:1];
  		iTaskActionViewVO.iBsignaltype = WA_TASK_ACTION_PARALLELASSIGNTYPE;
		}
	}
	else if(aCellType == EWAAFTERSINGCELL)
	{
		if([iTaskActionViewVO.iAsignaltype isEqualToString:WA_TASK_ACTION_SERIALASSIGNTYPE])
		{
			[groupButtonView setHighlightButtonWithIndex:0];
		}
		else
		{
			[groupButtonView setHighlightButtonWithIndex:1];
			iTaskActionViewVO.iAsignaltype = WA_TASK_ACTION_PARALLELASSIGNTYPE;
		}
	}

  return groupButtonView;
}

#pragma mark 显示可选意见视图
- (void)ShowAllNote:(id)sender
{
  CWANormallyNoteListViewController *normallyNoteListViewController =
	[[CWANormallyNoteListViewController alloc] initWithNibName:@"WANormallyNoteListViewController"
																											bundle:nil
																	 withDefaultValueRequsetVO:self.iTaskActionViewVO
																								withDelegate:self];
	
	UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:normallyNoteListViewController animated:YES];
}

#pragma mark 显示手写意见视图
- (void)showHandWriteViewController:(id)sender
{
  if(!iDrawingBoardViewController)
  {
    iDrawingBoardViewController = [[CWAHandWriteViewController alloc]
                                                            initWithNibName:@"WAHandWriteViewController"
                                                            Withbundle:nil WithDrawingBoardDelegate:self
                                                            WithInmage:nil];
 
  }
  if(!self.iArrayStrokes)
  {
    [iDrawingBoardViewController.iDrawingBoardView clearCanvas];
  }
  else
  {
//    [iDrawingBoardViewController.iDrawingBoardView clearCanvas];
    iDrawingBoardViewController.iDrawingBoardView.arrayStrokes = self.iArrayStrokes;
    [iDrawingBoardViewController.iDrawingBoardView drawArrayStrokes];
  }
   UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:iDrawingBoardViewController animated:YES];
  
}

#pragma mark 实现DrawingBoardDelegate 委托
-(void)saveCurrentScreenImage:(UIImage *)image
{
  self.iArrayStrokes =[[NSMutableArray alloc] initWithArray:iDrawingBoardViewController.iDrawingBoardView.arrayStrokes];
  
//  self.iArrayStrokes = iDrawingBoardViewController.iDrawingBoardView.arrayStrokes;
  iTaskActionViewVO.iHandWriteImage = image;
}
-(void)cancelViewController
{
  
}


- (void)showBeforeAssing:(id)sender
{
  //设置actiontype
  iAssginSelelctedType = EWABEFORESINGCELL;
  NSString *actionTye = nil;
  actionTye = @"getUserlist";
  
  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                      initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
  
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *title = nil;
  if(![self isAddAprover])
  {
    title = NSLocalizedStringFromTable(@"beforassign", @"btarget_task", nil);
  }
  else
  {
    title = iTaskActionNC63ViewController.iTitle;
  }
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  aLinkManViewController.isMUtilSelect = YES;
  aLinkManViewController.iNavigationTitle = title;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}

- (void)showAfterAssing:(id)sender
{
  iAssginSelelctedType = EWAAFTERSINGCELL;
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getUserlist";
  
  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                      initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
  
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"afterassign", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  aLinkManViewController.isMUtilSelect = YES;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}

#pragma mark 调用其他界面

- (void)ShowReAssign:(id)sender
{
  //指派给人
  iAssginSelelctedType = EWAREASSIGN;
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getUserlist";
  
  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                      initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
  
  
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = nil;
  if(iTaskActionViewVO.iActFlag == 5 )
  {
    NSString *title = iTaskActionNC63ViewController.iTitle;
    NSString *to = NSLocalizedStringFromTable(@"to", @"btarget_task", nil);
    NSString *space = NSLocalizedStringFromTable(@"space", @"btarget_task", nil);
    nextNavigationTitle = [NSString stringWithFormat:@"%@%@%@",title,space,to];
  }
  else
  {
    nextNavigationTitle = NSLocalizedStringFromTable(@"reassignto", @"btarget_task", nil);
  }
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}

- (void)ShowAssign:(id)sender
{
  //指派给人
  iAssginSelelctedType = EWASSINGCELL;
  if([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_USEROFASSIGNTYPE])
  {
    [self goInLinkManView];
  }
  //指派活动
  else if([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_ACTIVITYOFASSIGNTYPE])
  {
    [self goInLinkActivityView];
  }
}


- (void)showPsnListOfActivity:(id)sender
{
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getUsersOfActivity";
  UIButton *btn = (UIButton *)sender;
  
  int tag = btn.tag;
  
  CWALinkManNC63VO *linkman = [iActivities objectAtIndex:tag];
  
  //初始化人员列表界面
  CWALinkManNC63ViewController *aLinkManViewController = nil;
  
  //是否单选
  if([linkman.iIsradio isEqualToString:@"Y"])
    {
    aLinkManViewController = [[CWALinkManNC63ViewController alloc]
                              initWithNibName:@"WALinkManNC63ViewController"
                              bundle:nil
                              isSingle:YES
                              withActionCode:iTaskActionViewVO.iActioncode ];
    }
  else
    {
    aLinkManViewController = [[CWALinkManNC63ViewController alloc]
                              initWithNibName:@"WALinkManNC63ViewController"
                              bundle:nil
                              isSingle:NO
                              withActionCode:iTaskActionViewVO.iActioncode ];
    }
  aLinkManViewController.iLinkManNC63VO = linkman;
  aLinkManViewController.iIsHiddenSearchBar = YES;
  aLinkManViewController.iNc63Delegate = self;
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}

- (void)goInLinkActivityView
{
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getActivityList";
  
  
  //初始化人员列表界面
  CWALinkManNC63ViewController *aLinkManViewController = nil;
  if([iTaskActionViewVO.iIsassignsigle isEqualToString:@"Y"])
  {
    aLinkManViewController = [[CWALinkManNC63ViewController alloc]
																													initWithNibName:@"WALinkManNC63ViewController"
																													bundle:nil
																													isSingle:YES
																													withActionCode:iTaskActionViewVO.iActioncode ];
  }
  else
  {
    aLinkManViewController = [[CWALinkManNC63ViewController alloc]
                              initWithNibName:@"WALinkManNC63ViewController"
                              bundle:nil
                              isSingle:NO
                              withActionCode:iTaskActionViewVO.iActioncode ];
  }
  aLinkManViewController.iIsHiddenSearchBar = YES;
  aLinkManViewController.iNc63Delegate = self;
  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;

  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
   UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}


- (void)goInLinkManView
{
  //设置actiontype
  NSString *actionTye = nil;
  actionTye = @"getAssignPsnlist";

  
  //初始化人员列表界面
  CWALinkManViewController *aLinkManViewController = [[CWALinkManViewController alloc]
                                                      initWithNibName:@"WALinkManViewController"
                                                      bundle:nil];
  

  //设置人员列表界面和设置searbar的隐藏情况
  NSString *nextNavigationTitle = NSLocalizedStringFromTable(@"AssignedTo", @"btarget_task", nil);
  aLinkManViewController.iIsHiddenSearchBar = NO;
  
  
  aLinkManViewController.iNavigationTitle = nextNavigationTitle;
  aLinkManViewController.iDelegate = self;
  aLinkManViewController.iServiceCode = iTaskActionViewVO.iServiceCode;
  
  //进入人员列表
  [aLinkManViewController setRequestLinkManActionType:actionTye andTaskID:iTaskActionViewVO.iTaskid];
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  [navController pushViewController:aLinkManViewController animated:YES];
}


- (void)submitBtnClick:(id)sender
{
  NSString *text  = NSLocalizedStringFromTable(@"Wait", @"btarget_task", nil);
  [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:text];
  
  CWADoActionRequstsVO *aDoActionRequstsVO = [[CWADoActionRequstsVO alloc] init];
  
  CWADoActionRequstVO *aDoActionRequstVO = [[CWADoActionRequstVO alloc] init];
  aDoActionRequstVO.iActioncode = iTaskActionViewVO.iActioncode;
  aDoActionRequstVO.iStatuskey = iTaskActionViewVO.iStatuskey;
  aDoActionRequstVO.iStatuscode = iTaskActionViewVO.iStatuscode;
  aDoActionRequstVO.iTaskid = iTaskActionViewVO.iTaskid;

  if([iActivities count] > 0)
  {
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
  
    BOOL isNeedUser = NO;
    for(int i = 0; i < [iActivities count]; i ++)
    {
      CWALinkManNC63VO *manVO = (CWALinkManNC63VO *)[iActivities objectAtIndex:i];

      CWAActivityVO *activityVO = [[CWAActivityVO alloc] init];
      activityVO.iActivityid = manVO.iId;
      if([manVO.iRemark isEqualToString:@"Y"] && [manVO.iLinkMans count] <= 0)
      {
        isNeedUser = YES;
        break;
      }
      for(int j = 0 ; j <[manVO.iLinkMans count] ; j++ )
      {
        CWALinkManNC63VO *linkman =  (CWALinkManNC63VO *)[manVO.iLinkMans objectAtIndex:j];
        if(!activityVO.iUsrids)
        {
          activityVO.iUsrids = [[NSMutableArray alloc] initWithCapacity:1];
        }
        [activityVO.iUsrids addObject:linkman.iId];
      }
    if(isNeedUser)
     {
        [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
        NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
        NSString *selectAssign = NSLocalizedStringFromTable(@"selectAssign", @"btarget_task", nil);
        UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                       message:selectAssign
                                                      delegate:nil
                                             cancelButtonTitle:ok
                                             otherButtonTitles:nil];
        [alert show];
        return;
     }
      [activityVO fillVoDictionary];
      [marray addObject:activityVO.voDictionary];

    }
    aDoActionRequstVO.iActivityids = marray;

    
  }
  else if(iPickerNC63TextFieldCell)
  {
    NSArray * array = [iPickerNC63TextFieldCell getAllSelectedRepresentedObject];
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [array count]; i ++)
    {
       CWALinkManVO *manVO = (CWALinkManVO *)[array objectAtIndex:i];

      //如果指派给的是活动
      if([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_ACTIVITYOFASSIGNTYPE])
      {
        CWAActivityVO *activityVO = [[CWAActivityVO alloc] init];
        activityVO.iActivityid = manVO.iId;
        [activityVO fillVoDictionary];
        [marray addObject:activityVO];

      }
    
      //如果指派的是人
      else
      {
        [marray addObject:manVO.iId];
      }
    }
    if([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_ACTIVITYOFASSIGNTYPE])
    {
      aDoActionRequstVO.iActivityids = marray;
    }
    else
    {
      aDoActionRequstVO.iUserids = marray;
    }

  }
  

  //如果是转发
	if(iReassignPickernc63textfieldcell)
  {
    NSArray * array = [iReassignPickernc63textfieldcell getAllSelectedRepresentedObject];
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [array count]; i ++)
    {
      CWALinkManVO *manVO = (CWALinkManVO *)[array objectAtIndex:i];
      [marray addObject:manVO.iId];
    }
  
    aDoActionRequstVO.iUserids = marray;

  }
  //处理前加签
   if(iBeforAssingePickerNC63TextFieldCell)
  {
    NSArray * array = [iBeforAssingePickerNC63TextFieldCell getAllSelectedRepresentedObject];
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [array count]; i ++)
    {
      CWALinkManVO *manVO = (CWALinkManVO *)[array objectAtIndex:i];
      [marray addObject:manVO.iId];
    }
    if(![self isAddAprover])
    {
      aDoActionRequstVO.iBsignalusers =  marray;
    }
    else if(!aDoActionRequstVO.iUserids || [aDoActionRequstVO.iUserids count] == 0)
    {
      aDoActionRequstVO.iUserids = marray;
    }

  }
  
  //处理驳回活动
  if (iRejectPickerNC63TextFieldCell)
  {
    NSArray * array = [iRejectPickerNC63TextFieldCell getAllSelectedRepresentedObject];
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [array count]; i ++)
    {
      CWALinkManVO *manVO = (CWALinkManVO *)[array objectAtIndex:i];
      [marray addObject:manVO.iId];
    }
    aDoActionRequstVO.iRejectmarks = marray;
  }
    
  //处理后加签
  if(iAfterAssingePickerNC63TextFieldCell)
  {
    NSArray * array = [iAfterAssingePickerNC63TextFieldCell getAllSelectedRepresentedObject];
    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [array count]; i ++)
    {
      CWALinkManVO *manVO = (CWALinkManVO *)[array objectAtIndex:i];
      [marray addObject:manVO.iId];
    }
    aDoActionRequstVO.iAsignalusers =  marray;
  }

  
  aDoActionRequstVO.iBsignaltype = iTaskActionViewVO.iBsignaltype;
  aDoActionRequstVO.iAsignaltype = iTaskActionViewVO.iAsignaltype;
  
  UIImage *image = iTaskActionViewVO.iHandWriteImage;
  
  if(image)
  {
    NSData *dataObj = UIImageJPEGRepresentation(image, 1.0);
    aDoActionRequstVO.iPostil = [GTMBase64 stringByEncodingData:dataObj];
  }
  
  if(iNoteTextField)
  {
    aDoActionRequstVO.iNote = iNoteTextField.text;
  }
  
  //处理抄送
	NSArray *senters = iTaskActionViewVO.iSenters;
  if(senters)
  {

    NSMutableArray *marray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0; i < [senters count]; i ++)
    {
      CWALinkManVO *manVO = (CWALinkManVO *)[senters objectAtIndex:i];
      [marray addObject:manVO.iId];
    }

    aDoActionRequstVO.iCcusers = marray;
  }
	
  //审批意见非空校验
	if((!aDoActionRequstVO.iNote || [aDoActionRequstVO.iNote isEqualToString:@""])
		 &&(!aDoActionRequstVO.iPostil || [aDoActionRequstVO.iPostil isEqualToString:@""])
		 && ([iTaskActionViewVO.iIshasnote isEqualToString: WA_TASK_ACTION_SELECTABLEANDMUSTNOTE]
		 || [iTaskActionViewVO.iIshasnote isEqualToString: WA_TASK_ACTION_NOSELECTABLEANDMUSTNOTE]))
		{
      [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
			NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
			NSString *noteisnotnull = NSLocalizedStringFromTable(@"noteisnotnull", @"btarget_task", nil);
			UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil 
                                                  	 message:noteisnotnull
                                               	  	 delegate:nil 
																						 cancelButtonTitle:ok
                                         	otherButtonTitles:nil];
  	  [alert show];
      return;
		}
  
  //处理指派
  if([iTaskActionViewVO.iIsassign isEqualToString:@"Y"])
    {
      if(([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_ACTIVITYOFASSIGNTYPE]
        && (!aDoActionRequstVO.iActivityids || [aDoActionRequstVO.iActivityids count] == 0)) ||
       ([iTaskActionViewVO.iAssigntype isEqualToString:WA_TASK_ACTION_USEROFASSIGNTYPE]
        && (!aDoActionRequstVO.iUserids||[aDoActionRequstVO.iUserids count] == 0)))
      {
        [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
        NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
        NSString *selectAssign = NSLocalizedStringFromTable(@"selectAssign", @"btarget_task", nil);
        UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                       message:selectAssign
                                                      delegate:nil
                                             cancelButtonTitle:ok
                                             otherButtonTitles:nil];
        [alert show];

      
        return;
      }
    }
  
  //如果是转发，判断转发不能为空
  if(iTaskActionViewVO.iActFlag == 5 && (!aDoActionRequstVO.iUserids || [aDoActionRequstVO.iUserids count] == 0))
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
    NSString *select = NSLocalizedStringFromTable(@"select", @"btarget_task", nil);
    NSString *target = NSLocalizedStringFromTable(@"target", @"btarget_task", nil);
    NSString *space = NSLocalizedStringFromTable(@"space", @"btarget_task", nil);
    NSString *noteisnotnull = [NSString stringWithFormat:@"%@%@%@%@%@",select,space,iTaskActionNC63ViewController.iTitle,space,target];
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                   message:noteisnotnull
                                                  delegate:nil
                                         cancelButtonTitle:ok
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  
  //如果是驳回，判断驳回人不能为空
  if(iTaskActionViewVO.iActFlag == 4 && (!aDoActionRequstVO.iRejectmarks || [aDoActionRequstVO.iRejectmarks count] == 0))
    {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
    NSString *noteisnotnull = NSLocalizedStringFromTable(@"rejecterslistcantnull", @"btarget_task", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                   message:noteisnotnull
                                                  delegate:nil
                                         cancelButtonTitle:ok
                                         otherButtonTitles:nil];
    [alert show];

    return;
    }
  
  
  //是前加签,判断前加签为空
  if([iTaskActionViewVO.iIsbassign isEqualToString:@"Y"] && (!aDoActionRequstVO.iBsignalusers || [aDoActionRequstVO.iBsignalusers count] == 0))
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
    NSString *noteisnotnull = NSLocalizedStringFromTable(@"beforeassigerscantnull", @"btarget_task", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                   message:noteisnotnull
                                                  delegate:nil
                                         cancelButtonTitle:ok
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  
  //处理加签
  if([self isAddAprover] && (!aDoActionRequstVO.iUserids || [aDoActionRequstVO.iUserids count] == 0))
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    NSString *addproverisnull = NSLocalizedStringFromTable(@"addproverisnull",  @"btarget_task", nil);
    NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:nil
                                                   message:addproverisnull
                                                  delegate:nil
                                         cancelButtonTitle:ok
                                         otherButtonTitles:nil];
    [alert show];
    return;
  }
  [aDoActionRequstVO fillVoDictionary];
  NSArray *actiondes =  [[NSArray alloc] initWithObjects:aDoActionRequstVO.voDictionary, nil];
	
  aDoActionRequstsVO.iActiondes = actiondes;
  [aDoActionRequstsVO fillVoDictionary];
	CWAAttachMentsUpRequestsVO *attachMentsUpRequestsVO = nil;
  if(iAttachList && [iAttachList count] > 0)
  {
    attachMentsUpRequestsVO = [[CWAAttachMentsUpRequestsVO alloc] init];
    attachMentsUpRequestsVO.iAttachList = [[NSMutableArray alloc] initWithCapacity:1];
    for (int i = 0; i < [iAttachList count]; i++)
    {
      CWACTAttachVO *attachVO = [iAttachList objectAtIndex:i];
      CWAAttachMentUpRequestVO *attachMentUpRequestVO = [[CWAAttachMentUpRequestVO alloc] init];
      attachMentUpRequestVO.iName = [NSString stringWithFormat:@"%@.%@",attachVO.iFileName,attachVO.iFileType];
    
      attachMentUpRequestVO.iContent = attachVO.iFile;
    
      [attachMentUpRequestVO fillVoDictionary];
      [attachMentsUpRequestsVO.iAttachList addObject:attachMentUpRequestVO.voDictionary];
    }
    attachMentsUpRequestsVO.iActioncode = iTaskActionViewVO.iActioncode;
    attachMentsUpRequestsVO.iTaskID = iTaskActionViewVO.iTaskid;
    [attachMentsUpRequestsVO fillVoDictionary];
  }
  [iTaskActionNC63BnsHandler doActionWithDoActionRequstsVO:aDoActionRequstsVO
                                WithAttachMentUpRequestsVO:attachMentsUpRequestsVO
                                           WithServiceCode:iTaskActionViewVO.iServiceCode
                                           withReturnBlock:^(NSString *aSuccessStr, NSError *aError)
  {
  [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
   if(aError)
   {
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:[aError domain]
                                                     message:nil
                                                    delegate:nil
                                           cancelButtonTitle:ok
                                           otherButtonTitles:nil];
      [alert show];
    }
    else
    {
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task", nil);
      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:aSuccessStr
                                                     message:nil
                                                    delegate:self
                                           cancelButtonTitle:ok
                                           otherButtonTitles:nil];
    alert.tag = WA_DEAL_FINISH_ALERTVIEW_TAG;
      [alert show];
    }
  
 }];

}

- (void)alertView:(UIAlertView *)alertView
clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if(alertView.tag == WA_CANCEL_ALERTVIEW_TAG)
  {
    if(buttonIndex == 1)
    {
    UINavigationController *navController = iTaskActionNC63ViewController.navigationController;
    if(!navController)
    {
      navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
    }
    [navController popViewControllerAnimated:YES];
    }
  }
  else if(alertView.tag == WA_DEAL_FINISH_ALERTVIEW_TAG)
  {
    UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl;
  
    NSArray *array = [navController viewControllers];
    if([array count] > 2)
    {
      [navController popToViewController:[array objectAtIndex:[array count] - 3] animated:YES];
    }
    else
    {
      [navController popToRootViewControllerAnimated:NO];
    }
    [[NSNotificationCenter defaultCenter] postNotificationName:TASKCENTER_TASKLIST_REFRESH_NOFIFY object:nil];
  }
}



- (void)initAssignCell
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  if(!iPickerNC63TextFieldCell)
  {
    
    CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth, 45.00f);
    iPickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
    iPickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
    iPickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
  }
}

- (void)initBeforAssignCell
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  if(!iBeforAssingePickerNC63TextFieldCell)
  {
  
    CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth, 45.0f);
    iBeforAssingePickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
    iBeforAssingePickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
    iBeforAssingePickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
		iBeforAssingePickerNC63TextFieldCell.iCanChangeOrder = NO;
    NSString *selectAfterreassigers = @"请选择前加签人";
    [iBeforAssingePickerNC63TextFieldCell settPlaceHolder:selectAfterreassigers];
  }
}

- (void)initRejectCell
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  if(!iRejectPickerNC63TextFieldCell)
  {
    
    CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth, 45.0f);
    iRejectPickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
    iRejectPickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
    iRejectPickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
  }
}

- (void)initReAssignCell
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  if(!iReassignPickernc63textfieldcell)
    {
    CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth, 45.0f);
    iReassignPickernc63textfieldcell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
    iReassignPickernc63textfieldcell.selectionStyle = UITableViewCellSelectionStyleNone;
    iReassignPickernc63textfieldcell.iPickerNC63TextFieldCellDelegate = self;
    }
}

- (void)initAfterAssignCell
{

  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  if(!iAfterAssingePickerNC63TextFieldCell)
  {
    CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth, 45.0f);
    iAfterAssingePickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
    iAfterAssingePickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
    iAfterAssingePickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
		iAfterAssingePickerNC63TextFieldCell.iCanChangeOrder = NO;
    NSString *selectAfterreassigers = NSLocalizedStringFromTable(@"selectAfterreassigers", @"btarget_task", nil);
    [iAfterAssingePickerNC63TextFieldCell settPlaceHolder:selectAfterreassigers];
  }
}

- (CGFloat)getHeightOfPickerNC63TextFieldCell:(int)aRow
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  CWALinkManNC63VO *linkManVO = [iActivities objectAtIndex:aRow];
  CGRect rect = CGRectMake(00.00f, 2.00f, maxWidth - 120.0f, 41.0f);
  CWAPickerNC63TextFieldCell *aPickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect] ;
  [aPickerNC63TextFieldCell setBackgroundColor:[UIColor orangeColor]];
  aPickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
  aPickerNC63TextFieldCell.frame = rect;
  aPickerNC63TextFieldCell.layer.cornerRadius = 6;
	
  for(int i = 0 ; i < [linkManVO.iLinkMans count]; i++)
  {
    [aPickerNC63TextFieldCell addALinkManWith:[linkManVO.iLinkMans objectAtIndex:i]];
  }
  [aPickerNC63TextFieldCell reSetFrame];
  CGFloat height = aPickerNC63TextFieldCell.frame.size.height;
  return height;
}

#pragma  mark 构建指派cell
- (UITableViewCell *)BuildAssingCell:(int)row
{
    int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
	if([iActivities count] <= 0)
	{
		[self initAssignCell];
		[iPickerNC63TextFieldCell reSetFrame];
		return iPickerNC63TextFieldCell;
	}
	else
	{
    NSString *sRow =[NSString stringWithFormat:@"%d",row];

		UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:sRow];

		CWALinkManNC63VO *linkManVO = [iActivities objectAtIndex:row];
	
    CGRect frame = CGRectMake(0.00f, 0.00f, maxWidth - 50.00f, 44.0f);
    CGRect LabelFrame = CGRectMake(10.00f, 5.00f, 60.0f, 36.0f);
    CGRect btnFrame = CGRectMake(maxWidth - 75.0f, 9.0f, 32.0f, 32.0f);

	
    UIImage *addImage = [UIImage imageNamed:@"task_btn_add.png"];
    CWATitleAndAddBtnView *titleAndAddBtnView = [[CWATitleAndAddBtnView alloc] initWithFrame:frame
                                                                               WithLableFrame:LabelFrame
                                                                                 WithBtnFrame:btnFrame
                                                                                 WithBtnImage:addImage
                                                                                    WithTitle:linkManVO.iName];
  
    [titleAndAddBtnView.iAddBtn setTag:row];
    [titleAndAddBtnView.iAddBtn addTarget:self
                                       action:@selector(showPsnListOfActivity:)
                             forControlEvents:UIControlEventTouchUpInside];
    if([linkManVO.iLinkMans count] <= 0)
    {
      CGRect frameOfTextField = CGRectMake(82.0f, 10.0f, 170, 36.0f);
    
      if([linkManVO.iRemark isEqualToString:@"Y"])
      {
        UITextField *textfield = [[UITextField alloc] initWithFrame:frameOfTextField];
        textfield.textAlignment = NSTextAlignmentCenter;
        textfield.placeholder = NSLocalizedStringFromTable(@"selectAssign", @"btarget_task", nil);
        [textfield setEnabled:NO];
        [titleAndAddBtnView addSubview:textfield];
      }
      else
      {
        UILabel *tiltLabel = titleAndAddBtnView.iActionLabel;
        CGRect frame = tiltLabel.frame;
        CGFloat width = CGRectGetWidth(frame);
        width += 170;
        frame.size.width = width;
        tiltLabel.frame = frame;
        [titleAndAddBtnView.iAddBtn setHidden:YES];
      }
    }
    else
    {
        CGRect rect = CGRectMake(60.00f, 2.00f, maxWidth - 120, 36.0f);
        CWAPickerNC63TextFieldCell *aPickerNC63TextFieldCell = [[CWAPickerNC63TextFieldCell alloc] initWithFrame:rect];
        aPickerNC63TextFieldCell.selectionStyle = UITableViewCellSelectionStyleNone;
        aPickerNC63TextFieldCell.iPickerNC63TextFieldCellDelegate = self;
        aPickerNC63TextFieldCell.frame = rect;
        aPickerNC63TextFieldCell.layer.cornerRadius = 6;
        aPickerNC63TextFieldCell.tag = row;
        
        for(int i = 0 ; i < [linkManVO.iLinkMans count]; i++)
        {
            [aPickerNC63TextFieldCell addALinkManWith:[linkManVO.iLinkMans objectAtIndex:i]];
        }
        [aPickerNC63TextFieldCell reSetFrame];
        CGPoint center = titleAndAddBtnView.iActionLabel.center ;
        center.y = aPickerNC63TextFieldCell.center.y ;
        titleAndAddBtnView.iActionLabel.center  = center;
        CGPoint centerOfAddBtn = titleAndAddBtnView.iAddBtn.center ;
        centerOfAddBtn.y = aPickerNC63TextFieldCell.center.y ;
        //titleAndAddBtnView.iAddBtn.center = centerOfAddBtn;
        CGRect frame = titleAndAddBtnView.frame;
        frame.size.height = aPickerNC63TextFieldCell.frame.size.height;
        titleAndAddBtnView.frame = frame;
        [titleAndAddBtnView addSubview:aPickerNC63TextFieldCell];
    }
        [cell.contentView addSubview:titleAndAddBtnView];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
	}
}

#pragma  mark 构建celma01
- (UITableViewCell *)buildCellWithCellType:(TWACellType)aCellType
                             withTableView:(UITableView *)aTableView
														withIndextPath:(NSIndexPath *)aPath
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  UITableViewCell *cell = nil;
  switch (aCellType)
  {
    case EWAAUDITCELL:
    {
      cell = [aTableView dequeueReusableCellWithIdentifier:@"EWAAUDITCELL"];
      if(!cell)
      {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:@"EWAAUDITCELL"];
      
        CGRect rect = CGRectMake(0.00f, 0.00f, maxWidth - 20.00f , 72.0f);
        iNoteTextField = [[UITextView alloc] initWithFrame:rect];
        iNoteTextField.tag = 1;
        iNoteTextField.layer.cornerRadius = 6;
        iNoteTextField.layer.masksToBounds = YES;
        iNoteTextField.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:15];
        if(iTaskActionViewVO.iOpinion)
        {
          //iNoteTextField.text = iTaskActionViewVO.iOpinion;
            iNoteTextField.text = @"";
        }
        [cell.contentView addSubview:iNoteTextField];
        iNoteTextField.text = [NSString stringWithFormat:@"%@%@",iNoteTextField.text,NSLocalizedStringFromTable(@"comefrommb", @"btarget_task", nil) ];
        iNoteTextField.delegate = self;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
      }
    }
    break;
    
    case EWAREJECT:
    {
      [self initRejectCell];
      [iRejectPickerNC63TextFieldCell reSetFrame];
      cell = iRejectPickerNC63TextFieldCell;
    }
    break;
    case EWAREASSIGN:
    {
      [self initReAssignCell];
      [iReassignPickernc63textfieldcell reSetFrame];
      cell = iReassignPickernc63textfieldcell;
    }
    break;
    case EWASSINGCELL:
    {
			cell = [self BuildAssingCell:aPath.row];
    }
    break;
    
    case EWAATTACHCELL:
    {
      cell = [aTableView dequeueReusableCellWithIdentifier:@"EWAATTACHCELL"];
      if(!cell)
      {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:@"EWAATTACHCELL"];
       
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
      }
      NSString *attachment = NSLocalizedStringFromTable(@"attachment", @"btarget_task", nil);
      NSString *show = [NSString stringWithFormat:@"%@(%d)",attachment,[iAttachList count]];
      cell.textLabel.text = show;
    }
    break;
    
    case EWASENTCELL:
    {
      cell = [aTableView dequeueReusableCellWithIdentifier:@"EWASENTCELL"];
      if(!cell)
      {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:@"EWASENTCELL"];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
      }
      NSString *send = NSLocalizedStringFromTable(@"send", @"btarget_task", nil);
      int count = [self.iTaskActionViewVO.iSenters count];
      NSString *strSend = [NSString stringWithFormat:@"%@(%d)",send,count];
    
      cell.textLabel.text = strSend;

    }
    break;
    
    case EWABEFORESINGCELL:
    {
        int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
        if (aPath.row == 0) {
            [self initBeforAssignCell];
            [iBeforAssingePickerNC63TextFieldCell reSetFrame];
            cell = iBeforAssingePickerNC63TextFieldCell;

        }
        if (aPath.row == 1) {
            UITableViewCell *baseCell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0.0f, 0.0f, maxWidth, 45.0f)];
            CWAGroupButtonIntervalView *groupButtonIntervalView = (CWAGroupButtonIntervalView *)[self getParallelAndSerialViewWithCellType:EWABEFORESINGCELL];
            [[groupButtonIntervalView getButtonObjectOfIndex:0] addTarget:self
                                                                   action:@selector(beforSerialBtnClick:)
                                                         forControlEvents:UIControlEventTouchUpInside];
            
            [[groupButtonIntervalView getButtonObjectOfIndex:1] addTarget:self
                                                                   action:@selector(beforParallelBtnClick:)
                                                         forControlEvents:UIControlEventTouchUpInside];
            
            [groupButtonIntervalView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                            withColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1.0f]
                                           withStatus:UIControlStateHighlighted];
            [groupButtonIntervalView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                            withColor:[UIColor redColor]
                                           withStatus:UIControlStateNormal];
            if([self isAddAprover])
            {
                groupButtonIntervalView.hidden = YES;
            }
            else
            {
                groupButtonIntervalView.hidden = NO;
            }
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16.00f, 5.00f,maxWidth - 160.0f, 35.0f)];
            label.text = @"流程进行方式";
            [baseCell addSubview:label];
            [baseCell addSubview:groupButtonIntervalView];
            cell = baseCell;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
    }
    break;
    
    case EWAAFTERSINGCELL:
    {
    if (aPath.row == 0) {
      [self initAfterAssignCell];
      [iAfterAssingePickerNC63TextFieldCell reSetFrame];
      cell = iAfterAssingePickerNC63TextFieldCell;
    }
    if (aPath.row == 1) {
            UITableViewCell *baseCell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0.0f, 0.0f, maxWidth, 45.0f)];
            CWAGroupButtonIntervalView *groupButtonIntervalView = (CWAGroupButtonIntervalView *)[self getParallelAndSerialViewWithCellType:EWAAFTERSINGCELL];
            [[groupButtonIntervalView getButtonObjectOfIndex:0] addTarget:self
                                                                   action:@selector(afterSerialBtnClick:)
                                                         forControlEvents:UIControlEventTouchUpInside];
        
            [[groupButtonIntervalView getButtonObjectOfIndex:1] addTarget:self
                                                                   action:@selector(afterParallelBtnClick:)
                                                         forControlEvents:UIControlEventTouchUpInside];
            [groupButtonIntervalView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:1.0f]
                                   withStatus:UIControlStateHighlighted];
            [groupButtonIntervalView setTitleWithFont:WA_TASK_FONT_KAKU_W3_14
                                    withColor:[UIColor redColor]
                                   withStatus:UIControlStateNormal];
            if([self isAddAprover])
            {
                groupButtonIntervalView.hidden = YES;
            }
            else
            {
                groupButtonIntervalView.hidden = NO;
            }
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(16.00f, 5.00f, maxWidth - 160.0f, 35.0f)];
            label.text = @"流程进行方式";
            [baseCell addSubview:label];
            [baseCell addSubview:groupButtonIntervalView];
            cell = baseCell;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            //iTaskActionViewVO.iAsignaltype = WA_TASK_ACTION_SERIALASSIGNTYPE;
            //iAfterAssingePickerNC63TextFieldCell.iCanChangeOrder = YES;
        }
  
    }
    break;
    
    case EWAMEMOCELL:
    {
      cell = [aTableView dequeueReusableCellWithIdentifier:@"EWAMEMOCELL"];
      if(!cell)
      {

        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:@"EWAMEMOCELL"];
        NSString *memo = NSLocalizedStringFromTable(@"memo", @"btarget_task", nil);

        cell.textLabel.text = memo;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
      }

    }
    break;
    
    default:
    break;
  }
  return cell;
}

#pragma mark 审批意见长度控制
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
  
  BOOL result;
  NSMutableString *atext = [textView.text mutableCopy];

  NSString *comefrommb = NSLocalizedStringFromTable(@"comefrommb", @"btarget_task", nil);
  NSRange fromRange = [atext rangeOfString:comefrommb options:NSBackwardsSearch];
  if(range.location > fromRange.location)
  {
    result = NO;
  }
  else
  {
    [atext replaceCharactersInRange:range withString:text];
    int comefrommbLenght = [comefrommb length];
  
    if([atext length] - comefrommbLenght<= WA_AUDITTEXTFILE_MAXLENGTH)
    {
      result = YES;
    }
    else
    {
      result = NO;
    }
  }
  return result;
}

- (NSString *)getstrCellWithCellType:(TWACellType)aCellType
{
  return [NSString stringWithFormat:@"%d",aCellType];
}

- (void)calRow
{
  iCellTypes = [[NSMutableArray alloc] initWithCapacity:1];
  //是否需要审批意见
  if(![iTaskActionViewVO.iIshasnote isEqualToString:WA_TASK_ACTION_CANTNOTE])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWAAUDITCELL]];
  }
  
  //是否驳回
  if(iTaskActionViewVO.iActFlag == 4)
  {
     [iCellTypes addObject: [self getstrCellWithCellType:EWAREJECT]];
  }
  
  //是否转发
  if(iTaskActionViewVO.iActFlag == 5)
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWAREASSIGN]];
  }
  
  //是否指派
  if([iTaskActionViewVO.iIsassign isEqualToString:@"Y"])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWASSINGCELL]];
  }
  
  //是否能够上传附件
  if([iTaskActionViewVO.iIsupload isEqualToString:@"Y"])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWAATTACHCELL]];
  }
  
  //是否能抄送
  if([iTaskActionViewVO.iIssend isEqualToString:@"Y"])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWASENTCELL]];
  }
  
  //是否能前加签
  if([iTaskActionViewVO.iIsbassign isEqualToString:@"Y"] || [self isAddAprover])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWABEFORESINGCELL]];
  }
  
  //是否能后加签
  if([iTaskActionViewVO.iIsaassign isEqualToString:@"Y"])
  {
    [iCellTypes addObject: [self getstrCellWithCellType:EWAAFTERSINGCELL]];
  }
  
  //是否有便签
  if(![iTaskActionViewVO.iIshasmemo isEqualToString:@"0"])
  {
   [iCellTypes addObject: [self getstrCellWithCellType:EWAMEMOCELL]];
  }

}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return [iCellTypes count];
}

- (void)addALinkManWith:(id)aLinkMan
{
  //如果只支持单选
  
  int intSelect= [iCellTypes indexOfObject:[self getstrCellWithCellType:iAssginSelelctedType]];

  NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:intSelect];
  CWAPickerNC63TextFieldCell *cell = (CWAPickerNC63TextFieldCell *)[iTaskActionNC63ViewController.iTableView cellForRowAtIndexPath:index];
  
  if(!cell)
  {
    if(iAssginSelelctedType == EWASSINGCELL)
    {
      [self initAssignCell];
      cell = iPickerNC63TextFieldCell;
    }
    else if(iAssginSelelctedType == EWABEFORESINGCELL)
    {
      [self initBeforAssignCell];
      cell = iBeforAssingePickerNC63TextFieldCell;
    }
    else if(iAssginSelelctedType == EWAREJECT)
    {
      [self initRejectCell];
      cell = iRejectPickerNC63TextFieldCell;
    }
    else if(iAssginSelelctedType == EWAREASSIGN)
    {
      [self initReAssignCell];
      cell = iReassignPickernc63textfieldcell;
    }
    else
    {
      [self initAfterAssignCell];
      cell = iAfterAssingePickerNC63TextFieldCell;
    }
  
    
  }
  if((iAssginSelelctedType == EWASSINGCELL && [iTaskActionViewVO.iIsassignsigle isEqualToString:@"Y"])
     ||iAssginSelelctedType == EWAREJECT ||iAssginSelelctedType == EWAREASSIGN)
  {
    [cell deleteAllPickerCell];
  }
  NSArray *array = (NSArray*) aLinkMan;
    
  //多选处理
    if ([array respondsToSelector:@selector(count)]) {
        for (int i=0 ; i<[array count]; i++) {
            [cell addALinkManWith:[array objectAtIndex:i]];
        }
    }else{
        [cell addALinkManWith:aLinkMan];
    }


  [iTaskActionNC63ViewController.iTableView reloadData];
}

- (void)delPickerCellSuccess:(id)representedObject withSender:(id)sender
{
  if(sender)
  {
    CWAPickerNC63TextFieldCell *cell = (CWAPickerNC63TextFieldCell *)sender;
    int row = cell.tag;
    if(row >= 0 && [iActivities count] > row)
    {
      CWALinkManNC63VO *linkManNC63VO = [iActivities objectAtIndex:row];
      [linkManNC63VO.iLinkMans removeObject:representedObject];
    }
  }
  [iTaskActionNC63ViewController.iTableView reloadData];
}


- (void)selectedNote:(CWANormalNoteListViewVO *)iNormalNoteListViewVO
{
  NSIndexPath *index = [NSIndexPath indexPathForRow:0 inSection:0];
  CWAPickerNC63TextFieldCell *cell = (CWAPickerNC63TextFieldCell *)[iTaskActionNC63ViewController.iTableView cellForRowAtIndexPath:index];
  UITextField *field = (UITextField *)[cell.contentView viewWithTag:1];
  field.text = [NSString stringWithFormat:@"%@%@",iNormalNoteListViewVO.iName,NSLocalizedStringFromTable(@"comefrommb", @"btarget_task", nil) ];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  [iTaskActionNC63ViewController.view endEditing:YES];
}


@end


