/*!
 @header CWAStyle1ViewController.m
 @abstract style1 样式《data(row(item))》
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import "WAStyle1ViewController.h"
#import "WATaskMacro.h"
#import "AppDelegate.h"
#import "WACommonInfoVO.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"

@interface CWAStyle1ViewController ()

@end

@implementation CWAStyle1ViewController
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
    if ([iFeedVieVO.iTaskBillBodyArray count] > 50) 
    {
      numOfRows = 50;
    }
    else 
    {
      numOfRows = [iFeedVieVO.iTaskBillBodyArray count];
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
    id aString_2 = [[[[iFeedVieVO.iTaskBillHeaderArray objectAtIndex:indexPath.row] objectForKey:@"item"] objectAtIndex:1] objectForKey:@"value"];
    if ([aString_2 isKindOfClass:[NSString class]]) 
    {
      lable2.text = aString_2;
    }
    [self changeTextFontAndColorWithItem:1 forLabel:lable2];
  }
  
  if (indexPath.section == 1) 
  {
    id object = [[iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row]objectForKey:@"item"];
    NSInteger itemCount = [object count];
    
    //动态产出cell的标示符
    if (itemCount == 1) 
    {
      CellIdentifier = @"WATaskBillOneItem";
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
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
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
      if (itemCount > 2)
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 1) 
  {
    id object = [[iFeedVieVO.iTaskBillBodyArray objectAtIndex:indexPath.row]objectForKey:@"item"];
    if (indexPath.section == 1 && [object count] >0 )
    {
      return [self heightForRow:[object count]];
    }
  }
  return 44;
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
    lable.textColor = [self headerColor];
    lable.font = [self headerFont];
    [headerView addSubview:lable];
    return headerView;
  }
  else if(section == 2)   
  {
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 24)];
    //if ([iFeedVieVO.iTaskBillBodyArray count] > 50) 
    if ([iFeedVieVO.iTaskBillBodyCount intValue] > 50)
    {
      UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(16, 0, 320, 24)];
      NSString *toomuchtask = NSLocalizedStringFromTable(@"toomuchtask",@"btarget_task", nil);
      lable.text = toomuchtask;
      lable.textColor = [self headerColor];
      lable.font = [self headerFont];
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
    
   
    //下载附件
//    [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:NO withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];

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
