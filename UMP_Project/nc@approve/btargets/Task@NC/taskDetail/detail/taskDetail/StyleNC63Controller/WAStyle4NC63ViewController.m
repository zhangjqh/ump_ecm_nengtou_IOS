//
//  WAStyle4NC63ViewController.m
//  SSTASK120521A
//
//  Created by HUYCH on 14-3-3.
//
//

#import "WAStyle4NC63ViewController.h"
#import "WAIosVersionAdaptor.h"
#import "WAMainBodyContenController.h"
#import "ReminderAndTipsHeadViewBuilder.h"
#import "WAAttachmentListViewController.h"
#import "AppDelegate.h"
#import "WAMutilPicViewController.h"
#import "WAHTMLContentViewController.h"

@interface CWAStyle4NC63ViewController ()

@property (nonatomic,retain)NSURL *iURL;

@end

@implementation CWAStyle4NC63ViewController
#define WA_TASK_TABLEVIEW_BACKGROUND_COLOR [UIColor colorWithRed:230/255.0f green:230/255.0f blue:230/255.0f alpha:1.0f]
@synthesize iURL;
@synthesize iFeedVieVO;
@synthesize iTaskDetailController;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil WithURL:(NSURL *)aURL
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self)
  {
    self.iURL = aURL;
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
 
  [CWAIosVersionAdaptor adaptIOS6SeperatorLineWithTableView: iTableView];
  
  iAttachmentController = [[CWAMainBodyContenController alloc] init];
  [iAttachmentController initElement];
  indextOfMainbody = -1 ;
  indextOfAttachment = -1;
  indextOfApproveHistory = -1;
  [self sectionTitle];
}

- (void)sectionTitle
{
  iSectiontitles = [[NSMutableArray alloc] init];
  if(iFeedVieVO.iMainBodyViewVO)
    {
    NSString *mainbody = NSLocalizedStringFromTable(@"mainbody", @"btarget_task", nil);
    [iSectiontitles addObject:mainbody];
    indextOfMainbody = [iSectiontitles indexOfObject:mainbody];;
    }
  if(iFeedVieVO.iIsHaveAttachment && iFeedVieVO.iTaskBillAttachment
     && [iFeedVieVO.iAttachmentCount intValue]> 0)
    {
    NSString *attachment = NSLocalizedStringFromTable(@"attachment", @"btarget_task", nil);
    NSString *numOfattachment = nil ;
    if(iFeedVieVO.iAttachmentCount)
      {
      numOfattachment = [NSString stringWithFormat:@"%@(%@)",attachment,iFeedVieVO.iAttachmentCount];
      [iSectiontitles addObject:numOfattachment];
      indextOfAttachment =  [iSectiontitles indexOfObject:numOfattachment];
      }
    }
  NSString *arroveHistory = NSLocalizedStringFromTable(@"arroveHistory", @"btarget_task", nil);
  [iSectiontitles addObject:arroveHistory];
  indextOfApproveHistory = [iSectiontitles indexOfObject:arroveHistory];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  int section = 1;
  section = section + [self addNumberOfSection];
  return section;
}

-(NSInteger)numnerOfotherSectionRow
{
  int addSection = 1;//必然有流程历史cell故为1
  
  //有正文
  if(iFeedVieVO.iMainBodyViewVO)
  {
    addSection = addSection +1;
  }
  //有附件
  if(iFeedVieVO.iTaskBillAttachment && [iFeedVieVO.iAttachmentCount intValue]> 0)
  {
    addSection = addSection + 1;
  }
  return addSection;
}

//增加的section
- (NSInteger)addNumberOfSection
{
  int addSection = 1;//必然有流程历史cell故为1
 
  return addSection;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRow = 0;
  if (section == 0)
  {
    numOfRow = 1;
  }
  else
  {
    numOfRow = [self numnerOfotherSectionRow];
  }
  return numOfRow;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = nil;

	
	if(indexPath.section == 0)
	{
		static NSString *CellIdentifier2  = @"webview";
		cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
		if (cell == nil)
    {
			cell = [[[NSBundle mainBundle] loadNibNamed:@"WAWebTableViewCell"  owner:self options:nil] lastObject];
    }
		((CWAWebTableViewCell *)cell).iURL = self.iURL;
	}
	else
	{
  	static NSString *CellIdentifier2  = @"TaskBillHeaderCellForMainBody";
 	 	cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
  	if (cell == nil)
 	 {
    	cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                  	  reuseIdentifier:CellIdentifier2];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
 	 }
    
  	cell.textLabel.text = [iSectiontitles objectAtIndex:indexPath.row] ;
	}
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
}


#pragma mark - 获取附件类
-(NSString *)getIconForFileType:(NSString *)aFileType
{
  NSString *iconName ;
  aFileType = [aFileType lowercaseString];
  if([aFileType isEqualToString:@"doc"])
  {
    iconName = @"doc_ico.png";
  }
  else if([aFileType isEqualToString:@"docx"])
  {
    iconName = @"docx_ico.png";
  }
  else if([aFileType isEqualToString:@"pdf"])
  {
    iconName = @"pdf_icon.png";
  }
  else if([aFileType isEqualToString:@"bmp"])
  {
    iconName = @"bmp_ico.png";
  }else if([aFileType isEqualToString:@"html"])
  {
      iconName = @"html_ico.png";
  }
  else if([aFileType isEqualToString:@"jpg"]|| [aFileType isEqualToString:@"jpeg"])
  {
    iconName = @"jpg_icon.png";
  }
  else if([aFileType isEqualToString:@"ppt"])
  {
    iconName = @"ppt_ico.png";
  }
  else if([aFileType isEqualToString:@"txt"])
  {
    iconName = @"txt_ico.png";
  }
  else if([aFileType isEqualToString:@"xls"])
  {
    iconName = @"xls_ico.png";
  }
  else if([aFileType isEqualToString:@"xlsx"])
  {
    iconName = @"xlsx_ico.png";
  }
  else if([aFileType isEqualToString:@"pptx"])
  {
    iconName = @"pptx_ico.png";
  }
  else if([aFileType isEqualToString:@"png"])
  {
    iconName = @"png_ico.png";
  }
  else
  {
    iconName = @"default_ico.png";
  }
  return iconName;
}



#pragma mark -
#pragma mark - tableviewHeadler 方法


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 0)
	{
		return 400.0f;
	}
  return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  CGFloat headerHeight = 24.0f;
  
  return headerHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  if(section == 0 && ((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent])||  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint])))
   {
     return [ReminderAndTipsHeadViewBuilder getHeadViewWithReminder:iFeedVieVO.iReminderContent WithTips:iFeedVieVO.iTaskAcListHint];
   }
   else
   {
     return nil;
   }
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section ==1)
  {
  //打开附件列表
  if (indextOfAttachment >= 0 && indexPath.row == indextOfAttachment)
  {
    CWAAttachmentListViewController *attachmentListViewController =
    [[CWAAttachmentListViewController alloc]  initWithAttachmentList:iFeedVieVO.iTaskBillAttachment
                                                     WithServiceCode:iFeedVieVO.iServiceCode];
    attachmentListViewController.iTotalLine =  [iFeedVieVO.iAttachmentCount intValue];
    
    UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
    [navController pushViewController:attachmentListViewController animated:YES];
  }
  //打开正文内容
  else if (indextOfMainbody >= 0 &&  indexPath.row == indextOfMainbody)
  {
    CWAMainBodyViewVO *mainBodyViewVO = iFeedVieVO.iMainBodyViewVO;
    
    CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
    NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:iFeedVieVO.iServiceCode] intValue];
    NSInteger attachmentSize = [mainBodyViewVO.iFilesize intValue];
    if (downFileMaxSize < attachmentSize)
    {
      NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"btarget_task", nil);
      NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"btarget_task", nil);
      NSString *alertTitle = [NSString stringWithFormat:@"%@%iKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
                                                     message:nil
                                                    delegate:self
                                           cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task",nil)
                                           otherButtonTitles:nil];
      [alert show];
      return;
    }
    
    
    NSString *fileName = mainBodyViewVO.iFillename;
    
    //获取普通正文
    if([mainBodyViewVO.iContenttype isEqualToString:@"3"])
    {
      if(fileName)
      {
        NSArray *fileArray = [fileName componentsSeparatedByString:@"."];
        NSString *strfileType = nil;
        if([fileArray count]  > 1)
        {
          strfileType = [fileArray objectAtIndex:([fileArray count] - 1)];
        }
        
        //确定只有doc
        if(!strfileType)
        {
          strfileType = @"doc";
        }
        [iAttachmentController attchDownloadWithID:mainBodyViewVO.iMainbodyid
                                      withFileSize:attachmentSize
                                      withFileName:fileName
                                      withFileType:strfileType
                                 withFileDirectory: WA_TASK_ATTACHMENT_DIRECTORY
                                  withComplementID:@"WA00002"
                                   withServiceCode:iFeedVieVO.iServiceCode
                                        withTaskID:iFeedVieVO.iTaskID
                                     WithStatuskey:iFeedVieVO.iStatuskey
                                    WithStatuscode:iFeedVieVO.iStatuscode
                                    withActionType:@"getMainBodyContent"];
      }
    }
    //获取多图片正文
    else if([mainBodyViewVO.iContenttype isEqualToString:@"2"])
    {
      CWAMutilPicViewController *mutilPicViewController = [[CWAMutilPicViewController alloc]
                                                           initWithNibName:@"WAMutilPicViewController"
                                                           bundle:nil];
      mutilPicViewController.iServiceCode = iFeedVieVO.iServiceCode;
      mutilPicViewController.iTaskID = iFeedVieVO.iTaskID;
      mutilPicViewController.iID = mainBodyViewVO.iMainbodyid;
        UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
        [navController pushViewController:mutilPicViewController animated:YES];
    }
    //获取html正文
    else
    {
      CWAHTMLContentViewController *htmlContentViewController = [[CWAHTMLContentViewController alloc] init];
      htmlContentViewController.iTaskID = iFeedVieVO.iTaskID;
      htmlContentViewController.iID = mainBodyViewVO.iMainbodyid;
      htmlContentViewController.iServiceCode = iFeedVieVO.iServiceCode;
      htmlContentViewController.iStatuskey = iFeedVieVO.iStatuskey;
      htmlContentViewController.iStatuscode = iFeedVieVO.iStatuscode;
      
        UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
        [navController pushViewController:htmlContentViewController animated:YES];
    }
  }
  //审批历史
  else if(indextOfApproveHistory >= 0 &&  indexPath.row == indextOfApproveHistory )
  {
    [iTaskDetailController showTaskHistoryView];
  }
  }
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
