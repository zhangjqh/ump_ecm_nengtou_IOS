/*!
 @header CWAStyle1ViewController.m
 @abstract style1 样式《data(row(item))》
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import "WAStyle4ViewController.h"
#import "WATaskMacro.h"
#import "AppDelegate.h"
#import "WACommonInfoVO.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"

@interface CWAStyle4ViewController ()

@end

@implementation CWAStyle4ViewController
@synthesize iFeedVieVO;
@synthesize iURL;

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
  int numberOfSections = 1;
  if(iFeedVieVO.iIsHaveAttachment)
  {
    numberOfSections += 1;
  }
  return numberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRows = 0;
  if(section == 0)
  {
    numOfRows = 1;
  }
  else if (section == 1)
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = nil;
  static NSString *CellIdentifier = nil;
  if (indexPath.section == 0) 
  {
    static NSString *CellIdentifier2  = @"webview";
    cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2];
    if (cell == nil)
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WAWebTableViewCell"   owner:self options:nil] lastObject];
    }
    ((CWAWebTableViewCell *)cell).iURL = self.iURL;
  }
  else if (indexPath.section == 1)
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
  UIView *bgview = [[UIView alloc]initWithFrame:cell.frame];
  bgview.backgroundColor = WACOLOR(240, 240, 240);
  cell.selectedBackgroundView = bgview;
  return cell;

}

#pragma mark - Table view delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if(indexPath.section == 0)
  {
    return 400.0f;
  }
  return 44;
}

#pragma mark -
#pragma mark - tableviewHeadler 方法

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  return 24.0f;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 1)
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
    
  
    NSString *fileName = [attachmentDic  objectForKey:@"filename"];
    NSString *fileType = [attachmentDic objectForKey:@"filetype"];
 
    [iAttachmentController attchDownloadWithFileID:[attachmentDic objectForKey:@"fileid"]
                                      withFileSize: attachmentSize
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
  NSString *iconName = nil;
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
