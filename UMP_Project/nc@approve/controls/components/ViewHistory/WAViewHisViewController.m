/*!
 @header CWAViewHisViewController.m
 @abstract ViewHistroy界面
 @author yangrui
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import "WAViewHisViewController.h"
#import "WAViewHisMacro.h"
#import "AppDelegate.h"
#import "WALocalDataController.h"

#pragma mark ******CWAViewHistroyStyleVo******

@implementation CWAViewHistroyStyle
@synthesize iHaveTitleBar;
@synthesize iHaveLeftButton;
@synthesize iHaveRightButton;
@synthesize iHaveTitleText;
@synthesize iHaveBottomArea;

//searchViewStyleVo的初始化
-(id)init
{
    self = [super init];
    if (self)
    {
        self.iHaveTitleBar     = YES;//默认显示
        self.iHaveLeftButton   = YES;//默认显示
        self.iHaveRightButton  = YES;//默认显示
        self.iHaveTitleText    = YES;//默认显示
        self.iHaveBottomArea   = YES;//默认显示
    }
    return self;
}

-(id)initWithStyle:(CWAViewHistroyStyle*)aStyle
{
    self = [self init];
    if (self)
    {
        self.iHaveTitleBar    = aStyle.iHaveTitleBar;
        self.iHaveLeftButton  = aStyle.iHaveLeftButton;
        self.iHaveRightButton = aStyle.iHaveRightButton;
        self.iHaveTitleText   = aStyle.iHaveTitleText;
        self.iHaveBottomArea  = aStyle.iHaveBottomArea;
    }
    return self;
}

@end


@interface CWAViewHisViewController ()

/*!
@property
@abstract tableview
*/
@property(nonatomic,retain)UITableView * iHistoryTableView;

/*!
 @property
 @abstract 界面样式 
 */
@property(nonatomic,retain)CWAViewHistroyStyle * iViewStyle;

/*!
 @property
 @abstract 空数据
 */
@property(nonatomic,retain)UIImageView * iEmptyBg; 

/*!
 @property
 @abstract 空数据
 */
@property(nonatomic,retain)UIImage * iLeftBgImg;

/*!
 @property
 @abstract 空数据
 */
@property(nonatomic,retain)UIImage * iRightBgImg;

/*!
 @property
 @abstract 设置界面样式
 */
-(void)setViewStyle:(CWAViewHistroyStyle*)aStyle;

@end

@implementation CWAViewHisViewController

@synthesize iViewStyle;
@synthesize iHistoryTableView;
@synthesize iEmptyBg;
@synthesize iMWAViewHistoryDelegate;
@synthesize iLeftButton;       
@synthesize iRightButton;
@synthesize iTitle;
@synthesize iLeftBgImg;
@synthesize iRightBgImg;
@synthesize iLeftNavBtTitle;
@synthesize iRightNavBtTitle;

//初始化
-(id)init:(CWAViewHistroyStyle*)aStyle
{
    self = self = [super initWithNibName:@"WAViewHisViewController" bundle:nil];
    if (self)
    {
        self.iViewStyle = aStyle;
    }
    return self;
}

//viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setViewStyle:self.iViewStyle];
    [iTitle setText:NSLocalizedStringFromTable(@"viewhistory_title", @"btargets_viewHistory", nil)];
}

//设置界面样式
-(void)setViewStyle:(CWAViewHistroyStyle*)aStyle
{
    //右边按钮
    if (aStyle.iHaveRightButton)
    {
        self.iRightButton.hidden = NO;
        [self setRightButtonImage:self.iRightBgImg];
    }
    else 
    {
        self.iRightButton.hidden = YES;
    }
    
    //左边按钮
    if (aStyle.iHaveLeftButton)
    {
        self.iLeftButton.hidden  = NO;
        [self setLeftButtonImage:self.iLeftBgImg];
    }
    else 
    {
        self.iLeftButton.hidden = YES;
    }
}

//设置左边按钮背景(内部调用)
-(void)setLeftButtonImage:(UIImage*)aImg
{
    UIImage * leftBtBg = self.iLeftBgImg;
    CGSize imgSize = leftBtBg.size;
    CGRect leftBtFrame = self.iLeftButton.frame;
    leftBtFrame.size.width = imgSize.width;
    leftBtFrame.size.height= imgSize.height;
    //调整在titlebar上的位置
    //上下居中
    leftBtFrame.origin.y = (44 - leftBtFrame.size.height)/2.0f; 
    self.iLeftButton.frame = leftBtFrame;
    
    [self.iLeftButton setBackgroundImage:leftBtBg forState:UIControlStateNormal];
}

//设置nav上的左侧按钮背景(外部调用)
-(void)setNavLeftBtBg:(UIImage*)aNavLeftBtImg
{
    if ([aNavLeftBtImg isKindOfClass:[UIImage class]])
    {
        self.iLeftBgImg = aNavLeftBtImg;
        [self setLeftButtonImage:aNavLeftBtImg];
    }
}

//设置leftbutton title
-(void)setNavLeftBtTitle:(NSString*)aNavLeftTitle
{
    if ([aNavLeftTitle isKindOfClass:[NSString class]])
    {
        NSString * leftBtTitle = self.iLeftNavBtTitle;
        self.iLeftNavBtTitle = leftBtTitle;
        [self.iLeftButton setTitle:leftBtTitle forState:UIControlStateNormal];
    }
}

//设置nav上的右侧按钮背景
-(void)setNavRightBtBg:(UIImage*)aNavRightBtBg
{
    if ([aNavRightBtBg isKindOfClass:[UIImage class]])
    {
        self.iRightBgImg = aNavRightBtBg;
        [self setRightButtonImage:aNavRightBtBg];
    }
}

//设置navrightbutton title
-(void)setNavRightBtTitle:(NSString*)aNavRightBtTitle
{
    if ([aNavRightBtTitle isKindOfClass:[NSString class]])
    {
        self.iRightNavBtTitle = aNavRightBtTitle;
        [self.iRightButton setTitle:aNavRightBtTitle forState:UIControlStateNormal];
    }
}

//根据奇偶数设置cell背景
-(void)setOddEvenCellBg:(UITableViewCell*)aCell 
          WithIndexPath:(NSIndexPath*)aIndexPath
{
    UIColor * color = WA_SEARCH_COLOR;
    [aCell setBackgroundColor:color];
    UIImageView * cellbg = nil;
    if ((aIndexPath.row +1)%2== 0) 
    {
        cellbg = [[UIImageView alloc] 
                  initWithImage:[UIImage imageNamed:WA_SEARCH_CELLIMGNOTODD]]; 
        aCell.backgroundView = cellbg;
    }
    else 
    {
        cellbg = [[UIImageView alloc] 
                  initWithImage:[UIImage imageNamed:WA_SEARCH_CELLIMGODD]];
        aCell.backgroundView = cellbg;
    }
}

//设置右边按钮背景(内部调用)
-(void)setRightButtonImage:(UIImage*)aImg
{
    UIImage * imagebg = aImg;
    CGSize  imgSize = imagebg.size;
    CGRect  rightBgFrame = self.iRightButton.frame;
    //x方向，和右侧屏幕的距离
    int xdiffer = WA_SCREEN_WIDTH - (rightBgFrame.origin.x + rightBgFrame.size.width);
    
    rightBgFrame.size.width = imgSize.width;
    rightBgFrame.size.height= imgSize.height;
    
    //x可能需要的调整
    rightBgFrame.origin.x= WA_SCREEN_WIDTH - xdiffer - rightBgFrame.size.width;
    rightBgFrame.origin.y= (44 - rightBgFrame.size.height)/2.0f;
    self.iRightButton.frame = rightBgFrame;
    [self.iRightButton setBackgroundImage:imagebg 
                                    forState:UIControlStateNormal];
}


//ViewWillAppear
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //刷新页面
    [[CWALocalDataController getLocalDataController] initDataFromFile];
    //根据历史记录的数目决定显示列表，还是显示空界面
    int intHistoryCount = 
    [[CWALocalDataController getLocalDataController].iRecentContactArray count];
    if (intHistoryCount == 0)
    {
        //显示空页面
        self.iEmptyBg.hidden = NO;
    }
    else 
    {
        //显示历史记录列表
        self.iEmptyBg.hidden = YES;
    }
    [self.iHistoryTableView reloadData]; 
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

#pragma mark - tableview
//返回section
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
	return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{	
    NSInteger numofRow = 1;
    numofRow = [[CWALocalDataController getLocalDataController].iRecentContactArray count];
    return  numofRow;
}

//cell的显示
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //设置复用id
    UITableViewCell *cell = nil;
    cell = [self.iMWAViewHistoryDelegate setCell:tableView cellForRowAtIndexPath:indexPath];
    return cell;
}


//点击cell的事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.iMWAViewHistoryDelegate 
         respondsToSelector:@selector(selectCell:didSelectRowAtIndexPath:)])
    {
        [self.iMWAViewHistoryDelegate selectCell:tableView didSelectRowAtIndexPath:indexPath];
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //返回cell的高度
    CGFloat cellHeight = 0;
    
    //如果是子类初始化，那么由子类自己初始化高度，如果子类没有实现，默认44
    if ([self.iMWAViewHistoryDelegate 
         respondsToSelector:@selector(setCellHeight:heightForRowAtIndexPath:)])
    {
        cellHeight = [self.iMWAViewHistoryDelegate setCellHeight:tableView
                                       heightForRowAtIndexPath:indexPath];
    }
    else 
    {
        cellHeight = 44;
    }
    
    return cellHeight;
}

#pragma mark 其他一些处理
//左边按钮点击事件，
-(IBAction)leftBtClick:(id)sender
{}

//右边按钮点击事件
-(IBAction)rightBtClick:(id)sender
{}

@end
