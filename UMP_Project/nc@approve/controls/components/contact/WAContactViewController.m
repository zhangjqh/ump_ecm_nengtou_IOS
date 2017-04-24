/*!
 @header	ContactViewController.h
 @abstract	联系人componet
 @discussion	
 @author	rui.yang 
 @copyright ufida	
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import "WAContactViewController.h"
#import "WAContactUtil.h"
#import "WAContactDetailVO.h"
#import "WAContactCell.h"
#import "WAContactBaseDef.h"
#import "WAIosVersionAdaptor.h"

@interface CWAContactViewController()

/*!
 @method
 @abstract 设置bottomview
 */
-(void)setBottomBar;

/*!
 @method
 @abstract 设置navigationbar背景
 */
-(void)setNavBarBg;

/*!
 @method
 @abstract 返回上一级 
 @result void
 */
-(IBAction)backAction:(id)sender;

/*!
 @method
 @abstract 添加到通讯录
 */
-(IBAction)addToAddressBook:(id)sender;

/*!
 @method
 @abstract 转发名片
 */
-(IBAction)sendToOther:(id)sender;

@end

@implementation CWAContactViewController
@synthesize contactVO;
@synthesize iIsDisplayToolBar;
static NSString *TASK_HISTORY__NAV_BD_IMAGE_IOS7 = @"nav.png";
//初始化
-(id)init
{
  self = [super initWithNibName:@"WAContactViewController" bundle:nil];
  if (self) 
  {
    iContactDetailController = [[CWAContactsDetailController alloc]init];
    iContactUtil = [[WAContactUtil alloc] init];
  }
  return self;
}




- (void)viewDidLoad
{
  [super viewDidLoad];
  
  //设置屏幕screen
  iContactTableFrame = WA_CONTACT_TABLEVIEW_CGRECT;
  
  //此处这样设置背景色，是因为xcode4.5下，才能生效。否则，4.5下，背景色不会变化。
  //[iTheTableView.backgroundView setAlpha:0];
  
  //如果没有数据显示无数据界面
  if (!contactVO.iTitle && (!contactVO.iDetailArray || [contactVO.iDetailArray count] == 0)) 
  {
    iNoDataImageView.hidden = NO;
  }
  else 
  {
    iNoDataImageView.hidden = YES;
  }
  
  //设置底部bar
  [self setBottomBar];
  
  //设置navigationbar背景
  [self setNavBarBg];
  self.view.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1.0f];
  [iTheTableView setBackgroundColor:[UIColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1.0f]];
  [CWAIosVersionAdaptor  adaptSeperatorLineWithTableView:iTheTableView];
  
}

-(void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
  CGRect screenFrame = self.view.frame;
  
  //重置tableframe
  CGSize contactSize   = screenFrame.size;
  contactSize.height  -= iBottomFrame.size.height;
  
  //要减去导航条的高度
  CGRect navFrame = WA_CONTACT_NAV_CGRECT;
  contactSize.height  -= navFrame.size.height;
  iContactTableFrame.size = contactSize;
  iTheTableView.frame = iContactTableFrame;
//  iTheTableView.backgroundColor = [UIColor clearColor];
  
  self.navigationController.navigationBarHidden = YES;
  [nbar.topItem setTitle:contactVO.iNavTitle];
  [self setContactStyle];
  
  //初始化headview
  if (iHeadView == nil)
  {
    TWAContactHeadType aHeadType = EContactHeadNone;
    switch (iContactViewStyle)
    {
      case EContactOnlyName:
      {
        aHeadType = EContactHeadName;
      }
        break;
      case EContactCompany:
      {
        aHeadType = EContactHeadComp;
      }
        break;
      default:
        break;
    }
    iHeadView = [[CWAContactHeadVC alloc] init:aHeadType];
  }
}

- (void)viewDidUnload
{
  [super viewDidUnload];
  self.contactVO = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)backAction:(id)sender;
{
  [self.navigationController popViewControllerAnimated:YES];
}

//设置navigationbar title
- (void)setTitle:(NSString *)title
{
  [nbar.topItem setTitle:contactVO.iNavTitle];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1+[contactVO.iDynamicArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSInteger numOfRow = 0;
  if (section == 0) 
  {
    numOfRow = contactVO.iDetailArray.count;
  }
  else 
  {
    numOfRow = [self tableView:tableView setContactNumberOfRowsInSection:section];
  }
  return numOfRow;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  CGFloat headerHight = 8;
  if (section == 0) 
  {
    switch (iContactViewStyle) 
    {
      case EContactNone:
        break;
      case EContactCompany:
        headerHight = 102;
        break;
      case EContactOnlyName:
        headerHight = 80;
        break;
      default:
        break;
    }
  }
  else 
  {
    //子类可以实现这个函数，以重置其余的section
    headerHight = [self tableView:tableView 
setContactHeightForHeaderInSection:section];
  }
  return headerHight;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 0) 
  {
    NSString *CellIdentifier = @"CustomCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
    {
      cell = [[[NSBundle mainBundle] loadNibNamed:@"WAContactCell"
                                            owner:nil options:nil] lastObject];
    }
    cell.backgroundColor = [UIColor whiteColor];
    
    CWAContactDetailVO *object = [contactVO.iDetailArray objectAtIndex:indexPath.row];
    NSString * numberValue = object.iNumberValue;
    NSString * numberName  = 
    [NSString stringWithFormat:@"%@%@",object.iNumberName,@":"];
    
    [((CWAContactCell*)cell).iContactName  setText:numberName];
    [((CWAContactCell*)cell).iContactValue setText:numberValue];
    
    if ([object.isMain isEqualToString:@"Y"]) 
    {
      UIView *view = ((CWAContactCell*)cell).iContactIcon;
      view.hidden = NO;
    }
    else 
    {
      UIView *view = ((CWAContactCell*)cell).iContactIcon;
      view.hidden = YES;
    }
    
    //审批历史IOS7UE适配
    //单元格最后的小图标
//    if ([object.iFlag isEqualToString:WA_CONTACTBASE_MOBILE])//手机
//    {
//      UIImage * mobileICon = [UIImage imageNamed:NSLocalizedStringFromTable(@"mobileimage", @"component_contact",nil)];
//      [((CWAContactCell*)cell).iContactMobileIcon setImage:mobileICon];
//    }
//    else if ([object.iFlag isEqualToString:WA_CONTACTBASE_PHONE] 
//             || [object.iFlag isEqualToString:WA_CONTACTBASE_HMPHONE] 
//             || [object.iFlag isEqualToString:WA_CONTACTBASE_INPHONE])//座机
//    {
//      UIImage * mobileICon = [UIImage imageNamed:NSLocalizedStringFromTable(@"telimage", @"component_contact",nil)];
//      [((CWAContactCell*)cell).iContactMobileIcon setImage:mobileICon];
//    }
//    else if ([object.iFlag isEqualToString:WA_CONTACTBASE_EMAIL])//邮件
//    {
//      UIImage * mobileICon = [UIImage imageNamed:NSLocalizedStringFromTable(@"emailimage", @"component_contact",nil)];
//      [((CWAContactCell*)cell).iContactMobileIcon setImage:mobileICon];
//    }
    
    //判断是否可以响应点击
    if (numberValue && ![numberValue isEqualToString:@""]
        && ![numberValue isEqualToString:@"空"] )
    {
      cell.userInteractionEnabled = YES;
    }
    else
    {
      cell.userInteractionEnabled = NO;
    }
    
    if ([object.iFlag isEqualToString:@""])
    {
      cell.userInteractionEnabled = NO;
    }
    [CWAIosVersionAdaptor adaptTableViewCell:cell];
    
    return cell;
    
  }
  else 
  {
    UITableViewCell *cell = [self tableView:tableView setContactcellForRowAtIndexPath:indexPath];
    return cell;
  }
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  UIView *headerView = nil;
  if (section == 0) 
  {
    switch (iContactViewStyle) 
    {
      case EContactNone:
        break;
      case EContactCompany:
        headerView = [self setCompanyLinkManHeader];
        break;
      case EContactOnlyName:
        headerView = [self setNameLinkManHeader];
        break;
      default:
        break;
    }
  }
  else 
  {
    headerView = [self tableView:tableView setContactViewForHeaderInSection:section];
  }
  return headerView;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.section == 0) 
  {
    UIActionSheet *actionSheet = nil;
    iIndex = indexPath.row;
    CWAContactDetailVO *detail = [contactVO.iDetailArray objectAtIndex:iIndex];
    
    if ([detail.iFlag isEqualToString:WA_CONTACTBASE_MOBILE])//手机
    {
      actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) 
                                  destructiveButtonTitle:nil
                                       otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),NSLocalizedStringFromTable(@"sms", @"component_contact",nil),nil];
      
    }
    else if ([detail.iFlag isEqualToString:WA_CONTACTBASE_PHONE])//办公电话
    {
      actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                delegate:self 
                                       cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) 
                                  destructiveButtonTitle:nil 
                                       otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),nil];
    }
    else if ([detail.iFlag isEqualToString:WA_CONTACTBASE_HMPHONE])//宅电
    {
      actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                delegate:self 
                                       cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) 
                                  destructiveButtonTitle:nil 
                                       otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),nil];
    }
    else if([detail.iFlag isEqualToString:WA_CONTACTBASE_EMAIL])//邮件
    {
      actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                delegate:self
                                       cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) 
                                  destructiveButtonTitle:nil 
                                       otherButtonTitles:NSLocalizedStringFromTable(@"email", @"component_contact",nil),nil];
    }
    else if([detail.iFlag isEqualToString:WA_CONTACTBASE_INPHONE])//内线电话
    {
      actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                                delegate:self 
                                       cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) 
                                  destructiveButtonTitle:nil 
                                       otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),nil];
    }
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    actionSheet.destructiveButtonIndex = 0;	
    [actionSheet showInView:[self.view window]];
    [iTheTableView deselectRowAtIndexPath:indexPath animated:YES];
  }
  else 
  {
    [self contactTableView:tableView didSelectRowAtIndexPath:indexPath];
  }
}
#pragma mark - UIActionSheetDelegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
	// the user clicked one of the OK/Cancel buttons
  CWAContactDetailVO *detail = [contactVO.iDetailArray objectAtIndex:iIndex];
  if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil)])
  {
    
    //打电话
    [WAContactUtil contact:detail.iNumberValue flag:0];
    
  }
  if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"sms", @"component_contact",nil)]) 
  {
    //发短信
    [iContactUtil sendSMS:detail.iNumberValue content:@"" target:self];
  }
  if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"email", @"component_contact",nil)])
  {
    //发邮件
    NSArray *mailList = [NSArray arrayWithObjects:detail.iNumberValue, nil];
    [iContactUtil sendEmail:mailList ccRecipients:nil bccRecipients:nil 
                    subject:detail.iSubject messageBody:nil target:self];
  }
}

-  (void)setContactStyle
{
  if (!contactVO.iTitle && !contactVO.iImage) 
  {
    iContactViewStyle = EContactNone;
  }
  else if (contactVO.iTitle && !contactVO.iDept && !contactVO.iJob && !contactVO.iCorp) 
  {
    iContactViewStyle = EContactOnlyName;
  }
  else 
  {
    iContactViewStyle = EContactCompany;
  }
}

//设置只有名字的情况下header
- (UIView *)setNameLinkManHeader
{
  UIView * headView = iHeadView.view;  
  //联系人姓名
  iHeadView.iContactName.text = contactVO.iTitle;
  
  //联系人头像
  if (contactVO.iImage) 
  {
    [iHeadView.iContactHeadImg setImage:
     [UIImage imageNamed:contactVO.iImage]];
  }
  else 
  {
    [iHeadView.iContactHeadImg setImage:
     [UIImage imageNamed:NSLocalizedStringFromTable(@"titleimage", @"component_contact",nil)]];
  }    
  return headView;
}

//设置什么都情况下的header
- (UIView *)setCompanyLinkManHeader
{
  UIView * headView = iHeadView.view;  
  //联系人姓名
  iHeadView.iContactName.text = contactVO.iTitle;
  
  //联系人头像
  if (contactVO.iImage) 
  {
    [iHeadView.iContactHeadImg setImage:
     [UIImage imageNamed:contactVO.iImage]];
  }
  else 
  {
    [iHeadView.iContactHeadImg setImage:
     [UIImage imageNamed:NSLocalizedStringFromTable(@"titleimage", @"component_contact",nil)]];
  }
  
  //联系人职务
  iHeadView.iContactJob.text = contactVO.iJob;
  
  //联系人部门
  iHeadView.iContactDept.text = contactVO.iDept;
  
  //联系人公司
  iHeadView.iContactCorp.text = contactVO.iCorp;
  
  [self  setExtraView:headView];
  
  return headView;
}

//供下级使用，添加额外的view
-(void)setExtraView:(UIView*)aView
{
}

//设置bottomview
-(void)setBottomBar
{
  if (iIsDisplayToolBar) 
  {
    UIView * toolbar = iBottomView;
    toolbar.hidden = NO;
    iBottomFrame = toolbar.frame;
    
    CGRect tableFrame = iTheTableView.frame;
    tableFrame.size.height -= toolbar.frame.size.height;
    iTheTableView.frame = tableFrame;
  }
  else 
  {
    UIView *toolbar = iBottomView;
    toolbar.hidden = YES;
    iBottomFrame = CGRectMake(0, 0, 0, 0);
    CGRect tableFrame = iTheTableView.frame;
    tableFrame.size.height += toolbar.frame.size.height;
    iTheTableView.frame = tableFrame;
  }
}

//设置navigationbar背景
-(void)setNavBarBg
{
  UIImage *image = [UIImage imageNamed: NSLocalizedStringFromTable(@"image", @"component_contact",nil)];
  if ([nbar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)])
  {
  
    if(WA_CURENT_OS_V >= 7.0f)
    {
      [nbar setBackgroundImage:[UIImage imageNamed:TASK_HISTORY__NAV_BD_IMAGE_IOS7]
                        forBarMetrics:UIBarMetricsDefault];
    
      [CWAIosVersionAdaptor adaptWithLeftNavBtn:iBtn];
    }
    else
    {
    
      [nbar setBackgroundImage:[UIImage imageNamed:TASK_HISTORY__NAV_BD_IMAGE_IOS7] forBarMetrics:UIBarMetricsDefault];
      NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                  WACOLOR(31, 31, 31), UITextAttributeTextColor,
                                  [UIFont boldSystemFontOfSize:16], UITextAttributeFont,
                                  [UIColor clearColor], UITextAttributeTextShadowColor,
                                  [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
                                  UITextAttributeTextShadowOffset
                                  ,nil];


      [nbar setTitleTextAttributes:attributes];
    }

  
  }
  //当ios版本小于5.0时，不能直接设置背景图片，如果重复添加背景，可能会叠加太多图片
  else 
  {
    //初始化背景图片
    UIImageView * backImgView = [[UIImageView alloc]initWithImage:image];
    CGRect frame = nbar.frame;
    backImgView.frame = CGRectMake(0.0f, 0.0f, frame.size.width,
                                   frame.size.height); 
    //将背景图片添加到navigationbar上面                               
    [nbar addSubview:backImgView];
    [nbar sendSubviewToBack:backImgView];
  }
  if (WA_CURENT_OS_V >=7.0) {
    [CWAIosVersionAdaptor adaptWithNavBar:nbar];
  }
}


-(IBAction)addToAddressBook:(id)sender
{
  //保存至本地
  [iContactDetailController addToAddressBook:contactVO target:self];
}
-(IBAction)sendToOther:(id)sender
{
  [iContactDetailController sendToOther:contactVO target:self];
}

#pragma mark - 动态项tableviewcell 生成
- (NSInteger)tableView:(UITableView *)tableView setContactNumberOfRowsInSection:(NSInteger)section
{
  return [[contactVO.iDynamicArray objectAtIndex:section-1] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView setContactcellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = nil;
  return cell;
}

//设置header的高度
-(CGFloat)tableView:(UITableView *)tableView setContactHeightForHeaderInSection:(NSInteger)section
{
  CGFloat headerHight = 8;
  return headerHight;
}

//设置header的view
-(UIView *)tableView:(UITableView *)tableView setContactViewForHeaderInSection:(NSInteger)section
{
  UIView *headerView = nil;
  return headerView;
}

- (void)contactTableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

@end
