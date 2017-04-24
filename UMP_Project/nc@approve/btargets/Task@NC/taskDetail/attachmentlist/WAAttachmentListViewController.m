#import "WAAttachmentListViewController.h"
#import "WACommonInfoVO.h"
#import "AppDelegate.h"

//附件cell上第一个lable的tag
#define WA_TASK_BILLATTACHMENT_LABLE1_TAG 201
//附件cell上第二个lable的tag
#define WA_TASK_BILLATTACHMENT_LABLE2_TAG 202
//附件cell上第三个lable的tag
#define WA_TASK_BILLATTACHMENT_IMAGE1_TAG 203
//附件cell的上的别针imageview
#define WA_TASK_BILLATTACHMENT_IMAGE_TAG 204

@implementation CWAAttachmentListViewController




@synthesize iAttachmentList;
@synthesize iServiceCode;
@synthesize iTotalLine;


- (void)loadView
{
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.00f, 0.00f, [[UIScreen mainScreen] applicationFrame].size.width, 460.0f)];
  self.view = view;
}

- (id)initWithAttachmentList:(NSArray *)aAttachmentList
WithServiceCode:(NSString *)aServiceCode
{
    self = [super init];
    if (self)
    {
      self.iAttachmentList = aAttachmentList;
      self.iServiceCode = aServiceCode;
    }
    return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  

  iAttachmentController = [[CWAAttachmentController alloc] init];
  [iAttachmentController initElement];
  
  UINavigationBar *navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0.00f, 0.00f, [[UIScreen mainScreen] applicationFrame].size.width,44.0f)];
  
  [CWAIosVersionAdaptor adaptIOS6BackgroudColorWithViewController:self];
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:navBar];
  
  
  if ([navBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [navBar setBackgroundImage:[UIImage imageNamed:NAV_BD_IMAGE_IOS7]
                   forBarMetrics:UIBarMetricsDefault];
    }
    else
    {
      [navBar setBackgroundImage:[UIImage imageNamed:NAV_BD_IMAGE]
                   forBarMetrics:UIBarMetricsDefault];
      NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                  WACOLOR(31, 31, 31), UITextAttributeTextColor,
                                  [UIFont boldSystemFontOfSize:16], UITextAttributeFont,
                                  [UIColor clearColor], UITextAttributeTextShadowColor,
                                  [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
                                  UITextAttributeTextShadowOffset
                                  ,nil];
      [navBar setTitleTextAttributes:attributes];

    }
  }
  
  
  [CWAIosVersionAdaptor adaptWithNavBar:navBar];
  UINavigationItem *navItem = [[UINavigationItem alloc] init] ;
	navBar.items = [NSArray arrayWithObject:navItem];
//  navBar.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
  
  NSString *attachment = NSLocalizedStringFromTable(@"attachment", @"btarget_task", nil);
  navItem.title =  attachment;
  
  CGRect btnFrame = CGRectMake(0.00f, 0.00f, 51.0f, 30.0f);
  UIButton *btn = [[UIButton alloc] initWithFrame:btnFrame];
  if(WA_CURENT_OS_V >= 7.0f )
  {
    [CWAIosVersionAdaptor adaptWithLeftNavBtn:btn];
  }
  else
  {
    [btn setBackgroundImage:[UIImage imageNamed:@"nav_back_btn.png" ]
                   forState:UIControlStateNormal];
  }
 
  UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithCustomView:btn];
  [btn addTarget:self
          action:@selector(leftBtnClick)
forControlEvents:UIControlEventTouchUpInside];
  
  navItem.leftBarButtonItem= left;
  navBar.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
  [CWAIosVersionAdaptor adaptWithNavBar:navBar];
  [self.view addSubview:navBar];
  iTableView = [[UITableView alloc] initWithFrame: CGRectMake(0.00f, 44.0f, [[UIScreen mainScreen] applicationFrame].size.width, 416.0f)
                style:UITableViewStyleGrouped];
  
  [CWAIosVersionAdaptor adaptIOS6FrameWithView:iTableView];

  iTableView.delegate = self;
  
  iTableView.dataSource = self;
  iTableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;

//  [CWAIosVersionAdaptor adaptIOS6HeaderBlankWithTableView:iTableView];
  

     if ([iTableView respondsToSelector:@selector(setSeparatorInset:)]) {

        //[iTableView setSeparatorInset:UIEdgeInsetsZero];
    }
  iTableView.backgroundColor = WA_TASK_COLOR_240;
  iTableView.separatorColor = WA_TASK_COLOR_223;
    [self.view addSubview:iTableView];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    [iTableView deselectRowAtIndexPath:[iTableView indexPathForSelectedRow] animated:YES];
}

- (void)leftBtnClick
{
  UINavigationController *navController = ((AppDelegate *)[[UIApplication sharedApplication] delegate]).navigationCtl ;
  [navController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  return 24.0f;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return iTotalLine > 50?50:[iAttachmentList count] ;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
  NSString *title = nil;
  if(iTotalLine > 50)
  {
    NSString  *attachmentSizeOver = NSLocalizedStringFromTable(@"attachmentSizeOver", @"component_attachment", nil);
    NSString  *space = NSLocalizedStringFromTable(@"space", @"btarget_task", nil);
    NSString  *openinpc = NSLocalizedStringFromTable(@"openinpc", @"component_attachment", nil);
    title = [NSString stringWithFormat:@"%@%@%d,%@",attachmentSizeOver,space,50,openinpc];
  }
  return title;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"TaskBillAttachmentCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil)
  {
    cell = [[[NSBundle mainBundle] loadNibNamed:@"WATaskBillAttachment"  owner:self options:nil] lastObject];
  }
  NSDictionary *attachmentDic =  [self.iAttachmentList objectAtIndex:indexPath.row];
  
  UILabel *aLable1 = (UILabel *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_LABLE1_TAG];
  aLable1.text = [attachmentDic  objectForKey:@"filename"];
  //[aLable1 setFont:WA_TASK_FONT_HT_W3_10];
  
  UILabel *aLable2 = (UILabel *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_LABLE2_TAG];
  double size = [[attachmentDic  objectForKey:@"filesize"] doubleValue];
  if (size) {
      if (size > 999) {
          aLable2.text = [[NSString stringWithFormat:@"%.2f",size/1024] stringByAppendingString:@"MB"];
      }else{
          aLable2.text = [attachmentDic  objectForKey:@"filesize"];
      }
  }
  
  
  //  去掉附件列表第一行的左上角图片
  UIImageView *attachmentImageview = (UIImageView *)[cell viewWithTag:WA_TASK_BILLATTACHMENT_IMAGE_TAG];
    attachmentImageview.hidden = YES;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

   [CWAIosVersionAdaptor adaptTableViewCell:cell];

  return cell;
}

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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSDictionary *attachmentDic =  [self.iAttachmentList objectAtIndex:indexPath.row];
  NSInteger attachmentSize = [[attachmentDic objectForKey:@"filesize"] intValue];
  NSString *fileName = [attachmentDic  objectForKey:@"filename"];
  NSString *fileType = [attachmentDic objectForKey:@"filetype"];
  if(!fileType)
  {
   
      NSArray *fileArray = [fileName componentsSeparatedByString:@"."];
      if([fileArray count]  > 1)
      {
        fileType = [fileArray objectAtIndex:([fileArray count] - 1)];
      }
  
    
  }
  
  if(fileType)
  {
    NSString *sfiletype = [NSString stringWithFormat:@".%@",fileType];
    NSRange ranger = [fileName rangeOfString:sfiletype options:NSBackwardsSearch];
    if (ranger.location != NSNotFound)
    {
      fileName = [fileName stringByReplacingCharactersInRange:ranger withString:@""];
    }
    
  }
  iAttachmentController.isMayContinueDownload = YES;
  [iAttachmentController attchDownloadWithFileID:[attachmentDic objectForKey:@"fileid"]
                                    withFileSize:attachmentSize
                                    withFileName:fileName
                                    withFileType:fileType
                               withFileDirectory:WA_TASK_ATTACHMENT_DIRECTORY
                                withComplementID:@"A0A007"
                                 withServiceCode:iServiceCode
                                  withActionType:@"getMessageAttachment"];
  
  [iTableView deselectRowAtIndexPath:indexPath animated:YES];
  
}

@end
