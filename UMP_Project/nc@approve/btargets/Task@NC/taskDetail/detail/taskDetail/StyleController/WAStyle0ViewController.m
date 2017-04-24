/*!
 @header WAStyle0ViewController.m
 @abstract style0 样式只有content和只有表头的样式
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import "WAStyle0ViewController.h"
#import "WAStyleDef.h"
#import "WATaskMacro.h"
#import "AppDelegate.h"
#import "WACommonInfoVO.h"
#import "WASpinnerView.h"
#import "WAIosVersionAdaptor.h"

@interface CWAStyle0ViewController ()

@end

@implementation CWAStyle0ViewController
@synthesize iFeedVieVO;

- (id)initWithStyle:(UITableViewStyle)style 
{
    self = [super initWithStyle:style];
    if (self) 
    {
        
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
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 3;
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
    if (iFeedVieVO.iIsHaveTableBody) 
    {
      numOfRows = [iFeedVieVO.iTaskBillBodyArray count];
    }
    else 
    {
      numOfRows = 0;
    }
  }
  else if (section == 2)
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
    [self changeTextFontAndColorWithItem:0 forLabel:lable1];
    UILabel *lable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLHEADER_LABLE2_TAG];
    NSString *aString_2 = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
    lable2.text = aString_2;
    [self changeTextFontAndColorWithItem:1 forLabel:lable2];
  }
  
  if (indexPath.section == 1) 
  {
    CellIdentifier = @"TaskBillContent";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillContent"  owner:self options:nil] objectAtIndex:0];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UILabel *lable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLCONTENT_LABLE1_TAG];
    lable1.text = [iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row];
    [self changeTextFontAndColorWithItem:1 forLabel:lable1];
  }
  
  if (indexPath.section == 2) 
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
    [self changeTextFontAndColorWithItem:1 forLabel:aLable1];
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

  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 2) 
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
    
//    //开始下载附件
//    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
    NSString *fileName = [attachmentDic  objectForKey:@"filename"];
    NSString *fileType = [attachmentDic objectForKey:@"filetype"];
  
  
    [iAttachmentController attchDownloadWithFileID:[attachmentDic objectForKey:@"fileid"]
                                      withFileSize:attachmentSize
                                      withFileName:fileName
                                      withFileType:fileType
                                 withFileDirectory:WA_TASK_ATTACHMENT_DIRECTORY
                                  withComplementID:@"A0A007"
                                   withServiceCode:iFeedVieVO.iServiceCode
                                    withActionType:@"getMessageAttachment"];
  }
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - 获取附件类

-(NSString *)getIconForFileType:(NSString *)aFileType
{
  NSString *iconName;
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
  }
  else if([aFileType isEqualToString:@"html"])
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
-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
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
