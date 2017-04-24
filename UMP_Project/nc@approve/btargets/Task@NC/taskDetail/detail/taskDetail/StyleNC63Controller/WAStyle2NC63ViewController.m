/*!
 @header CWAStyle2ViewController.m
 @abstract style2 样式《data(row(item,child))》但child大于2行
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation
 */

#import "WAStyle2NC63ViewController.h"
#import "WATaskMacro.h"
#import "WATaskListRowViewController.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"
#import "WAMutilPicViewController.h"
#import "WAAttachmentListViewController.h"
#import "ReminderAndTipsHeadViewBuilder.h"
#import "WAIosVersionAdaptor.h"
#import "WAHTMLContentViewController.h"

@interface CWAStyle2NC63ViewController ()

@end

@implementation CWAStyle2NC63ViewController
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

- (void)viewDidUnload
{
  [super viewDidUnload];
  // Release any retained subviews of the main view.
  // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  int section = 3;
  section = section + [self addNumberOfSection];
  return section;
}


//增加的section
- (NSInteger)addNumberOfSection
{
  int addSection = 1;//必然有流程历史cell故为1
  
  //合并附件和流程历史
  /*
   if(iFeedVieVO.iMainBodyViewVO)
   {
   addSection = addSection +1;
   }
   if(iFeedVieVO.iTaskBillAttachment && [iFeedVieVO.iAttachmentCount intValue]> 0)
   {
   addSection = addSection + 1;
   }
   */
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


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRows = 0;
  //表头
  if (section == 0)
  {
    numOfRows = [iFeedVieVO.iTaskBillHeaderArray count];
  }
  //如果是倒数第2个section 显示单据表体
  else if (section == [self numberOfSectionsInTableView:tableView] -2)
  {
    if ([iFeedVieVO.iTaskBillBodyArray count] > 50)
    {
      numOfRows = 50;
    }
    else
    {
      numOfRows = [iFeedVieVO.iTaskBillBodyArray count];
    }
  }
  //如果是倒数第一个section,也就是更多数据
  else if(section == [self numberOfSectionsInTableView:tableView] -1)
  {
    
    numOfRows = 0;
  }
  //否则就是流程历史和附件
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
    static NSString *CellIdentifier0 = @"TaskBillHeaderCell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier0];
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
    lable2.text = aString_2;
    [self changeTextFontAndColorWithItem:1 forLabel:lable2];
  }
  
  //如果是最后的secton,显示表体
  else if (indexPath.section == [self numberOfSectionsInTableView:tableView] -2)
  {
    id object = [[iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row]objectForKey:@"item"];
    NSInteger itemCount = [object count];
    //动态产出cell的标示符
    NSString *CellIdentifier;
    if (itemCount == 1)
    {
      CellIdentifier =  @"WATaskBillOneItem";
    }
    else if(itemCount == 2)
    {
      CellIdentifier = @"WATaskBillTwoItem";
    }
    else if(itemCount == 3)
    {
      CellIdentifier = @"WATaskBillThreeItem";
    }
    else
    {
      CellIdentifier = @"WATaskBillFourItem";
    }
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //如果没有可服用的cell则产生一个cell
    if (cell == nil)
    {
      NSString *nibName = nil;
      if (itemCount == 1)
      {
        nibName = @"WATaskBillOneItem";
      }
      else if(itemCount == 2)
      {
        nibName = @"WATaskBillTwoItem";
      }
      else if(itemCount == 3)
      {
        nibName = @"WATaskBillThreeItem";
      }
      else
      {
        nibName = @"WATaskBillFourItem";
      }
      cell = [[[NSBundle mainBundle] loadNibNamed:nibName  owner:self options:nil] lastObject];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    UILabel *aLable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLITEM_LABLE1_TAG];
    aLable1.text = [[NSString stringWithFormat:@"%i",indexPath.row +1]stringByAppendingString:@"."];
    [self changeTextFontAndColorWithItem:1 forLabel:aLable1];
    if (itemCount > 0)
    {
      UILabel *aLable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLITEM_LABLE2_TAG];
      aLable2.text = [[object objectAtIndex:0] objectForKey:@"value"];
      [self changeTextFontAndColorWithItem:1 forLabel:aLable2 andAllItemNum:itemCount];
    }
    
    if (itemCount > 1)
    {
      UILabel *aLable3 = (UILabel *)[cell viewWithTag:WA_TASK_BILLITEM_LABLE3_TAG];
      aLable3.text = [[object objectAtIndex:1] objectForKey:@"value"];
      if (itemCount>2)
      {
        [self changeTextFontAndColorWithItem:0 forLabel:aLable3 andAllItemNum:itemCount];
      }
      else
      {
       [self changeTextFontAndColorWithItem:2 forLabel:aLable3 andAllItemNum:itemCount];
      }
      
    }
    
    if (itemCount > 2)
    {
      UILabel *aLable4 = (UILabel *)[cell viewWithTag:WA_TASK_BILLITEM_LABLE4_TAG];
      if ([[[object objectAtIndex:2] objectForKey:@"value"]isKindOfClass:[NSString class]])
      {
        aLable4.text = [[object objectAtIndex:2] objectForKey:@"value"];
      }
      [self changeTextFontAndColorWithItem:2 forLabel:aLable4 andAllItemNum:itemCount];
    }
    
    if (itemCount > 3)
    {
      UILabel *aLable5 = (UILabel *)[cell viewWithTag:WA_TASK_BILLITEM_LABLE5_TAG];
      aLable5.text = [[object objectAtIndex:3] objectForKey:@"value"];
      [self changeTextFontAndColorWithItem:2 forLabel:aLable5 andAllItemNum:itemCount];
    }
    
  }
  
  //显示流程历史与附件
  else
  {
    static NSString *CellIdentifier2 = @"TaskBillHeaderCellForMainBody";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
    if (cell == nil)
    {
      cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:CellIdentifier2] ;
      cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = [iSectiontitles objectAtIndex:indexPath.row] ;
    [self changeTextFontAndColorWithItem:1 forLabel:cell.textLabel];
  }
  cell.backgroundColor = WA_TASK_COLOR_253;
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

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == [self numberOfSectionsInTableView:tableView] -2)
  {
    id object = [[iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row]objectForKey:@"item"];
    if ([object count] >0 )
    {
      return [self heightForRow:[object count]];
    }
    else
    {
      return 44;
    }
  }
  return 44;
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
    else if((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent])||  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint]))
    {
      headerHeight = 24;
    }
    else
    {
      headerHeight = 24;
    }
    return headerHeight;
  }
  
  else
  {
    headerHeight = 24.00f;
  }
  
  return headerHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  if(section == 0 && ((iFeedVieVO.iReminderContent && ![@"" isEqualToString:iFeedVieVO.iReminderContent])||  (iFeedVieVO.iTaskAcListHint && ![@"" isEqualToString:iFeedVieVO.iTaskAcListHint])))
  {
    
    return [ReminderAndTipsHeadViewBuilder getHeadViewWithReminder:iFeedVieVO.iReminderContent WithTips:iFeedVieVO.iTaskAcListHint];
  }
  UIFont *font = [self headerFont];
  
  if (section == [self numberOfSectionsInTableView:tableView] -2)
  {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 24)];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, 288, 24)];
    NSString *totalline = NSLocalizedStringFromTable(@"totalline", @"btarget_task", nil);
    NSInteger numOfRows = [iFeedVieVO.iTaskBillBodyArray count];
    lable.text = [NSString stringWithFormat:@"%@:%ld",totalline, (long)numOfRows];
    lable.backgroundColor = [UIColor clearColor];
    lable.font = font;
    lable.textColor = [self headerColor];
    [headerView addSubview:lable];

    return headerView;
  }
  else if(section ==  [self numberOfSectionsInTableView:tableView] -1)
  {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 24)];
    if ([iFeedVieVO.iTaskBillBodyCount intValue] > 50)
    {
      UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(16,0, 320, 24)];
      NSString *toomuchtask = NSLocalizedStringFromTable(@"toomuchtask",@"btarget_task", nil);
      lable.text = toomuchtask;
      lable.font = font;
      lable.textColor = [self headerColor];
      lable.backgroundColor = [UIColor clearColor];
      [headerView addSubview:lable];

    }
    return headerView;
  }
  else
  {
    return nil;
  }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == [self numberOfSectionsInTableView:tableView] - 2)
  {
    NSArray *aArray = [[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row]objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"] ;
    CWATaskListRowViewController *aTaskRowViewController = [[CWATaskListRowViewController alloc] initWithNibName:@"WATaskListRowViewController"
                                                                                                          bundle:nil];
    aTaskRowViewController.iDataArray = aArray;
    
      UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
      [navController pushViewController:aTaskRowViewController animated:YES];
  }
  else if(indexPath.section == 1)
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
//      if (downFileMaxSize < attachmentSize)
//      {
//        NSString *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"btarget_task", nil);
//        NSString *openinpc = NSLocalizedStringFromTable(@"openinpc", @"btarget_task", nil);
//        NSString *alertTitle = [NSString stringWithFormat:@"%@%iKB,%@",attachmentSizeOver,downFileMaxSize,openinpc];
//        UIAlertView *alert =[[UIAlertView alloc] initWithTitle:alertTitle
//                                                       message:nil
//                                                      delegate:self
//                                             cancelButtonTitle:NSLocalizedStringFromTable(@"ok",@"btarget_task",nil)
//                                             otherButtonTitles:nil];
//        [alert show];
//        return;
//      }
      
      
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
                                   withFileDirectory:WA_TASK_ATTACHMENT_DIRECTORY
                                    withComplementID:@"A0A007"
                                     withServiceCode:iFeedVieVO.  iServiceCode
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
  
  [tableView deselectRowAtIndexPath:indexPath animated:NO];
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
  }else if([aFileType isEqualToString:@"ppt"])
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
#pragma mark - UIScrollViewDelegate delegate

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_DETAILTABLE_BEGING_SCEOLL object:nil];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
  [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_DETAILTABLE_END_SCEOLL object:nil];
}
-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
}
@end
