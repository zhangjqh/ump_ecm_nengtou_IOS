
#import "WAIosVersionAdaptor.h"
#import "WAUFTool.h"

@implementation CWAIosVersionAdaptor

static CGFloat  yOff = 20.0f;

static NSString *const WA_NAV_IC_BACK_IMG_IOS7 = @"nav_ic_bk_norm.png";
static NSString *const WA_NAV_IC_BACK_IMG_IOS6 = @"nav_btn_ic_bk_norm.png";


#define WA_EQ_FONT16 [UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]
#define WA_CV_NAVTITLE_FONT16 [UIFont fontWithName:@"STHeitiSC-Medium" size:16.0]

#define WA_YONYOU_RED_COLOE [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]

#define WA_EQ_FONT14 [UIFont fontWithName:@"HiraKakuProN-W3" size:14.0]
//适配导航栏左侧按钮
+ (void)adaptWithLeftNavBtn:(UIButton *)aNavBtn
{
  //if (WA_CURENT_OS_V >= 7.0f)
  {
    CGRect frame = aNavBtn.frame;
    frame.size.height = 44.0f;
    frame.size.width = 64.0f;
    aNavBtn.frame = frame;
    [aNavBtn setImage:[UIImage imageNamed:@"btn_back.png"]
        forState:UIControlStateNormal];
      [aNavBtn setBackgroundColor:[UIColor clearColor]];
  }
    UILabel * back = [[UILabel alloc] initWithFrame:CGRectMake(15, 7, 40, 30)];
    back.font = [UIFont fontWithName:@"STHeitiSC-Light" size:18.0];
    back.textColor = WA_YONYOU_RED_COLOE;
    back.text = @"返回";
    [aNavBtn addSubview:back];
}

+ (void)adaptWithLeftNavBtn:(UIButton *)aNavBtn noTitle:(BOOL)flag
{
    //if (WA_CURENT_OS_V >= 7.0f)
    {
        CGRect frame = aNavBtn.frame;
        frame.size.height = 44.0f;
        frame.size.width = 64.0f;
        aNavBtn.frame = frame;
        [aNavBtn setImage:[UIImage imageNamed:@"btn_back.png"]
                 forState:UIControlStateNormal];
        //    [aNavBtn setBackgroundImage:[UIImage imageNamed:@"btn_back.png"]
        //                      forState:UIControlStateNormal];
        [aNavBtn setBackgroundColor:[UIColor clearColor]];
    }
    if (flag) {
        UILabel * back = [[UILabel alloc] initWithFrame:CGRectMake(15, 7, 40, 30)];
        back.font = [UIFont fontWithName:@"STHeitiSC-Light" size:18.0];
        back.textColor = WA_YONYOU_RED_COLOE;
        back.text = @"返回";
        [aNavBtn addSubview:back];
    }

}

//适配导航栏右侧按钮
+ (void)adaptWithRightNavBtn:(UIButton *)aNavBtn
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    [aNavBtn setTitleColor:[UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
                  forState:UIControlStateNormal];
  
  
    aNavBtn.titleLabel.font = WA_EQ_FONT16;
  
    [aNavBtn setImage:nil
             forState:UIControlStateNormal];
  
    [aNavBtn setImage:nil
             forState:UIControlStateHighlighted];
  
    [aNavBtn setBackgroundImage:nil
                       forState:UIControlStateNormal];
    
    [aNavBtn setBackgroundImage:nil
                       forState:UIControlStateHighlighted];
    }
}

//适配导航控制器
+ (void)adaptWithNavBar:(UINavigationBar *)aNavBar
{
  [CWAIosVersionAdaptor adaptWithNavBar:aNavBar
                         withSpacerWidth:-8.0f];
}

//适配导航栏
+ (void)adaptWithNavBar:(UINavigationBar *)aNavBar
        withSpacerWidth:(NSInteger) aSpacerWidth
{
  NSInteger tempWidth = aSpacerWidth > 0?aSpacerWidth:8;
  aNavBar.clipsToBounds = YES;
  if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)
  {
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                WACOLOR(31, 31, 31),NSForegroundColorAttributeName,
                                WA_EQ_FONT16,UITextAttributeFont
                                ,nil];
    [aNavBar setTitleTextAttributes:attributes];
    //左侧按钮
    UIBarButtonItem *leftItem = aNavBar.topItem.leftBarButtonItem;
    if (leftItem) {
      UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
      
      negativeSpacer.width = - tempWidth;
      aNavBar.topItem.leftBarButtonItems = [NSArray arrayWithObjects:negativeSpacer, leftItem, nil];
    }
    //右侧按钮
    UIBarButtonItem *rightItem = aNavBar.topItem.rightBarButtonItem;
    if(rightItem)
    {
      UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
      negativeSpacer.width = -tempWidth;
      aNavBar.topItem.rightBarButtonItems = [NSArray arrayWithObjects: negativeSpacer,rightItem, nil];
    }
  }
  else
  {
    NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                WACOLOR(31, 31, 31), UITextAttributeTextColor,
                                [UIFont boldSystemFontOfSize:16], UITextAttributeFont,
                                [UIColor clearColor], UITextAttributeTextShadowColor,
                                [NSValue valueWithUIOffset:UIOffsetMake(0, 1)],
                                UITextAttributeTextShadowOffset
                                ,nil];
    
    
    [aNavBar setTitleTextAttributes:attributes];
    
    //ios6系统
    UILabel *alabel=[[UILabel alloc] initWithFrame:CGRectMake(80, 4, 160, 40)];
    alabel.textColor=WACOLOR(31, 31, 31);
    alabel.shadowColor=[UIColor clearColor];
    alabel.shadowOffset=CGSizeMake(0, 1);
    alabel.font=WA_CV_NAVTITLE_FONT16;
    alabel.backgroundColor=[UIColor clearColor];
    alabel.textAlignment=NSTextAlignmentCenter;
    alabel.text=aNavBar.topItem.title;
    aNavBar.topItem.titleView=alabel;
//    [aNavBar addSubview:alabel];
  }
}

//适配导航栏标题属性（字体、颜色）
+ (void)adaptWithNavBarTitleAttributes:(UINavigationBar *)aNavBar
{
  NSDictionary *attributes = [NSDictionary dictionaryWithObjectsAndKeys:
                              WACOLOR(31, 31, 31),NSForegroundColorAttributeName,
                              WA_EQ_FONT16,UITextAttributeFont
                              ,nil];
  [aNavBar setTitleTextAttributes:attributes];
}

//适配导航栏左侧按钮位置（按钮居左对齐）
+ (void)adaptNavigationItem:(UINavigationItem *)navItem withLeftBarItems:(UIBarButtonItem *)leftBarItem
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    
    negativeSpacer.width = - 16;
    navItem.leftBarButtonItems = [NSArray arrayWithObjects:negativeSpacer, leftBarItem, nil];
  }
}

//适配导航栏右侧按钮位置（按钮居右对齐）
+ (void)adaptNavigationItem:(UINavigationItem *)navItem withRightBarItems:(UIBarButtonItem *)rightBarItem
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    negativeSpacer.width = -16;
    navItem.rightBarButtonItems = [NSArray arrayWithObjects: negativeSpacer,rightBarItem, nil];
  }
}

//适配tableview底部无数据的cell分割线
+ (void)tableViewSeparatorInset:(UITableView *)aTable
{
  if ([aTable respondsToSelector:@selector(setSeparatorInset:)])
  {
    //[aTable setSeparatorInset:UIEdgeInsetsZero];
  }
}

//适配tableview，通过设置contentinset
+ (void)tableViewContentInset:(UITableView *)aTable
{
  if ([aTable respondsToSelector:@selector(setContentInset:)])
  {
    [aTable setContentInset:UIEdgeInsetsZero];
  }
}

//适配ios7下tableview顶部空白区域
+ (void)adaptIOS6HeaderBlankWithTableView:(UITableView *)aTableView
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    aTableView.contentInset = UIEdgeInsetsMake(-36, 0, 0, 0);
  }
}

//适配自动回弹
+ (void)adaptIOSAutoAdjustsScrollViewInsets:(UIViewController *)aViewController
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    if ([aViewController respondsToSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:)]) {
      [aViewController performSelector:@selector(setAutomaticallyAdjustsScrollViewInsets:) withObject:NO];
    }
  }
}

+ (CGFloat)getIOS7FirstSecton
{
  return 0.1f;
}

//为tablview添加分割线
+ (void)adaptIOS6SeperatorLineWithTableView:(UITableView *)aTableView
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    aTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
  }
}

//适配分割线 & 颜色
+ (void)adaptSeperatorLineWithTableView:(UITableView *)aTableView
{
  aTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
  aTableView.separatorColor = WACOLOR(223, 223, 223);
}

//适配ios7下view y坐标加20px
+ (void)adaptIOS6FrameWithView:(UIView *)aView
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    CGRect frame = aView.frame;
    frame.origin.y += yOff;
    aView.frame = frame;
  }
}

//适配背景色
+ (void)adaptIOS6BackgroudColorWithViewController:(UIViewController *)aViewController
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    aViewController.view.backgroundColor = [UIColor clearColor];
  }
}

//统一cell背景色、选中后的背景色
+ (void)adaptTableViewCell:(UITableViewCell *)cell
{
  cell.backgroundColor = WACOLOR(253.0f, 253.0f, 253.0f);
  cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
  cell.selectedBackgroundView.backgroundColor = WACOLOR(240.0f, 240.0f, 240.0f);
}

//适配cell
//可指定cell背景色、选中后的背景色
+ (void)adaptTableViewCell:(UITableViewCell *)cell backColor:(UIColor *)bColor selectedColor:(UIColor *)sColor
{
  cell.contentView.backgroundColor = bColor;
  cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
  cell.selectedBackgroundView.backgroundColor = sColor;
}

//适配tableview底部无数据的cell分割线
+ (void)adaptTableViewNoDataCellSeparator:(UITableView *)tableView
{
  UIView *footer =[[UIView alloc] initWithFrame:CGRectZero];
  tableView.tableFooterView = footer;
}

//适配ios7下listCache标题
+ (void)adaptListCacheTitleLabel:(UILabel *)aLabel
{
  if (WA_CURENT_OS_V >= 7.0f)
  {
    [aLabel setTextColor:WACOLOR(31, 31, 31)];
    [aLabel setFont:WA_EQ_FONT16];
    [aLabel setShadowOffset:CGSizeMake(0, 0)];
    [aLabel setShadowColor:[UIColor clearColor]];
  }
  else
  {
    [aLabel setTextColor:WACOLOR(31, 31, 31)];
    [aLabel setFont:WA_CV_NAVTITLE_FONT16];
    [aLabel setShadowOffset:CGSizeMake(0, 0)];
    [aLabel setShadowColor:[UIColor clearColor]];
  }
}

//适配ios7下listCache搜索框
+ (UISearchBar *)adaptListCacheSeachBar:(UISearchBar *)iSearchBar
{
  CGRect frame = iSearchBar.frame;
  UISearchBar *aSearchbar = [[UISearchBar alloc]initWithFrame:frame];
  [iSearchBar removeFromSuperview];
  aSearchbar.backgroundColor = [UIColor clearColor];
  //设置分割线
  aSearchbar.placeholder = NSLocalizedStringFromTable(@"searchConditionText",@"app_salesforecast",nil);
  if ([aSearchbar respondsToSelector:@selector(setSearchBarStyle:)])
  {
    //aSearchbar.searchBarStyle = UISearchBarStyleMinimal;
  }
  return aSearchbar;
}

//适配ios7、ios6下返回按钮图标(渠道拜访使用)
+ (void)adaptChannelVisitNavBackButton:(UIButton *)aButton
{
  [aButton setImage:nil
           forState:UIControlStateNormal];
  [aButton setImage:nil
   
           forState:UIControlStateHighlighted];
  if (WA_CURENT_OS_V >= 7.0f)
  {
    [aButton setBackgroundImage:[UIImage imageNamed:WA_NAV_IC_BACK_IMG_IOS7]
                       forState:UIControlStateNormal];
    [aButton setBackgroundImage:[UIImage imageNamed:WA_NAV_IC_BACK_IMG_IOS7]
                       forState:UIControlStateHighlighted];
    
  
  }
  else
  {
    [aButton setBackgroundImage:[UIImage imageNamed:WA_NAV_IC_BACK_IMG_IOS6]
                       forState:UIControlStateNormal];
    [aButton setBackgroundImage:[UIImage imageNamed:WA_NAV_IC_BACK_IMG_IOS6]
                       forState:UIControlStateHighlighted];
  }
}

//适配ios6图片背景色
+ (void)adaptIOS6TableViewBackColor:(UITableView *)aTableView
{
  if (WA_CURENT_OS_V < 7.0f)
  {
    aTableView.opaque = NO;
    aTableView.backgroundView = nil;
  }
}
+ (void)adaptIOS6SearchBar:(UISearchBar *)aSearchBar
{
  if (WA_CURENT_OS_V < 7.0f)
  {
    aSearchBar.backgroundColor = [UIColor whiteColor];
    aSearchBar.tintColor = [UIColor whiteColor];
  }
}

//适配tableview的sectionheader视图（给定背景图、plan样式适用
+ (UIView *)adaptTableViewSectionHeaderWithTitle:(NSString *)aTitle
{
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 19.0f)];
  //UIImageView *backView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cell_header_bg_plain"]];
  //[view addSubview:backView];
    //view.backgroundColor = [UIColor lightGrayColor];
  view.backgroundColor = WACOLOR(240.0f, 240.0f, 240.0f);
  UILabel *grpupnameLabel = [[UILabel alloc] initWithFrame:CGRectMake(16.00f, 1.0f, 288.0f, 19.0f)];
  grpupnameLabel.text = aTitle?aTitle:@"";
  [grpupnameLabel setBackgroundColor:[UIColor clearColor]];
  if (WA_CURENT_OS_V < 7.0) {
    grpupnameLabel.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:9.0];
  }
  else
  {
    grpupnameLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:9.0];
  }
  grpupnameLabel.textColor = [UIColor grayColor];
  [view addSubview:grpupnameLabel];
  return view;
}

//适配tableview的sectionheader视图（group样式适用）tableheader 为nil
+ (UIView *)adaptTableViewGroupSectionHeaderWithNilTitle:(NSString *)aTitle
{
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 16.0f)];
  UILabel *grpupnameLabel = [[UILabel alloc] initWithFrame:CGRectMake(16.00f, 6.00f, 288.0f, 16.0f)];
  grpupnameLabel.text = aTitle?aTitle:@"";
  [grpupnameLabel setBackgroundColor:[UIColor clearColor]];
  if (WA_CURENT_OS_V < 7.0) {
    grpupnameLabel.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:12.0];
  }
  else
  {
    grpupnameLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:12.0];
  }
  grpupnameLabel.textColor = WACOLOR(104.0f, 143.0f, 223.0f);
  [view addSubview:grpupnameLabel];
  return view;
}

//适配tableview的sectionheader视图（group样式适用）
+ (UIView *)adaptTableViewGroupSectionHeaderWithTitle:(NSString *)aTitle
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 24.0f)];
    UILabel *grpupnameLabel = [[UILabel alloc] initWithFrame:CGRectMake(16.00f, 6.00f, 288.0f, 12.0f)];
    grpupnameLabel.text = aTitle?aTitle:@"";
    [grpupnameLabel setBackgroundColor:[UIColor clearColor]];
    if (WA_CURENT_OS_V < 7.0) {
        grpupnameLabel.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:12.0];
    }
    else
    {
        grpupnameLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:12.0];
    }
    grpupnameLabel.textColor = [UIColor grayColor];
    [view addSubview:grpupnameLabel];
    return view;
}

@end
