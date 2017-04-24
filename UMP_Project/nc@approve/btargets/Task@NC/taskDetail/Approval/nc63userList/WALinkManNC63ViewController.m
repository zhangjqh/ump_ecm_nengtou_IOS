
#import "WALinkManNC63ViewController.h"
#import "WAUserListNC63Cell.h"
#import "WALinkManNC63Controller.h"
#import "WALinkManNC63VO.h"
#import "WAUserListNC63GroupCell.h"
#import "WAIosVersionAdaptor.h"

//编码lable的tag1
#define WA_TASK_LIANKMAM_MARKLABLE 103
//姓名lable的tag
#define WA_TASK_LIANKMAN_NAMELABLE 104
#define WA_TASK_LIANKMAN_SEARCHBAR_TAG 102
#define WA_TASK_LINKMAN_NAVIGATION_TAG 101
#define WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE @"nav_bd.png"
#define WA_TASK_NAVIGATIONBAR_BACKGROUND_IMAGE_IOS7 @"nav_bd_IOS7.png"
#define WA_TASK_TABLEVIEW_BACKGROUND_COLOR [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1.0f]

@implementation CWALinkManNC63ViewController

@synthesize iNc63Delegate;
@synthesize iLinkManNC63VO;

static NSString *WA_ACTIVITY_ACTIVITYLIST = @"activitylist";
static NSString *WA_ACTIVITY_ACTIVITY = @"activity";

static NSString *WA_ACTIVITY_USERS = @"users";
static NSString *WA_ACTIVITY_PSNSTRUCT = @"psnstruct";


- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             isSingle:(BOOL)aIsSingle
			 withActionCode:(NSString *)aActionCode;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
      isSingle = aIsSingle;
			iActionCode = aActionCode;
    }
    return self;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  if(iLinkManNC63VO)
  {
    return  35.0f;
  }
  else
  {
     return  0.0f;
  }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
    if (iLinkManNC63VO && section == 0) {
        UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 8, maxWidth, 24)];
        headerView.backgroundColor = [UIColor clearColor];
        
        UILabel *HeaderLabel = [[UILabel alloc] initWithFrame:CGRectMake(16, 8, maxWidth -32.00f, 24)];
        HeaderLabel.backgroundColor = [UIColor clearColor];
        HeaderLabel.font = WA_TASK_FONT_KAKU_W3_12;
        
        HeaderLabel.textColor = WA_TASK_COLOR_104_143_223;
        HeaderLabel.text = iLinkManNC63VO.iName;
        [headerView addSubview:HeaderLabel];
        return headerView ;
    }
    else
    {
        return  nil;
    }
}
/*
- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
  if(iLinkManNC63VO)
  {
    return iLinkManNC63VO.iName;
  }
  else
  {
    return nil;
  }
}
 */

#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]

- (void)viewDidLoad
{
  iIsMoreData = YES;
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;

  //初始化controller，并请求模糊查询条件消息
  iLinkManController.iDelegate = self;
  iLinkManController.iFlag = iFlag;
  iLinkManController.iServiceCode = self.iServiceCode;
  [iLinkManController setElementAndLocal];
  
  //controller设置actiontype 和taskid
  [iLinkManController setRequestLinkManActionType:iLinkManRequestType andTaskID:iTaskId];
    
  //设置navigationbar的背景颜色
  UINavigationBar *aNavigationBar = (UINavigationBar *)[self.view viewWithTag:WA_TASK_LINKMAN_NAVIGATION_TAG];
  aNavigationBar.topItem.title = iNavigationTitle;
  
  if ([aNavigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
    {
        [aNavigationBar setBackgroundImage:[UIImage imageNamed:WA_NEW_TASK_NAV_BG]
                             forBarMetrics:UIBarMetricsDefault];
    }
  
  [CWAIosVersionAdaptor adaptWithNavBar:aNavigationBar];
  
  //设置navigation的是否隐藏，并调整列表的高度
  UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
  linkManSearchBar.hidden = YES;
  
  //初始化tableview
  
  if(iLinkManNC63VO)
  {
    iPullDownTableView = [[CWAPullingRefreshTableView alloc]
                          initWithFrame:CGRectMake(0, 44 , maxWidth, 416 )
                          pullingDelegate:self
                          withStyle:UITableViewStyleGrouped];
  }
  else
  {
    iPullDownTableView = [[CWAPullingRefreshTableView alloc]
                          initWithFrame:CGRectMake(0, 44 , maxWidth, 416)
                          pullingDelegate:self];
  }
  
#ifdef NO_BAR_BACK_BTN_TITLE
  
  NSString *cancle = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
  [iCancleBtn setTitle:cancle
              forState:UIControlStateNormal];
  
  [iCancleBtn setImage:nil
              forState:UIControlStateNormal];
  
  [iCancleBtn setBackgroundImage:[UIImage imageNamed:@"nav_two.png"]
                        forState:UIControlStateNormal];
  
  [iCancleBtn setBackgroundImage:[UIImage imageNamed:@"nav_two_touch.png"]
                        forState:UIControlStateHighlighted];
  
  [iSaveBtn setBackgroundImage:[UIImage imageNamed:@"nav_two.png"]
                        forState:UIControlStateNormal];
  
  [iSaveBtn setBackgroundImage:[UIImage imageNamed:@"nav_two_touch.png"]
                        forState:UIControlStateHighlighted];
#endif
    
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iPullDownTableView];
  iPullDownTableView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleBottomMargin;
  iPullDownTableView.headerOnly = NO;
  iPullDownTableView.delegate = self;
  iPullDownTableView.dataSource = self;
  iPullDownTableView.tableFooterView = nil;

  iPullDownTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  [iPullDownTableView setNormalTableview:YES];
  
   //iPullDownTableView.backgroundColor = WA_TASK_COLOR_240;

    
  [self.view addSubview:iPullDownTableView];
  
  [iSaveBtn setTitle:NSLocalizedStringFromTable(@"save", @"btarget_task", nil)
            forState:UIControlStateNormal];
  [iSaveBtn addTarget:self action:@selector(saveBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    NSString *cancle2 = NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil);
    [iCancleBtn setTitle:cancle2
                forState:UIControlStateNormal];
    [iCancleBtn setImage:nil forState:UIControlStateNormal];
    [iCancleBtn setBackgroundImage:nil forState:UIControlStateNormal];
    [iCancleBtn setTitleColor:WA_YONYOU_RED_COLOR
                     forState:UIControlStateNormal];
    [iCancleBtn.titleLabel setFont:WA_TASK_FONT_KAKU_W3_14];
    UIBarButtonItem *cancleButtonItem = [[UIBarButtonItem alloc]initWithCustomView:iCancleBtn];
   
    [CWAIosVersionAdaptor adaptNavigationItem:aNavigationBar.topItem
                             withLeftBarItems:cancleButtonItem];

  if(WA_CURENT_OS_V >= 7.0f)
  {
      [CWAIosVersionAdaptor adaptWithRightNavBtn:iSaveBtn];

    }
    
    iPullDownTableView.separatorStyle  = UITableViewCellStyleDefault;
    [CWAIosVersionAdaptor tableViewSeparatorInset:iPullDownTableView];
    [CWAIosVersionAdaptor adaptSeperatorLineWithTableView:iPullDownTableView];
    [CWAIosVersionAdaptor adaptTableViewNoDataCellSeparator:iPullDownTableView];
	((CWALinkManNC63Controller *)iLinkManController).iActioncode = iActionCode;
  if(iLinkManNC63VO)
  {
    ((CWALinkManNC63Controller *)iLinkManController).iActivityid = iLinkManNC63VO.iId;
  }
  
  [iLinkManController sendTaskActionLinkManMsgWithCondition:nil];
    
    if (isSingle) {
        iSaveBtn.hidden = YES;
    }
    else
    {
        iSaveBtn.hidden = NO;
        
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height;
    if (isSingle) {
        height = 45.0;
    }
    else
    {
        height = 58.0;
    }
    return height;
}

- (void)saveBtnClick:(id)sender
{
  if([iNc63Delegate respondsToSelector:@selector(saveSelectedLists:andLinkManNC63VO:)])
  {
    NSMutableArray *arrays = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0 ;i < [iSelectIndexPath count]; i++)
    {
      NSIndexPath *path = [iSelectIndexPath objectAtIndex:i];
      CWALinkManNC63VO *vo = [iDataArray objectAtIndex:path.row];
      [arrays addObject:vo];
    }
    [iNc63Delegate performSelector:@selector(saveSelectedLists:andLinkManNC63VO:) withObject:arrays withObject:iLinkManNC63VO];
  }
  [self gotoLastViewController];
}

- (IBAction)gotoLastViewController
{
  [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)gotoLastViewControllerWhenCancle
{
  [super gotoLastViewController];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  CWAUserListNC63Cell *cell;
  //static NSString *CellIdentifier = @"Cell2";
  NSString *CellIdentifier = [NSString stringWithFormat:@"cell%ld%ld",indexPath.section,indexPath.row];
  cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  cell.backgroundColor = WA_TASK_COLOR_253;
  CWALinkManVO *linkMan = (CWALinkManVO *)[iDataArray objectAtIndex:indexPath.row];
  if (cell == nil)
  {
    if(isSingle)
    {
      if(iLinkManNC63VO)
      {
        cell = [[CWAUserListNC63GroupCell alloc]
                 initWithStyleSingle:UITableViewCellStyleDefault
                 WithReuseIdentifier:CellIdentifier
                 WithSelectImage:[UIImage imageNamed:@"cell_ic_checkmark.png"]
                 WithDeSelectImage:[UIImage imageNamed:@""]];
      }
      else
      {
        cell = [[CWAUserListNC63Cell alloc]
                 initWithStyleSingle:UITableViewCellStyleDefault
                 WithReuseIdentifier:CellIdentifier
                 WithSelectImage:[UIImage imageNamed:@"cell_ic_checkmark.png"]
                 WithDeSelectImage:[UIImage imageNamed:@""]];
      }
      [(CWAUserListNC63Cell *)cell setLinkManSingle:linkMan WithIsSel:NO];
    }
    else
    {
      if(iLinkManNC63VO)
      {
        cell = [[CWAUserListNC63GroupCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 WithReuseIdentifier:CellIdentifier
                 WithSelectImage:[UIImage imageNamed:@"cell_ic_checkbox_checked.png"]
                 WithDeSelectImage:[UIImage imageNamed:@"cell_ic_checkbox_unchecked.png"]];
      }
      else
      {
        cell = [[CWAUserListNC63Cell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 WithReuseIdentifier:CellIdentifier
                 WithSelectImage:[UIImage imageNamed:@"cell_ic_checkbox_checked.png"]
                 WithDeSelectImage:[UIImage imageNamed:@"cell_ic_checkbox_unchecked.png"]];
      }
      [(CWAUserListNC63Cell *)cell setLinkMan:linkMan WithIsSel:NO];
    }
  }  
 
  if([iSelectIndexPath containsObject:indexPath])
  {
    cell.isSelected = YES;
  }
  else
  {
    cell.isSelected = NO;
  }
  
  CGRect cellFrame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, [[UIScreen mainScreen] applicationFrame].size.width, 58.0f);
  cell.frame = cellFrame;
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
  [linkManSearchBar resignFirstResponder];
  
  if(!iSelectIndexPath)
  {
    iSelectIndexPath = [[NSMutableArray alloc] initWithCapacity:1];
  }
  
  //单选
  if(isSingle)
  {
      for (int i = 0; i < [iSelectIndexPath count]; i ++)
      {
          NSIndexPath *index = [iSelectIndexPath objectAtIndex:i];
          CWAUserListNC63Cell *cell = (CWAUserListNC63Cell *)[tableView cellForRowAtIndexPath:index];
          if(cell)
          {
              cell.isSelected = NO;
              
              CGRect cellFrame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, 58.0f);
              
              cell.frame = cellFrame;
          }
      }
      [iSelectIndexPath removeAllObjects];
      CWAUserListNC63Cell *cell = (CWAUserListNC63Cell *)[tableView cellForRowAtIndexPath:indexPath];
      if(cell)
      {
          cell.isSelected = YES;
          CGRect cellFrame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, 58.0f);
          
          cell.frame = cellFrame;
      }
      [iSelectIndexPath addObject:indexPath];
      [self saveBtnClick:nil];
  }
  else
  {
    if([iSelectIndexPath containsObject:indexPath])
    {
      [iSelectIndexPath removeObject:indexPath];
      CWAUserListNC63Cell *cell = (CWAUserListNC63Cell *)[tableView cellForRowAtIndexPath:indexPath];
      if(cell)
      {
        cell.isSelected = NO;
          CGRect cellFrame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, 58.0f);
          
          cell.frame = cellFrame;
      }
    }
    else
    {
      [iSelectIndexPath addObject:indexPath];
      CWAUserListNC63Cell *cell = (CWAUserListNC63Cell *)[tableView cellForRowAtIndexPath:indexPath];
      if(cell)
      {
        cell.isSelected = YES;
          CGRect cellFrame = CGRectMake(cell.frame.origin.x, cell.frame.origin.y, cell.frame.size.width, 58.0f);
          
          cell.frame = cellFrame;

      }
    }
      
   
  }
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}



- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;
{
  [iPullDownTableView tableViewDidFinishedLoading];
  
  @try
  {
    if([aMsgVO.iFlag intValue] != 0)
    {
      UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                         message:aMsgVO.iDesc
                                                        delegate:nil
                                               cancelButtonTitle:NSLocalizedStringFromTable(@"Comfirm", @"component_attachment", nil)
                                               otherButtonTitles:nil];
      [alerView show];
     
     }
    else if (aMsgVO.iServiceCode)
    {
      NSDictionary *actionDic = nil;
      if(iLinkManNC63VO)
      {
        actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:WA_ACTIVITY_USERS];
      }
      else
      {
        actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:WA_ACTIVITY_ACTIVITYLIST];
      }
    
      //人员列表返回
      if (actionDic != nil)
      {
      
        NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:1];
        iIsFirstGoIn = NO;
        [iPullDownTableView setNormalTableview:NO];
    
        NSArray *actionArray = nil;
        if(iLinkManNC63VO)
        {
          actionArray = [actionDic objectForKey:WA_ACTIVITY_PSNSTRUCT];
        }
        else
        {
          actionArray = [actionDic objectForKey:WA_ACTIVITY_ACTIVITY];
        }
        for (NSDictionary *actionDic in actionArray)
        {
          CWALinkManNC63VO *aLinkMan = [[CWALinkManNC63VO alloc] initWithDic:actionDic];
          [tempArray addObject:aLinkMan];
        }
			
        if(!iDataArray)
        {
          iDataArray = [[NSMutableArray alloc] initWithCapacity:1];
        }
        [iDataArray removeAllObjects];
        [iDataArray addObjectsFromArray:tempArray];
        [iPullDownTableView reloadData];
      
        if ([tempArray count] <25)
        {
          iIsMoreData = NO;
        }
        else
        {
          iIsMoreData = YES;
        }
      }
      else
      {
        //模糊查询条件的返回
        NSString *searchCondition = [[[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]
																		objectForKey:@"searchcondition"] objectForKey:@"conditiondesc"];
        UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
        linkManSearchBar.placeholder = searchCondition;
      }
    }
  }
  @catch (NSException *exception)
  {
    
  }
  @finally
  {
    
  }
}

- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO withTag:(NSString *)tag;
{
    [iPullDownTableView tableViewDidFinishedLoading];
    
    @try
    {
        if([aMsgVO.iFlag intValue] != 0)
        {
            UIAlertView *alerView = [[UIAlertView alloc] initWithTitle:nil
                                                               message:aMsgVO.iDesc
                                                              delegate:nil
                                                     cancelButtonTitle:NSLocalizedStringFromTable(@"Comfirm", @"component_attachment", nil)
                                                     otherButtonTitles:nil];
            [alerView show];
            
        }
        else if (aMsgVO.iServiceCode)
        {
            NSDictionary *actionDic = nil;
            if(iLinkManNC63VO)
            {
                actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:WA_ACTIVITY_USERS];
            }
            else
            {
                actionDic = [[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]objectForKey:WA_ACTIVITY_ACTIVITYLIST];
            }
            
            //人员列表返回
            if (actionDic != nil)
            {
                
                NSMutableArray *tempArray = [[NSMutableArray alloc] initWithCapacity:1];
                iIsFirstGoIn = NO;
                [iPullDownTableView setNormalTableview:NO];
                
                NSArray *actionArray = nil;
                if(iLinkManNC63VO)
                {
                    actionArray = [actionDic objectForKey:WA_ACTIVITY_PSNSTRUCT];
                }
                else
                {
                    actionArray = [actionDic objectForKey:WA_ACTIVITY_ACTIVITY];
                }
                for (NSDictionary *actionDic in actionArray)
                {
                    CWALinkManNC63VO *aLinkMan = [[CWALinkManNC63VO alloc] initWithDic:actionDic];
                    
                    [tempArray addObject:aLinkMan];
                }
                
                if(!iDataArray)
                {
                    iDataArray = [[NSMutableArray alloc] initWithCapacity:1];
                }
                //[iDataArray removeAllObjects];
                [iDataArray addObjectsFromArray:tempArray];
                [iPullDownTableView reloadData];
                
                if ([tempArray count] <25)
                {
                    iIsMoreData = NO;
                }
                else
                {
                    iIsMoreData = YES;
                }
            }
            else
            {
                //模糊查询条件的返回
                NSString *searchCondition = [[[[aBaseVO.voDictionary objectForKey:aMsgVO.iServiceCode] objectAtIndex:0]
                                              objectForKey:@"searchcondition"] objectForKey:@"conditiondesc"];
                UISearchBar *linkManSearchBar = (UISearchBar *)[self.view viewWithTag:WA_TASK_LIANKMAN_SEARCHBAR_TAG];
                linkManSearchBar.placeholder = searchCondition;
            }
        }
    }
    @catch (NSException *exception)
    {
        
    }
    @finally
    {
        
    }
}

@end
