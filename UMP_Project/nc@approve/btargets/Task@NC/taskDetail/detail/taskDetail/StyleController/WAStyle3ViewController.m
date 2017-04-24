/*!
 @header CWAStyle3ViewController.m
 @abstract style3 样式《data(row(item,child))》但child小于2行
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import "WAStyle3ViewController.h"
#import "WATaskMacro.h"
#import "AppDelegate.h"
#import "WASpinnerView.h"
#import "WAIosVersionAdaptor.h"
#import "WABaseTableViewController.h"
#import "WACommonInfoVO.h"
@interface CWAStyle3ViewController ()

@end

@implementation CWAStyle3ViewController
@synthesize iFeedVieVO;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.tableView.backgroundColor = WA_TASK_TABLEVIEW_BACKGROUND_COLOR;
  
  [CWAIosVersionAdaptor adaptIOS6SeperatorLineWithTableView: self.tableView];

  iAttachmentController = [[CWAAttachmentController alloc] init];
  [iAttachmentController initElement];
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
  return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRows = 0;
  if (section == 0) 
  {
    numOfRows = [iFeedVieVO.iTaskBillHeaderArray count];
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
  else if (section == 3)
  {
    if (iFeedVieVO.iIsHaveAttachment) 
    {
      numOfRows = [iFeedVieVO.iTaskBillAttachment count];
    }
    else 
    {
      numOfRows = 0; 
    }
  }
  
  return numOfRows;
}


- (NSString *)getStringWithIndex:(NSIndexPath *)aIndex
{
	NSString *string = nil;
	if(aIndex.section == 0)
	{
	 	string = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:aIndex.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
	}
	else if(aIndex.section == 1)
	{
		NSArray * tempArray = [[[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:0] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"]
													objectAtIndex:aIndex.row] objectForKey:@"item"];
		if([tempArray count] > 1)
		{
			string = [[tempArray  objectAtIndex:1] objectForKey:@"value"];
		}
	
	}
	else if(aIndex.section == 2)
	{
		NSArray * tempArray = [[[[[[iFeedVieVO.iTaskBillBodyArray objectAtIndex:1] objectForKey:@"child"] objectAtIndex:0] objectForKey:@"row"]
													objectAtIndex:aIndex.row] objectForKey:@"item"];
		if([tempArray count] > 1)
		{
			string = [[tempArray  objectAtIndex:1] objectForKey:@"value"];
		}
	}
	return string;
	
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = nil;
  static NSString *CellIdentifier = nil;
  if (indexPath.section == 0) 
  {
    CellIdentifier = @"TaskBillHeaderCell";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillHeader"  owner:self options:nil] lastObject];  
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE1_TAG];
    NSString *aString = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:0] objectForKey:@"value"];
//    NSString *displayString = [aString stringByAppendingString:@":"];
    lable1.text = aString;
    [CWABaseTableViewController changeTextFontAndColorWithItem:0 forLabel:lable1];
    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
    lable2.text = aString_2;
    [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:lable2];

  }
  
  if (indexPath.section == 1) 
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
//    NSString *displayString = [aString stringByAppendingString:@":"];
    lable1.text = aString;
    [CWABaseTableViewController changeTextFontAndColorWithItem:0 forLabel:lable1];

    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[tempArray  objectAtIndex:1] objectForKey:@"value"];    
    lable2.text = aString_2;
    [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:lable2];

  }
  
  if (indexPath.section == 2) 
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
//    NSString *displayString = [aString stringByAppendingString:@":"];
    lable1.text = aString;
    [CWABaseTableViewController changeTextFontAndColorWithItem:0 forLabel:lable1];

    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[tempArray  objectAtIndex:1] objectForKey:@"value"];    
    lable2.text = aString_2;
    [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:lable2];

  }
  
  if (indexPath.section == 3) 
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
    [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:aLable1];

    UILabel *aLable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_LABLE2_TAG];
    aLable2.text = [attachmentDic  objectForKey:@"filesize"];
    [CWABaseTableViewController changeTextFontAndColorWithItem:1 forLabel:aLable2];
    UIImageView *aImageView = (UIImageView *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_IMAGE1_TAG];
    NSString *ImageString = [attachmentDic objectForKey:@"filetype"];
    aImageView.image = [UIImage imageNamed:[self getIconForFileType:ImageString]];
    
    UIImageView *attachmentImageview = (UIImageView *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_IMAGE_TAG];
    if (indexPath.row > 0) 
    {
      attachmentImageview.hidden = YES;
    }
  }
  
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
  
}

#pragma mark -
#pragma mark - tableviewHeadler 方法

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
 
  return 24.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  if (section == 1) 
  {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 24)];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, 288, 24)];
    NSString *totalline = NSLocalizedStringFromTable(@"totalline", @"btarget_task", nil);
    lable.text = [NSString stringWithFormat:@"%@:%@",totalline,iFeedVieVO.iTaskBillBodyCount];
    lable.backgroundColor = [UIColor clearColor];
    lable.textColor = [CWABaseTableViewController headerColor];
    lable.font = [CWABaseTableViewController headerFont];
    [headerView addSubview:lable];
    return headerView;
  }
  else 
  {
    return nil;
  }
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 3) 
  {
    NSDictionary *attachmentDic =  [iFeedVieVO.iTaskBillAttachment objectAtIndex:indexPath.row];
    CWACommonInfoVO *comInfo = [CWACommonInfoVO sharedManager];
    NSInteger downFileMaxSize = [[comInfo getAttSizeWithServiceCode:iFeedVieVO.iServiceCode] intValue];
    NSInteger attachmentSize = [[attachmentDic objectForKey:@"filesize"] intValue];
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
    
   
    //下载附件
//    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
    NSString *fileName = [attachmentDic  objectForKey:@"filename"];
    NSString *fileType = [attachmentDic objectForKey:@"filetype"];
    [iAttachmentController attchDownloadWithFileID:[attachmentDic objectForKey:@"fileid"]
                                      withFileSize:attachmentSize
                                      withFileName:fileName
                                      withFileType:fileType
                                 withFileDirectory:WA_TASK_ATTACHMENT_DIRECTORY
                                  withComplementID:@"WA00002"
                                   withServiceCode:iFeedVieVO.iServiceCode
                                    withActionType:@"getMessageAttachment"];
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
