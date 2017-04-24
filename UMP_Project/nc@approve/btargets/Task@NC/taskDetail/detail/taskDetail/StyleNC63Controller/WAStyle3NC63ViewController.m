/*!
 @header CWAStyle3ViewController.m
 @abstract style3 样式《data(row(item,child))》但child小于2行
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import "WAStyle3NC63ViewController.h"
#import "WATaskMacro.h"
#import "WASpinnerView.h"
#import "WAAttachmentListViewController.h"
#import "WAMutilPicViewController.h"
#import "ReminderAndTipsHeadViewBuilder.h"
#import "WAIosVersionAdaptor.h"
#import "AppDelegate.h"
#import "WAHTMLContentViewController.h"
@interface CWAStyle3NC63ViewController ()

@end

@implementation CWAStyle3NC63ViewController

@synthesize iFeedVieVO;
@synthesize iTaskDetailController;



- (id)initWithStyle:(UITableViewStyle)style

{
    self = [super initWithStyle:style];
    if (self)
    {
    
    }
    return self;
}

- (NSString *)getStringWithIndex:(NSIndexPath *)aIndex
{
	NSString *string = nil;
	if(aIndex.section == 0)
	{
	 	string = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:aIndex.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
	}
	else if(aIndex.section >= ([self numberOfSectionsInTableView:self.tableView] - 2 -1))
	{
		int section = aIndex.section - [self addNumberOfSection];
	  NSArray * tempArray = [[[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:section - 1] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"]
													objectAtIndex:aIndex.row] objectForKey:@"item"];
		if([tempArray count] > 1)
		{
			 string = [[tempArray  objectAtIndex:1] objectForKey:@"value"];
		}
		
	}
	return string;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  [CWAIosVersionAdaptor adaptIOS6SeperatorLineWithTableView: self.tableView];

	
	
  iAttachmentController = [[CWAMainBodyContenController alloc] init];
  [iAttachmentController initElement];
  indextOfMainbody = -1 ;
  indextOfAttachment = -1;
  indextOfApproveHistory = -1;
  [self sectionTitle];
}
-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  int section = 4;
  section = section + [self addNumberOfSection];
  return section;
}

//增加的section
- (NSInteger)addNumberOfSection
{
  int addSection = 1;
  return addSection;
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
- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRows = 0;
  if(section == 0)
  {
    numOfRows = 1;
  }
  else if (section == 1)
  {
    numOfRows = [[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:0] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"] count];
  }
  else if (section == 2)
  {
    if ([iFeedVieVO.iTaskBillBodyArray count] > 1)
    {
      numOfRows = [[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:1] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"] count];
    }
  }
 

  return numOfRows;
  
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRows = 0;
  if (section == 0) 
  {
    numOfRows = [iFeedVieVO.iTaskBillHeaderArray count];
  }
  
  //最后三个section
  else if(section >= ([self numberOfSectionsInTableView:tableView] - 2 -1))
  {
    numOfRows = [self numberOfRowsInSection:(section- [self addNumberOfSection])];
  }
  else 
  {
    numOfRows = [self numnerOfotherSectionRow];
  }
  return numOfRows;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = nil;
  if (indexPath.section == 0) 
  {
    static NSString *CellIdentifier1 = @"TaskBillHeaderCell1";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier1];
    if (cell == nil) 
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillHeader"  owner:self options:nil] lastObject];  
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE1_TAG];
    NSString *aString = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:0] objectForKey:@"value"];
    lable1.text = aString;
    [self changeTextFontAndColorWithItem:0 forLabel:lable1];
    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
//      NSRange range = [aString_2 rangeOfString:@":"];
//      if (range.location != NSNotFound) {
//          aString_2 = [aString_2 substringWithRange:NSMakeRange(0, range.location - 2)];
//      }
    lable2.text = aString_2;
    [self changeTextFontAndColorWithItem:1 forLabel:lable2];
  }
  else if(indexPath.section >= ([self numberOfSectionsInTableView:tableView] - 2 -1))
  {
    cell = [self buildCellWithSection:indexPath.section - [self addNumberOfSection]
                        withTableView:tableView
                        WithIndexPath:indexPath];
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
    [self changeTextFontAndColorWithItem:1 forLabel:cell.textLabel];
  
  }
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
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

 - (UITableViewCell *)buildCellWithSection:(int)aSection
                         withTableView :(UITableView *)tableView
                             WithIndexPath:(NSIndexPath *)indexPath;
{
  UITableViewCell *cell;
  NSString *CellIdentifier = nil;
  switch (aSection) {
    case 1:
    {
      CellIdentifier = @"TaskBillHeaderCell";
      cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
      if (cell == nil)
      {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillHeader"  owner:self options:nil] lastObject];
      }
      cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
      NSArray * tempArray = [[[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:0] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"]
                              objectAtIndex:indexPath.row] objectForKey:@"item"];
    
      if (!tempArray ||[tempArray count] == 0)
      {
        return cell;
      }
    
      UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE1_TAG];
      NSString *aString = [[tempArray  objectAtIndex:0] objectForKey:@"value"];
      lable1.text = aString;
      [self changeTextFontAndColorWithItem:0 forLabel:lable1];
      UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
      NSString *aString_2 = [[tempArray  objectAtIndex:1] objectForKey:@"value"];
        NSRange range = [aString_2 rangeOfString:@":"];
        if (range.location != NSNotFound) {
            aString_2 = [aString_2 substringWithRange:NSMakeRange(0, range.location - 2)];
        }
      lable2.text = aString_2;
      [self changeTextFontAndColorWithItem:1 forLabel:lable2];
    }

      break;
    case 2:
    {
    CellIdentifier = @"TaskBillHeaderCell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillHeader"  owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    NSArray * tempArray = [[[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:1] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"]
                            objectAtIndex:indexPath.row] objectForKey:@"item"];
    
    if (!tempArray ||[tempArray count] == 0)
    {
      return cell;
    }
    
    UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE1_TAG];
    NSString *aString = [[tempArray  objectAtIndex:0] objectForKey:@"value"];
    lable1.text = aString;
      [self changeTextFontAndColorWithItem:0 forLabel:lable1];
    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[tempArray  objectAtIndex:1] objectForKey:@"value"];
        NSRange range = [aString_2 rangeOfString:@":"];
        if (range.location != NSNotFound) {
            aString_2 = [aString_2 substringWithRange:NSMakeRange(0, range.location - 2)];
        }
    lable2.text = aString_2;
      [self changeTextFontAndColorWithItem:1 forLabel:lable2];
    }
      break;
    case 3:
    {
      CellIdentifier = @"TaskBillAttachmentCell";
      cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
      if (cell == nil)
      {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillAttachment"  owner:self options:nil] lastObject];
      }
      NSDictionary *attachmentDic =  [iFeedVieVO.iTaskBillAttachment objectAtIndex:indexPath.row];
    
      UILabel *aLable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_LABLE1_TAG];
      aLable1.text = [attachmentDic  objectForKey:@"filename"];
      [self changeTextFontAndColorWithItem:0 forLabel:aLable1];
      UILabel *aLable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_LABLE2_TAG];
      aLable2.text = [attachmentDic  objectForKey:@"filesize"];
      [self changeTextFontAndColorWithItem:1 forLabel:aLable2];
      UIImageView *aImageView = (UIImageView *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_IMAGE1_TAG];
      NSString *ImageString = [attachmentDic objectForKey:@"filetype"];
      aImageView.image = [UIImage imageNamed:[self getIconForFileType:ImageString]];
    
      UIImageView *attachmentImageview = (UIImageView *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_IMAGE_TAG];
      if (indexPath.row > 0)
      {
        attachmentImageview.hidden = YES;
      }
    }
      
    default:
      cell = nil;
      break;
  }
  return cell;
}

#pragma mark -
#pragma mark - tableviewHeadler 方法

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  CGFloat headerHeight = 0;
  if (section == 0 )
  {
    if((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent]) &&  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint]))
    {
      headerHeight = 48;
    }
    else if((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent]) ||  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint]))
    {
      headerHeight = 24;
    }
    else
    {
      headerHeight = 24;
    }
    return headerHeight;
  }
	else if (section == ([self numberOfSectionsInTableView:tableView]  -3))
	{
		headerHeight =   24.0f;
	}
  else
  {
    headerHeight = 24;
  }
  return headerHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  if(section == 0 && ((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent])||  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint])))
  {
    return [ReminderAndTipsHeadViewBuilder getHeadViewWithReminder:iFeedVieVO.iReminderContent WithTips:iFeedVieVO.iTaskAcListHint];
  }
  else if (section == ([self numberOfSectionsInTableView:tableView]  -3))
  {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, 24)];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, [[UIScreen mainScreen] applicationFrame].size.width -32.00f, 24)];
    NSString *totalline = NSLocalizedStringFromTable(@"totalline", @"btarget_task", nil);
    lable.text = [NSString stringWithFormat:@"%@:%@",totalline,iFeedVieVO.iTaskBillBodyCount];
    lable.backgroundColor = [UIColor clearColor];
    lable.textColor = [self headerColor];
    lable.font = [self headerFont];
    [headerView addSubview:lable];
  }
  else 
  {
    return nil;
  }
  return nil;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 1)
  {
  
  //打开附件列表
  if (indextOfAttachment >= 0 && indexPath.row == indextOfAttachment )
  {
    CWAAttachmentListViewController *attachmentListViewController =
    [[CWAAttachmentListViewController alloc]  initWithAttachmentList:iFeedVieVO.iTaskBillAttachment
                                            WithServiceCode:iFeedVieVO.iServiceCode];
  attachmentListViewController.iTotalLine =  [iFeedVieVO.iAttachmentCount intValue];
  
      UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
      [navController pushViewController:attachmentListViewController animated:YES];
  }
  //打开正文内容
  else if (indextOfMainbody >= 0 &&  indexPath.row == indextOfMainbody )
  {
    CWAMainBodyViewVO *mainBodyViewVO = iFeedVieVO.iMainBodyViewVO;
  
    CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
    NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:iFeedVieVO.iServiceCode] intValue];
    NSInteger attachmentSize = [mainBodyViewVO.iFilesize intValue];
//    if (downFileMaxSize < attachmentSize)
//    {
//      NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"btarget_task", nil);
//      NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"btarget_task", nil);
//      NSString *alertTitle = [NSString stringWithFormat:@"%@%iKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
//      UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
//                                                     message:nil
//                                                    delegate:self
//                                           cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task",nil)
//                                           otherButtonTitles:nil];
//      [alert show];
//      return;
//    }
  
  
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
                                  withComplementID:@"A0A007"
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
  else if(indextOfApproveHistory >= 0 &&  indexPath.row == indextOfApproveHistory)
  {
    [iTaskDetailController showTaskHistoryView];
  }
    
  }
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
  }else if([aFileType isEqualToString:@"jpg"]|| [aFileType isEqualToString:@"jpeg"])
  {
    iconName = @"jpg_icon.png";
  }else if([aFileType isEqualToString:@"ppt"])
  {
    iconName = @"ppt_ico.png";
  }else if([aFileType isEqualToString:@"txt"])
  {
    iconName = @"txt_ico.png";
  }else if([aFileType isEqualToString:@"xls"])
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
#pragma mark - UIScrollViewDelegate delegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_DETAILTABLE_BEGING_SCEOLL object:nil];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
  [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_DETAILTABLE_END_SCEOLL object:nil];
}
@end
