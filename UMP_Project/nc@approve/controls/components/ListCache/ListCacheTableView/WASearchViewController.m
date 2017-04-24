/*!
 @header WASearchViewController.m
 @abstract 可用量搜索结果的viewcontroller
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import "WASearchViewController.h"
#import "AppDelegate.h"
#import <QuartzCore/QuartzCore.h>
#import "WASearchController.h"
#import "WAUFTool.h"
#pragma mark -
#pragma mark CWASearchListViewStyleVo

@implementation CWASearchListViewStyle
@synthesize iHaveTitleBar;
@synthesize iHaveLeftButton;
@synthesize iHaveRightButton;
@synthesize iHaveTitleText;
@synthesize iHaveSearchBar;
@synthesize iHaveGroupButton;   
@synthesize iHaveRedLabel;
@synthesize iHaveBottomArea;
@synthesize iIsMutipleSection;
@synthesize iIsCurViewSearch;
@synthesize iIsCancelSQuit;
@synthesize iIsFirstHistory;
@synthesize iNoDataStyle;
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
        self.iHaveSearchBar    = YES;//默认显示
        self.iHaveGroupButton  = YES;//默认显示
        self.iHaveRedLabel     = NO ;//默认不显示
        self.iHaveBottomArea   = YES;//默认显示
        self.iIsMutipleSection = NO ;//默认是单分组的形式
        self.iIsCurViewSearch  = YES;//默认是当前界面搜索
        self.iIsCancelSQuit    = NO ;//默认取消按钮不是退出界面
        self.iIsFirstHistory   = NO ;//默认不显示第一次搜索
        self.iNoDataStyle = ELCSearchNoDataOld;//默认老版本空数据页面(图片)
    }
    return self;
}

//请参照TWAListCacheSearchStyle的定义
-(id)initWithStyle:(TWAListCacheSearchStyle)aStyle;
{
    self = [super init];
    if (self)
    {
        self.iHaveTitleBar     = YES;//默认显示
        self.iHaveLeftButton   = YES;//默认显示
        self.iHaveRightButton  = YES;//默认显示
        self.iHaveTitleText    = YES;//默认显示
        self.iHaveSearchBar    = YES;//默认显示
        self.iHaveGroupButton  = YES;//默认显示
        self.iHaveRedLabel     = NO ;//默认不显示
        self.iHaveBottomArea   = YES;//默认显示
        self.iIsMutipleSection = NO ;//默认是单分组的形式
        self.iIsCurViewSearch  = YES;//默认当前界面搜索
        self.iIsCancelSQuit    = NO ;//默认取消按钮不是退出界面
        self.iIsFirstHistory   = NO ;//默认不显示第一次搜索
        self.iNoDataStyle = ELCSearchNoDataOld;  //默认老版本空数据页面(图片)
        switch (aStyle)
        {
            //ELCSearchTSGB = 0,//含有标题，searcbar，groupbutton，底部区域
            case ELCSearchTSGB:
            {
            }
                break;
            //ELCSearchTSB,     //含有标题，searcbar，底部区域
            case ELCSearchTSB:
            {
                //没有groupbutton
                self.iHaveGroupButton = NO;
            }
                break;
            //ELCSearchTSG,     //含有标题，searcbar，groupbutton
            case ELCSearchTSG:
            {
                //没有底部区域
                self.iHaveBottomArea  = NO;
            }
            default:
                break;
        }
    }
    return self;
}

-(void)setStyle:(CWASearchListViewStyle*)aStyle
{
    self.iHaveTitleBar     = aStyle.iHaveTitleBar;
    self.iHaveLeftButton   = aStyle.iHaveLeftButton;
    self.iHaveRightButton  = aStyle.iHaveRightButton;
    self.iHaveTitleText    = aStyle.iHaveTitleText;
    self.iHaveSearchBar    = aStyle.iHaveSearchBar;
    self.iHaveGroupButton  = aStyle.iHaveGroupButton;
    self.iHaveRedLabel     = aStyle.iHaveRedLabel;
    self.iHaveBottomArea   = aStyle.iHaveBottomArea;
    self.iIsMutipleSection = aStyle.iIsMutipleSection;
    self.iIsCurViewSearch  = aStyle.iIsCurViewSearch;
    self.iIsCancelSQuit    = aStyle.iIsCancelSQuit;
    self.iIsFirstHistory   = aStyle.iIsFirstHistory;
    self.iNoDataStyle = aStyle.iNoDataStyle;
}
 
-(void)dealloc
{
    [super dealloc];
}
@end

#pragma mark -
#pragma mark 列表行为控制定义
@implementation CWASearchListActionStyle
@synthesize iIsClickHistoryCache;

-(id)init
{
    self = [super init];
    if (self)
    {
        //默认为NO，表示，默认要看是否已经缓存了
        iIsClickHistoryCache = YES;
    }
    return self;
}

-(void)dealloc
{
    [super dealloc];
}
@end

#pragma mark -
#pragma mark 列表分组记录情况
@implementation CWASearchListGroupDetail
@synthesize iSectionName;
@synthesize iSectionKey;
@synthesize iSectionIndex;
@synthesize iSectionRowNum;

//初始化
-(id)init
{
    self = [super init];
    if (self)
    {
        self.iSectionName = @"";
        self.iSectionKey  = @"";
        iSectionIndex = -1;
        iSectionRowNum= 0;
    }
    return self;
}

//释放
-(void)dealloc
{
    [iSectionName release];
    [iSectionKey release];
    [super dealloc];
}

@end

#pragma mark -
#pragma mark CWASearchViewController 的分类，用于处理函数的私有控制
@interface CWASearchViewController ()
/*!
 @property
 @abstract searchviewcontroller的 controller
 */
@property(nonatomic,retain)CWASearchController * iCWASearchController;

/*!
 @property
 @abstract 标题栏的subview
 */
@property(nonatomic,retain)UIView * iTitleBarSubView;

/*!
 @property 
 @abstract  搜索结果列表
 */
@property(nonatomic,retain)CWACacheTableView * iSearchResultsTableView;

/*!
 @property
 @abstract 标题 
 @author xiaomumu
 */
@property(nonatomic,retain)UILabel* iTitle;

/*!
 @property
 @abstract 标题字符串
 */
@property(nonatomic,retain)NSString * iTitleStr;

/*!
 @property
 @abstract 标题背景
 */
@property(nonatomic,retain)UIImageView * iTitleBg;

/*!
 @property
 @abstract 标题背景图片
 */
@property(nonatomic,retain)UIImage * iTitleBgImg;

/*!
 @property
 @abstract 导航条左边按钮的标题
 */
@property(nonatomic,retain)NSString * iLeftNavBtTitle;
/*!
 @property
 @abstract 导航条左边按钮的背景
 */
@property(nonatomic,retain)UIImage * iLeftNavBtBg;

/*!
 @property
 @abstract 导航条右边按钮的标题
 */
@property(nonatomic,retain)NSString * iRightNavBtTitle;
/*!
 @property
 @abstract 导航条右边按钮的背景
 */
@property(nonatomic,retain)UIImage * iRightNavBtBg;

/*!
 @property 
 @abstract  普通列表
 */
@property(nonatomic,retain)UITableView * iNormalTableView;

/*!
 @property
 @abstract 历史记录列表
 @author
 */
@property(nonatomic,retain)NSMutableArray *iSearchConditionArray;

/*!
 @property
 @abstract groupbutton
 */
@property(nonatomic,retain)UIView * iGroupButtonView;

/*!
 @property
 @abstract 红条
 */
@property(nonatomic,retain)UIView      * iRedLabelUIView;       


/*!
 @property
 @abstract 红条
 */
@property(nonatomic,retain)UILabel     * iRedLabelUILabel;      

/*!
 @property
 @abstract 搜搜结果列表的view
 @author
 */
@property(nonatomic,retain)UIView * iSearchResultUIView;

/*!
 @property
 @abstract 普通列表的数据，不暴露给普通用户
 */
@property(nonatomic,retain)NSMutableArray * iNormalArray;

/*!
 @property
 @abstract 搜索结果，考虑再三还是不暴露给子类，以免子类操作出错，出现不可预知错误
           改为提供一个接口
 */
@property(nonatomic,retain)NSMutableArray * iSearchResultArray;

/*!
 @property
 @abstract 记录搜索结果分组情况
 */
@property(nonatomic,retain)NSMutableArray * iSearchGroupArray;

/*!
 @property
 @abstract 记录搜索结果分组情况(临时)
 */
@property(nonatomic,retain)NSMutableArray * iSearchTempGroupArray;



/*!
 @property
 @abstract 取消按钮
 */
@property(nonatomic,retain)UIButton * iSearchCancelBt;

/*!
 @property
 @abstract 底部区域
 */
@property(nonatomic,retain)UIView * iBottomAreaView;

/*!
 @property
 @abstract 底部区域，由子类生成
 */
@property(nonatomic,retain)UIView * iBottomSubView;

/*!
 @property
 @abstract groupButton的标题
 */
@property(nonatomic,retain)NSArray * iGroupButtonTitleArray;

/*!
 @property
 @abstract groupButton
 */
@property(nonatomic,retain)CWAGroupButtonView * iGroupButton;

/*!
 @property
 @abstract 没有数据页面
 */
@property(nonatomic,retain)UIImageView * iNoDataImgView;

/*!
 @mthod
 @abstract 设置界面细节标识
 */
-(void)setViewDetailFlags:(CWASearchListViewStyle*)aSearchStyle;

/*!
 @method
 @abstract 初始化相关数据
 */
-(void)initListCacheData;

/*!
 @method
 @abstract  初始化view上面的controller
 */
-(void)initViewControllers;

/*!
 @method
 @abstract  初始化normal的flags
 */
-(void)setNormalStyleFlags;

/*!
 @method
 @abstract 设置界面,根据TWASearchListStyle设置
 */
-(void)setViewStyle;

/*!
 @method
 @abstract 将titlebar的subview添加到titlebar上面
 */
-(void)addSubViewToTitleBar;

/*!
 @method
 @abstract 设置左边按钮背景
 */
-(void)setLeftButtonImage:(UIImage*)aImg;

/*!
 @method
 @abstract 设置右边按钮背景
 */
-(void)setRightButtonImage:(UIImage*)aImg;

/*!
 @method
 @abstract 设置groupbutton
 */
-(void)setGroupButtonView:(int)aIndex;

/*!
 @mehtod
 @abstract 开始搜索，没有groupbutton的开始搜索
 */
-(void)startQueryOneCondition:(NSString*)aCondition 
                 withStartPos:(int)aStartPos 
                  withPageNum:(int)aPageNum;

/*!
 @mehtod
 @abstract 增加数据,用于需要增加数据的情况
 */
-(void)addData;

/*!
 @method
 @abstract 添加cell
 */
-(void)addCells:(WAListCacheRange)aAddRange;

/*!
 @method
 @abstract 刷新tableView
 */
-(void)reloadTableView;

/*!
 @method
 @abstract 准备数据，准备将要出现的数据
 */
-(void)readyForData:(NSIndexPath*)indexpath;

/*!
 @method
 @abstract 删除数组中的一个特定位置的元素
           该方法有别于remDataAtIndex,
           该方法，并不删除位置，只是把指定位置数据置为NSNull
 */
-(BOOL)delDataAtIndex:(int)aIndex;

/*!
 @method
 @abstract 删除数组中的一个特定位置的元素
           该方法有别于delDataAtIndex,
           该方法，并不删除位置，只是把指定位置数据置为NSNull
 */
-(BOOL)remDataAtIndex:(int)aIndex;

/*!
 @method
 @abstract 从缓存中获取数据
 */
-(BOOL)getDataFromCache:(int)aIndex;

/*!
 @method
 @abstract 从网络获取一个数据
 */
-(BOOL)getDataFromNet:(int)aIndex;

#pragma mark 下面这些函数和删除有关
/*!
 @method
 @abstract 此函数取的count是，不包括被删除元素的（被置为@“”）
 */
- (NSUInteger)realSearchCount;

/*!
 @method
 @abstract 根据真实的位置，获取在数组中的位置
 */
- (NSUInteger)getSearchIndex:(int)aRealIndex;

/*!
 @method
 @abstract 根据数组的位置，获取在真实的位置
 */
- (NSUInteger)getRealSearchIndex:(int)aRealIndex;

/*!
 @method
 @abstract 此处索引位置是不包括被删除元素的位置
 */
- (id)realSearchObjectAtIndex:(NSUInteger)aObjectIndex;

#pragma mark searchController的委托
/*!
 @method
 @abstract 供上层调用
 @author xiaomumu
 */
-(void)setSearchPos;

/*!
 @method
 @abstract 是否在当前界面搜索
 */
-(BOOL)getIsCurViewSearch;

/*!
 @method
 @abstract 是否取消按钮就是退出当前搜索界面
 */
-(BOOL)getIsCancelQuit;

/*!
 @mehtod
 @abstract 获取历史记录缓冲文件名称
 */
-(NSString*)getHistoryCacheFileName;

/*!
 @method
 @abstract 开始搜索，不带页码的搜索
 */
-(void)startQueryWithCondition:(NSString*)aCondition;

/*!
 @method
 @abstract 取消搜索,以弹出搜索界面的情形
 */
-(void)cancelSearch;

#pragma mark 缓存相关的函数
/*!
 @method
 @abstract 显示历史记录
 */
-(void)showHistoryList;

/*!
 @method
 @abstract 隐藏历史记录
 */
-(void)hiddenHistoryList;

/*!
 @method
 @abstract 获取真实的位置，根据一个NSIndexPath
 @result 返回为真实的位置，如果超过了tableview的范围，则为－1
 */
-(int)countPosFromIndexPath:(NSIndexPath*)aIndexPath;

/*!
 @mthod
 @abstract 获取当前tableview的cell的数目,多个分组时计算总数
 */
-(int)countSumRowsOfTable;

/*!
 @method
 @abstract 根据一个真实的index获取在tableview中的位置
 @result 如果找到了，返回真实的位置。如果没有找到返回nil
 */
-(NSIndexPath*)getIndexPathFromTempAIndex:(int)aIndexPos;

@end

#pragma mark -
#pragma mark CWASearchViewController的定义

@implementation CWASearchViewController
@synthesize iSearchActionDef;
@synthesize iMWALCCDelegate;
@synthesize iCWASearchController;
@synthesize iMWAListCacheDelegate;
@synthesize iSearchResultsTableView;
@synthesize iNormalTableView;
@synthesize iTitleBarView;
@synthesize iTitleBarSubView;
@synthesize iSearchResultUIView;
@synthesize iSearchBar;
@synthesize iSearchBarView;
@synthesize iSearchCancelBt;
@synthesize iBottomAreaView;
@synthesize iBottomSubView;
@synthesize iNormalArray;
@synthesize iSearchResultArray;
@synthesize iSearchGroupArray;
@synthesize iSearchTempGroupArray;
@synthesize iGroupButtonTitleArray;
@synthesize iGroupButtonView;
@synthesize iGroupButton;
@synthesize iRedLabelUIView;         
@synthesize iRedLabelUILabel;
@synthesize iConditionStr;
@synthesize iRedLabelStr;
@synthesize iRightNavButton;
@synthesize iRightNavBtTitle;
@synthesize iRightNavBtBg;
@synthesize iLeftNavButton;
@synthesize iLeftNavBtTitle;
@synthesize iLeftNavBtBg;
@synthesize iTitle;
@synthesize iTitleStr;
@synthesize iTitleBg;
@synthesize iTitleBgImg;
@synthesize iSearchConditionArray;
@synthesize iHistoryCacheFileName;
@synthesize iSearchText;
@synthesize iNoDataImgView;
@synthesize iSearchBarStyle;

//屏幕尺寸
static CGFloat WA_SCREEN_WIDTH  = 320.0f;
static CGFloat WA_SCREEN_HEIGHT = 460.0f;

#pragma mark 初始化相关

//通过conditionstr初始化
-(id)init:(CWASearchListViewStyle*)aSearchStyle
{
      self = [super initWithNibName:@"WASearchViewController" bundle:nil];
    if (self)
    {
      
      iSearchBarStyle = ESTYLEIOS6SYS;
        //默认没有添加数据
        iIsHavaAddDataBViewDid = NO;
        
        //历史记录默认缓存文件名
        self.iHistoryCacheFileName = @"";
        
        //设置界面样式
        iSearchIsShowNoDImg = NO; //默认不显示无数据页面
        iNormalIsShowNoDImg = NO; //默认不显示无数据页面
        
        iIsHaveInitView = NO;
        CWASearchListViewStyle * aStyle = 
            [[CWASearchListViewStyle alloc] init];
        [aStyle setStyle:aSearchStyle];
        iSearchFlags = aStyle;
        [self setNormalStyleFlags];
        iSearchCurViewType = EListCacheSearch;//界面默认是搜索
        
        //设置搜索界面行为
        [iSearchActionDef = [CWASearchListActionStyle alloc] init];
        
        //设置condition str
        self.iConditionStr = nil;
        
        //设置界面标识
        iSearchViewDeatailFlags = [[CWASearchListViewStyle alloc] init];
        iGroupButtonPressIndex = -1;
        [self setViewDetailFlags:iSearchFlags];
        //初始化数据
        [self initListCacheData];
        
        //初始化searchtable
        CGRect cgrTableFrame =CGRectMake(0, 0, 320, 460);
        NSString * cacheFileName = [NSString stringWithFormat:@"%@", [self class]];
        CWACacheTableView * freshTableView = 
        [[CWACacheTableView alloc] initWithFrame:cgrTableFrame 
                                 pullingDelegate:self cacheFileName:cacheFileName];
        self.iSearchResultsTableView = freshTableView;
        [freshTableView release];
        
        UITableView * tableview = [[UITableView alloc] initWithFrame:cgrTableFrame
                                                               style:UITableViewStylePlain];
        self.iNormalTableView   = tableview;
        [tableview release];
    }
    return  self;
}

//设置normal
-(void)setNormalStyleFlags
{
    iNomalFlags = [[CWASearchListViewStyle alloc] init];
    iNomalFlags.iHaveSearchBar   = NO;
    iNomalFlags.iHaveGroupButton = NO;
    iNomalFlags.iHaveBottomArea  = YES;
}

//设置normal的flags
-(void)setNormalStyleFlags:(CWASearchListViewStyle*)aViewStyle
{
    [iNomalFlags setStyle:aViewStyle];
    iNomalFlags.iIsMutipleSection = NO;
}

//设置细节flags
-(void)setViewDetailFlags:(CWASearchListViewStyle*)aSearchStyle
{
    //具体哪些没有，根据标志来确定
    [iSearchViewDeatailFlags setStyle:aSearchStyle];
}

//设置标题栏的subview
-(void)setTitleBarSubView:(UIView*)aView
{
    if ([aView isKindOfClass:[UIView class]]) 
    {
        //先remove
        [self.iTitleBarSubView removeFromSuperview];
        self.iTitleBarSubView = aView;
        //然后添加到界面上
        [self addSubViewToTitleBar];
    }
}

//将titlebar的subview添加到titlebar上面
-(void)addSubViewToTitleBar
{
    UIView * titleBarSubView = self.iTitleBarSubView;
    if (titleBarSubView !=nil)
    {
        //当返回nil不需要处理
        [self.iTitleBarView addSubview:titleBarSubView];
        //居中放置添加上来的subview
        CGRect subViewFrame   = titleBarSubView.frame;
        CGRect titleBarFrame  = self.iTitleBarView.frame;
        subViewFrame.origin.x = (titleBarFrame.size.width 
                                 - subViewFrame.size.width)/2.0f;
        subViewFrame.origin.y = (titleBarFrame.size.height 
                                 - subViewFrame.size.height)/2.0f;
        titleBarSubView.frame = subViewFrame;
    }
}


- (void)customeTitleLable:(UILabel *)aTitleLable
{
  
}

//设置标题文本
-(void)setTitleText:(NSString*)aTitleStr
{
    if ([aTitleStr isKindOfClass:[NSString class]])
    {
      self.iTitleStr = aTitleStr;
      [self.iTitle setText:aTitleStr];
      [self customeTitleLable:self.iTitle];
    }
}

//设置标题背景
-(void)setTitleBg:(UIImage*)aTitleBgImg
{
    if ([aTitleBgImg isKindOfClass:[UIImage class]]) 
    {
        self.iTitleBgImg = aTitleBgImg;
        [self.iTitleBg setImage:aTitleBgImg];
    }
}

//设置左边按钮背景(内部调用)
-(void)setLeftButtonImage:(UIImage*)aImg
{
    //动态调整button的尺寸适应图片
    UIImage * leftBtBg = self.iLeftNavBtBg;
    CGSize imgSize = leftBtBg.size;
    CGRect leftBtFrame = self.iLeftNavButton.frame;
    leftBtFrame.size.width = imgSize.width;
    leftBtFrame.size.height= imgSize.height;
    //调整在titlebar上的位置
  
    //修改y轴
    if(self.iTitleBgImg)
    {
      CGFloat height = self.iTitleBgImg.size.height;
  
      leftBtFrame.origin.y = height/2.0f - imgSize.height/2.0f;
    }

    self.iLeftNavButton.frame = leftBtFrame;
    [self.iLeftNavButton setBackgroundImage:leftBtBg forState:UIControlStateNormal];
}

//设置nav上的左侧按钮背景(外部调用)
-(void)setNavLeftBtBg:(UIImage*)aNavLeftBtImg
{
    if ([aNavLeftBtImg isKindOfClass:[UIImage class]])
    {
        self.iLeftNavBtBg = aNavLeftBtImg;
        [self setLeftButtonImage:aNavLeftBtImg];
    }
    if(!aNavLeftBtImg)
    {
      self.iLeftNavBtBg = nil;
      [self setLeftButtonImage:nil];
    }
}

//设置leftbutton title
-(void)setNavLeftBtTitle:(NSString*)aNavLeftTitle
{
    if ([aNavLeftTitle isKindOfClass:[NSString class]])
    {
        self.iLeftNavBtTitle = aNavLeftTitle;
        [self.iLeftNavButton setTitle:aNavLeftTitle forState:UIControlStateNormal];
    }
}

//设置右边按钮背景(内部调用)
-(void)setRightButtonImage:(UIImage*)aImg
{
    UIImage * imagebg = aImg;
    CGSize  imgSize = imagebg.size;
    CGRect  rightBgFrame = self.iRightNavButton.frame;
    //x方向，和右侧屏幕的距离
    int xdiffer = WA_SCREEN_WIDTH - (rightBgFrame.origin.x + rightBgFrame.size.width);
    
    rightBgFrame.size.width = imgSize.width;
    rightBgFrame.size.height= imgSize.height;
    
    //x可能需要的调整
    rightBgFrame.origin.x= WA_SCREEN_WIDTH - xdiffer - rightBgFrame.size.width;
  
  
    //修改y轴
    if(self.iTitleBgImg)
    {
      CGFloat height = self.iTitleBgImg.size.height;
  
      rightBgFrame.origin.y = height/2.0f - imgSize.height/2.0f;
    };
    self.iRightNavButton.frame = rightBgFrame;
    [self.iRightNavButton setBackgroundImage:imagebg 
                                    forState:UIControlStateNormal];
}

//设置nav上的右侧按钮背景(外部调用)
-(void)setNavRightBtBg:(UIImage*)aNavRightBtBg
{
    if ([aNavRightBtBg isKindOfClass:[UIImage class]])
    {
        self.iRightNavBtBg = aNavRightBtBg;
        [self setRightButtonImage:aNavRightBtBg];
    }
}

//设置navrightbutton title
-(void)setNavRightBtTitle:(NSString*)aNavRightBtTitle
{
    if ([aNavRightBtTitle isKindOfClass:[NSString class]])
    {
        self.iRightNavBtTitle = aNavRightBtTitle;
        [self.iRightNavButton setTitle:aNavRightBtTitle
                              forState:UIControlStateNormal];
    }
}

//设置searchbar的placehold
-(void)setConditionText:(NSString*)aConditionStr
{
    self.iConditionStr = aConditionStr;
    
    if (iSearchFlags.iHaveSearchBar == NO)
    {
        //要将searchbar显示出来
        iSearchFlags.iHaveSearchBar = YES;
    }
    
    if (iSearchCurViewType == EListCacheSearch) 
    {
        [self setViewStyle];
    }
    
    //设置condition
    [self.iSearchBar setPlaceholder:aConditionStr];
}

//设置redlabel文本
-(void)setRedLabelText:(NSString*)aRedStr
{
    self.iRedLabelStr = aRedStr;
    if (iSearchViewDeatailFlags.iHaveRedLabel == NO)
    {
        iSearchFlags.iHaveRedLabel = YES;
        [self setViewDetailFlags:iSearchFlags];
        [self setViewStyle];
    }
    //设置redstr
    [self.iRedLabelUILabel setText:self.iRedLabelStr];
}

//设置groupbutton
-(void)setGroupButton:(NSArray*)aGrpButtonTitles 
        WithHighlight:(int)aIndex
{
    if ([aGrpButtonTitles isKindOfClass:[NSArray class]])
    {
        //如果，groupbutton数目小余2，则不现实
        self.iGroupButtonTitleArray = aGrpButtonTitles;
        iGroupButtonPressIndex      = aIndex;
        if ([aGrpButtonTitles count]>=2) 
        {
            //设置groupbutton的titles
            if (iSearchViewDeatailFlags.iHaveGroupButton == NO)
            {
                iSearchFlags.iHaveGroupButton = YES;
                if (iSearchCurViewType == EListCacheSearch) 
                {
                    [self setViewDetailFlags:iSearchFlags];
                    [self setViewStyle];
                }
            }
            //此时界面布局默认需要将groupbutton项目打开
            if (self.iGroupButtonView != nil)
            {
                [self setGroupButtonView:aIndex];
            }
        }
        else 
        {
            iSearchFlags.iHaveGroupButton = NO;
            if (iSearchCurViewType == EListCacheSearch) 
            {
                [self setViewDetailFlags:iSearchFlags];
                [self setViewStyle];
            }
        }
    }
    else if(aGrpButtonTitles == nil)
    {
        iSearchFlags.iHaveGroupButton = NO;
        if (iSearchCurViewType == EListCacheSearch) 
        {
            [self setViewDetailFlags:iSearchFlags];
            [self setViewStyle];
        }
    }
}


- (void)setGroupButtonWithTitle:(NSString*)aTitle
                  withHighlight:(int)aIndex
{
  NSMutableArray *array = [[NSMutableArray alloc] initWithArray:self.iGroupButtonTitleArray];
  if([array count] > aIndex)
  {
     [array replaceObjectAtIndex:aIndex withObject:aTitle];
     self.iGroupButtonTitleArray = array;
     CWAButton *btn = [iGroupButton getButtonObjectOfIndex:aIndex];
     [btn setTitle:aTitle forState:UIControlStateNormal];
  }
  [array release];
  
}
//设置底部区域
-(void)setBottomAreaView:(UIView*)aView
{
    if ([aView isKindOfClass:[UIView class]])
    {
        [self.iBottomSubView removeFromSuperview];
        self.iBottomSubView    = aView;
        [self.iBottomAreaView addSubview:aView];
    }
}

-(void)addViewToBottomAreaView:(UIView*)aView
{
  [self.iBottomAreaView addSubview:aView];
}

//初始化界面所有控件
-(void)initViewControllers
{
    //初始化tiltebar
    if (iSearchViewDeatailFlags.iHaveTitleBar == YES)
    {
        //设置标题文本
        if (iSearchViewDeatailFlags.iHaveTitleText)
        {
            NSString * titleText = self.iTitleStr;
            [self.iTitle setText:titleText];
        }
        
        //设置标题背景
        UIImage * titleBg = self.iTitleBgImg;
        [self.iTitleBg setImage:titleBg];
        
        //设置左侧按钮
        //设置文本
        NSString * leftBtTitle = self.iLeftNavBtTitle;
        [self.iLeftNavButton setTitle:leftBtTitle forState:UIControlStateNormal];

        //设置背景
        UIImage * leftBtBg = self.iLeftNavBtBg;
        [self setLeftButtonImage:leftBtBg];
        
        //设置右侧按钮
        //设置背景
        UIImage * imagebg = self.iRightNavBtBg;
        [self setRightButtonImage:imagebg];
        
        //设置标题
        NSString * bttitle = self.iRightNavBtTitle;
        [self.iRightNavButton setTitle:bttitle forState:UIControlStateNormal];

        //设置titlebar的subview
        [self addSubViewToTitleBar];
    }
    
    //设置searchbar
    if (iSearchViewDeatailFlags.iHaveSearchBar == YES)
    {
        NSString * aConditionStr = self.iConditionStr; 
        [self.iSearchBar setPlaceholder:aConditionStr];
        //有searchbar时，有历史记录
        iHistoryDDList = [[CWAHistoryDDList alloc] initWithStyle:UITableViewStylePlain];
        [iHistoryDDList updateData:self.iSearchConditionArray];
        iHistoryDDList.iHistoryDelegate = self;
    }
    
    //设置groupbutton
    if (iSearchViewDeatailFlags.iHaveGroupButton == YES)
    {
        //设置groupbutton
        [self setGroupButtonView:iGroupButtonPressIndex];
    }
    
    //设置red 
    if (iSearchViewDeatailFlags.iHaveRedLabel == YES)
    {
        [self setRedLabelText:self.iRedLabelStr];
    }
    
    //设置底部区域
    if (iSearchViewDeatailFlags.iHaveBottomArea == YES)
    {
        UIView * bottomView =  self.iBottomSubView;
        [self.iBottomAreaView addSubview:bottomView];
    }
    
    //初始化talbleview－搜索结果的tableview
    CGRect cgrTableFrame = self.iSearchResultUIView.frame;
    cgrTableFrame.origin.y = 0;
    self.iSearchResultsTableView.frame = cgrTableFrame;
    self.iSearchResultsTableView.headerOnly = NO;
    
    self.iSearchResultsTableView.dataSource = self;
    self.iSearchResultsTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.iSearchResultsTableView.decelerationRate = DecelerationRate;
    self.iSearchResultsTableView.delegate = self;
    self.iSearchResultsTableView.backgroundColor = [UIColor clearColor]; 
    [self.iSearchResultUIView addSubview:self.iSearchResultsTableView];
    [self.iSearchResultsTableView setNormalTableview:NO];
    
    //初始化tableview－normal
    self.iNormalTableView.dataSource      = self;
    self.iNormalTableView.delegate        = self;
    self.iNormalTableView.backgroundColor = [UIColor clearColor];
    self.iNormalTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.iSearchResultUIView addSubview:self.iNormalTableView];
}

//设置界面
-(void)setViewStyle
{
    CGRect talbeFrame      = self.iSearchResultUIView.frame;
    
    //当前显示控件的y坐标，初始时从0开始显示
    CGFloat yCurOff = 0;
    //ios7适配
    if (WA_CURENT_OS_V >= 7.0f)
    {
      yCurOff = 20.0f;
    }
  
    if (iSearchViewDeatailFlags.iHaveTitleBar == YES)
    {
        //设置titlebarview是否显示
        self.iTitleBarView.hidden = NO;
        //设置titlebarview的坐标
        CGRect titleBarViewFrame = self.iTitleBarView.frame;
        titleBarViewFrame.origin.y = yCurOff;
        self.iTitleBarView.frame = titleBarViewFrame;
        
        yCurOff += self.iTitleBarView.frame.size.height;
        
        //标题文本
        if (iSearchViewDeatailFlags.iHaveTitleText == YES) 
        {
            self.iTitle.hidden = NO;
        }
        else 
        {
            self.iTitle.hidden = YES;
        }
        //设置左边按钮
        if (iSearchViewDeatailFlags.iHaveLeftButton == YES)
        {
            self.iLeftNavButton.hidden = NO;
        }
        else 
        {
            self.iLeftNavButton.hidden = YES;
        }
        
        //设置右侧按钮
        if (iSearchViewDeatailFlags.iHaveRightButton == YES)
        {
            self.iRightNavButton.hidden = NO;
        }
        else 
        {
            self.iRightNavButton.hidden = YES;
        }
    }
    else 
    {
        self.iTitleBarView.hidden = YES;
    }
    
    //设置searchbar
    if (iSearchViewDeatailFlags.iHaveSearchBar == YES)
    {
        iSearchBarView.hidden = NO;
        //修正显示坐标
        CGRect searchBarFrame = iSearchBarView.frame;
        searchBarFrame.origin.y = yCurOff;
        iSearchBarView.frame = searchBarFrame;
        
        yCurOff += iSearchBarView.frame.size.height;
        
        //设置历史列表的位置
        CGRect historyFram   = iHistoryDDList.view.frame;
        historyFram.origin.y = yCurOff;
        
        //设置取消按钮的显示隐藏
        //如果取消按钮点击了是退出搜索界面，则按钮不隐藏
        iSearchCancelBt.hidden = !iSearchFlags.iIsCancelSQuit;
        
        iHistoryDDList.view.frame = historyFram;
    }
    else 
    {
        [self hiddenHistoryList];
        iSearchBarView.hidden = YES;
    }
    
    //设置groupbutton
    if (iSearchViewDeatailFlags.iHaveGroupButton == YES)
    {
        self.iGroupButtonView.hidden = NO;
        //修正坐标
        CGRect groupButtonFrame = self.iGroupButtonView.frame;
        groupButtonFrame.origin.y = yCurOff;
  
        self.iGroupButtonView.frame = groupButtonFrame;
        
        yCurOff += self.iGroupButtonView.frame.size.height;
    }
    else 
    {
        self.iGroupButtonView.hidden = YES;
    }
    
    //设置redlabel
    if (iSearchViewDeatailFlags.iHaveRedLabel == YES)
    {
        self.iRedLabelUIView.hidden = NO;
        //修正坐标
        CGRect groupButtonFrame = self.iRedLabelUIView.frame;
        groupButtonFrame.origin.y = yCurOff;
        
        self.iRedLabelUIView.frame = groupButtonFrame;
        
        yCurOff += self.iRedLabelUIView.frame.size.height;
    }
    else 
    {
        self.iRedLabelUIView.hidden = YES;
    }
    
    //设置底部区域是否显示
    if (iSearchViewDeatailFlags.iHaveBottomArea == YES)
    {
        self.iBottomAreaView.hidden = NO;
    }
    else 
    {
        self.iBottomAreaView.hidden = YES;
    }
    
    //设置tableview
    CGFloat bottomAreaHeight = self.iBottomAreaView.frame.size.height;
    if (iSearchViewDeatailFlags.iHaveBottomArea == NO)
    {
        bottomAreaHeight = 0;
    }
    
    CGFloat tableViewHeight = WA_SCREEN_HEIGHT - yCurOff - bottomAreaHeight;
    talbeFrame.origin.y   = yCurOff;          //tableview的的起点位置
    talbeFrame.size.height= tableViewHeight;  //tableview的高度
    
    self.iSearchResultUIView.frame = talbeFrame;

    //设置无数据页面显示情况
    switch (iSearchCurViewType)
    {
        case EListCacheNormal:
        {
            self.iNormalTableView.hidden = NO;
            self.iSearchResultsTableView.hidden = YES;
            //控制无数据页面的显示或隐藏
            self.iNoDataImgView.hidden = 
            (iNormalIsShowNoDImg)? NO:YES;
        }
            break;
        case EListCacheSearch:
        {
            self.iNormalTableView.hidden = YES;
            self.iSearchResultsTableView.hidden = NO;
            //控制无数据页面的显示或隐藏
            self.iNoDataImgView.hidden =
            (iSearchIsShowNoDImg)?NO:YES;
        }
            break;
        default:
            break;
    }
    CGRect tableViewFrame = talbeFrame;
    tableViewFrame.origin.y = 0;
    
    self.iSearchResultsTableView.frame =tableViewFrame;
    self.iNormalTableView.frame    = tableViewFrame;
    
    //调整无数据页面图
    CGRect noDataImg = self.iNoDataImgView.frame;
    noDataImg.origin.x = (WA_SCREEN_WIDTH - noDataImg.size.width) / 2.0f;
    noDataImg.origin.y = (talbeFrame.size.height - noDataImg.size.height) / 2.0f
                         + talbeFrame.origin.y;
    self.iNoDataImgView.frame = noDataImg;
}

//设置列表类型
-(void)setViewType:(TWAListCacheViewType)aListCacheViewType
{
    //记录当前列表的类型
    iSearchCurViewType = aListCacheViewType;
    //切换列表
    switch (aListCacheViewType) 
    {
        case EListCacheSearch:
        {
            [self setViewDetailFlags:iSearchFlags];
            [self setViewStyle];
        }
            break;
        case EListCacheNormal:
        {
            [self setViewDetailFlags:iNomalFlags];
            [self setViewStyle];
        }
            break;
        default:
            break;
    }
}

//设置搜索列表为normal样式
-(void)setSearchViewNormal:(BOOL)aBool
{
    [self.iSearchResultsTableView setNormalTableview:aBool];
}

//获取当前界面的状态
-(TWAListCacheViewType)getViewType
{
    return iSearchCurViewType;
}

//设置groupbutton
-(void)setGroupButtonView:(int)aIndex
{
    int groupButtonCount = [self.iGroupButtonTitleArray count];
    CWAGroupButtonView * oneGroupButton = [[CWAGroupButtonView alloc] 
                                           initWithaButtonCount:groupButtonCount
                                           withTitle:self.iGroupButtonTitleArray
                                           withStatusCode:nil 
                                           withServiceCode:nil 
                                           withStatus:@"SearchViewController"];
    self.iGroupButton = oneGroupButton;
    self.iGroupButton.userInteractionEnabled = YES;
    [oneGroupButton release];
    //添加按钮事件
    for (int index =0; index<[self.iGroupButtonTitleArray count]; index++)
    {
        UIButton * oneButton = [self.iGroupButton getButtonObjectOfIndex:index];
        [oneButton addTarget:self action:@selector(groupButtonOneClick:) 
            forControlEvents:UIControlEventTouchUpInside];
    }
    //默认选中
    [self.iGroupButton setHighlightButtonWithIndex:aIndex];
    //添加groupbutton到界面上
//    CGRect frame = self.iGroupButtonView.frame;
//    frame.origin.x = 0;
//    frame.origin.y = 0;
    CGPoint center = CGPointMake(self.iGroupButtonView.frame.size.width/2, self.iGroupButtonView.frame.size.height/2);
    self.iGroupButton.center = center;
    [self.iGroupButtonView addSubview:self.iGroupButton];
}

//viewDidLoad，完成初始化方面的业务
- (void)viewDidLoad
{
    [super viewDidLoad];
  self.iCWASearchController.iSearchBarStyle = self.iSearchBarStyle;
    WA_SCREEN_WIDTH = WA_SCREEN_WIDTH;
    WA_SCREEN_HEIGHT= WA_SCREEN_HEIGHT;
    
    //获取历史记录数据
    self.iSearchConditionArray = [self.iCWASearchController getHistoryArray];
    
    //初始化界面控件
    [self initViewControllers];
    
    //对键盘notify的响应，以实现历史记录的尺寸，在输入法变化时，动态变化
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(keyboardWillShow:) 
                                                 name:UIKeyboardWillShowNotification 
                                               object:self.view.window];
    [[NSNotificationCenter defaultCenter] addObserver:self 
                                             selector:@selector(keyboardWillHidden:) 
                                                 name:UIKeyboardWillHideNotification 
                                               object:self.view.window];
    //请求前25条数据，如果默认显示历史记录就不请求前25条数据
    if (iSearchCurViewType == EListCacheSearch) 
    {
        //当前时搜索
        if (iSearchViewDeatailFlags.iHaveSearchBar 
            && iSearchViewDeatailFlags.iIsFirstHistory)
        {
            //此处移动到viewwillappear中
        }
        else 
        {
            [self showFirst25List];
        }
    }
    else 
    {
        [self showFirst25List];
    }
    
    //根据是否在viewdidload之前添加过数据显示空数据页面
    if (iIsHavaAddDataBViewDid == YES)
    {
        iSearchIsShowNoDImg = YES;
        self.iNoDataImgView.hidden = NO;
        iIsHavaAddDataBViewDid = YES;
        //空数据页面不能上拉，下拉刷新
        [self.iSearchResultsTableView setNormalTableview:YES]; 
    }
 }

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //设置屏幕分辨率
    CGRect screenSize = self.view.frame;
    WA_SCREEN_WIDTH = screenSize.size.width;
    WA_SCREEN_HEIGHT= screenSize.size.height;
    //设置界面样式
    iSearchIsShowNoDImg = NO;
    [self setViewStyle];
    if (iSearchCurViewType == EListCacheSearch) 
    {
        //当前时搜索
        if (iSearchViewDeatailFlags.iHaveSearchBar 
            && iSearchViewDeatailFlags.iIsFirstHistory)
        {
            [self.iSearchBar becomeFirstResponder];
        }
        
        //如果，用户选择了，以取消按钮退出界面,
        if (iSearchViewDeatailFlags.iHaveSearchBar
            && iSearchViewDeatailFlags.iIsCancelSQuit)
        {
            [self.iSearchBar setShowsCancelButton:YES animated:NO];
        }
    }
  
    //空数据提示样式
    switch (iSearchViewDeatailFlags.iNoDataStyle)
    {
      case ELCSearchNoDataOld:
      {
        //维持原空数据页面样式（图片）
      }
        break;
      case ELCSearchNoDataNew63:
      {
        //63UE适配新空数据页面
        NSInteger noDataWidth = self.view.frame.size.width - 24*2;
        UILabel *noDataLabel = [[UILabel alloc] initWithFrame:CGRectMake(24, 22, noDataWidth, 24)];
        [noDataLabel setText:NSLocalizedStringFromTable(@"NoData", WA_MUTILANGUE_FILENAME, nil)];
        noDataLabel.textColor=WACOLOR(143, 143, 143);
        noDataLabel.font= [UIFont fontWithName:WA_SEARCH_NODATAFONT
                                          size:14];;
        noDataLabel.backgroundColor=[UIColor clearColor];
        noDataLabel.textAlignment=NSTextAlignmentCenter;
        iNoDataImgView.frame = self.iSearchResultUIView.frame;
        iNoDataImgView.image = nil;
        //移除子视图
        [iNoDataImgView.subviews makeObjectsPerformSelector: @selector(removeFromSuperview)];
        [iNoDataImgView addSubview:noDataLabel];
        [noDataLabel release];
      }
        break;
        
      default:
        break;
    }
}

# pragma mark spinner的显示和隐藏
//show spinner
- (void) showMySpinner
{
    if ( ! ( [CWASpinnerView sharedCWASpinnerView].isShow ) ) 
    {
        [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES 
            withShowingText:NSLocalizedStringFromTable(@"LoadData", WA_MUTILANGUE_FILENAME, nil)];
    }
}

//hide spinner
- (void) hideMySpinner
{
    if ( [CWASpinnerView sharedCWASpinnerView].isShow ) 
    {
        [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    }
}

//初始化相关数据
-(void)initListCacheData
{
    //初始化普通分组的数组
    NSMutableArray * normalArray = [[NSMutableArray alloc] init];
    self.iNormalArray = normalArray;
    [normalArray release];
    
    //初始化结果数组
    NSMutableArray * resultArray = [[NSMutableArray alloc] init];
    self.iSearchResultArray = resultArray;
    [resultArray release];
    
    //初始化分组情况数组
    NSMutableArray * groupArray  = [[NSMutableArray alloc] init];
    self.iSearchGroupArray  = groupArray;
    [groupArray release];
    
    NSMutableArray * groupTempArray = [[NSMutableArray alloc]init];
    self.iSearchTempGroupArray = groupTempArray;
    [groupTempArray release];
    
    //初始化接口请求的参数
    iRequestStartPos  = WA_LISTCACHE_FIRSTPOST;//请求接口的开始位置
    iRequestPageNum   = WA_SUPPLIESSEARCH_PAGENUM ;//请求接口的页数
    iRequesMaxPagePos = 0;
    
//    //第一次时，搜索的文本为nil
    self.iSearchText = nil;

}

//计算tableview的cell的总的数目
-(int)countSumRowsOfTable
{
    int cellSum = 0;
    int sectionSum = [self.iSearchResultsTableView numberOfSections];
    for (int index =0 ; index < sectionSum; index ++)
    {
        cellSum += [self.iSearchResultsTableView numberOfRowsInSection:index];
    }
    return cellSum;
}

//获取真实的位置，根据一个NSIndexPath
-(int)countPosFromIndexPath:(NSIndexPath*)aIndexPath
{
    int realPos = 0;
    int numberSection   = [self.iSearchResultsTableView numberOfSections];
    int getSectionIndex = [aIndexPath section];
    if (getSectionIndex > numberSection)
    {
        //越界，不存在这种数据
        realPos = -1;
    }
    else 
    {
        //计算该section前面的总数
        for (int index =0 ; index<getSectionIndex; index++)
        {
            realPos += [self.iSearchResultsTableView numberOfRowsInSection:index];
        }
        //加上当前的section的row就是目前的真实的位置
        realPos += [aIndexPath row];
    }
    return realPos;
}

//根据一个真实的index获取在tableview中的位置
-(NSIndexPath*)getIndexPathFromTempAIndex:(int)aIndexPos
{
    //寻找在tableview中的位置
    NSIndexPath * indexPath= nil;
    
    //寻找匹配
    BOOL isHaveFind  = NO;
    int  intGroupOffSet    = 0;
    int  intGroupIndex     = 0;
    if (iSearchFlags.iIsMutipleSection == YES)
    {
        int  intGroupSum = [self.iSearchTempGroupArray count];
        int  intCurRowSum= 0;
        for (int index = 0; index <intGroupSum; index++)
        {
            int intLastCurSum = intCurRowSum;
            CWASearchListGroupDetail * agroup = [self.iSearchTempGroupArray
                                                 objectAtIndex:index];
            
            intCurRowSum += agroup.iSectionRowNum;
            
            //判断，处理
            if (intCurRowSum<=aIndexPos)
            {
                //小于需要的位置，所以，继续循环
                continue;
            }
            else 
            {
                //说明必然存在于这个位置
                isHaveFind    = YES;
                intGroupIndex = index;
                //在当前分组里面的偏移;
                intGroupOffSet= (aIndexPos - intLastCurSum);
                break;
            }
        }
    }
    else 
    {
        isHaveFind = YES;
        intGroupIndex = 0;
        intGroupOffSet= aIndexPos;
    }
    
    //根据是否找到了。返回结果
    if (isHaveFind == YES)
    {
        indexPath = [NSIndexPath indexPathForRow:intGroupOffSet
                                                     inSection:intGroupIndex];
    }
    else 
    {
        indexPath = nil; 
    }
    return indexPath;
}

//获取所有cell的indexpath
-(NSMutableArray*)getAResultAllObIndexPaths
{
    NSMutableArray * aArray = [[[NSMutableArray alloc] init] autorelease];
    
    //考虑到被删除的情况，此处要用真实的count，不包括被删除元素
    int intCount =[self realSearchCount];
    for (int index =0; index<intCount; index++)
    {
        NSIndexPath * aIndexPath = 
        [self getIndexPathFromTempAIndex:index];
        [aArray addObject:aIndexPath];
    }

    return aArray;
}



- (NSArray *)getAResultSelectIndexPaths
{
    return [iSearchResultsTableView indexPathsForSelectedRows];
}

//获取所有普通cell的indexpath
-(NSMutableArray*)getANormalAllObIndexPaths
{
    NSMutableArray * aArray = [[[NSMutableArray alloc] init] autorelease];
    
    int intCount =[self.iNormalArray count];
    for (int index =0; index<intCount; index++)
    {
        NSIndexPath * aIndexPath = 
        [NSIndexPath indexPathForRow:index inSection:0];
        [aArray addObject:aIndexPath];
    }
    
    return aArray;
}

//子类获取一个搜索的元素
-(id)getAResultObject:(NSIndexPath*)aIndexPath
{
    id objectReturn = nil;
    int aObjectIndex = 0;
    
    if ([aIndexPath isKindOfClass:[NSIndexPath class]])
    {
        //计算真实的数据，此处真实位置更加tableview cell数目计算，所以，是不包括删除元素的位置
        aObjectIndex = [self  countPosFromIndexPath:aIndexPath];
        //从缓存中获取数据
        if (aObjectIndex>=0 
            && aObjectIndex< [self realSearchCount]) 
        {
            //此处给定的位置是不包括删除元素的，取数据时也不包括删除元素
            objectReturn = [self realSearchObjectAtIndex:aObjectIndex];
        }
        else
        {
            objectReturn = nil;
        }
    }
    else 
    {
        objectReturn = nil;
    }
    
    return objectReturn;
}

//获取一个普通列表的元素
-(id)getANormalObject:(NSIndexPath*)aIndexPath
{
    id objectReturn = nil;
    int aObjectIndex = 0;
    
    if ([aIndexPath isKindOfClass:[NSIndexPath class]])
    {
        //计算真实的数据
        aObjectIndex = [aIndexPath row];
        //从缓存中获取数据
        if (aObjectIndex>=0 
            && aObjectIndex< [self.iNormalArray count]) 
        {
            objectReturn = [self.iNormalArray objectAtIndex:aObjectIndex];
        }
        else
        {
            objectReturn = nil;
        }
    }
    else 
    {
        objectReturn = nil;
    }
    
    return objectReturn;
}

//设定普通列表是否是编辑状态
-(void)setNormalTableEdit:(BOOL)aIsEdit
{
    [self.iNormalTableView setEditing:aIsEdit animated:YES];
}

//设定搜索列表是否是编辑
-(void)setSearchTableEdit:(BOOL)aIsEdit
{
    [self.iSearchResultsTableView setEditing:aIsEdit animated:YES];
}

//是否在当前界面搜索
-(BOOL)getIsCurViewSearch
{
    return iSearchFlags.iIsCurViewSearch;
}

//是否取消按钮就是退出当前搜索界面
-(BOOL)getIsCancelQuit
{
    return iSearchFlags.iIsCancelSQuit;
}

//发送消息给子类
-(void)sendStartEditSeartBar
{
    if ([self.iMWALCCDelegate respondsToSelector:@selector(startEditSearchBar)])
    {
        [self.iMWALCCDelegate startEditSearchBar];
    }
}

//重置search相关的标志，变量
-(void)setSearchPos
{
    //设置请求的初始页面
    iRequestStartPos = WA_LISTCACHE_FIRSTPOST;
    //设置请求的最大页面
    iRequesMaxPagePos= 0;
    //重新搜索删除所有缓存
    [self.iSearchResultsTableView deleteAllObjects];
    //不是第一次进入才会进入代码
    self.iSearchResultsTableView.reachedTheEnd = NO;
    //页面可以上拉，下拉刷新
    //空数据页面不能上拉，下拉刷新
    [self.iSearchResultsTableView setNormalTableview:NO];
    //删除数组中数据
    [self.iSearchResultArray removeAllObjects];
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        //删除分组信息
        [self.iSearchGroupArray removeAllObjects];
        //删除临时分组信息
        [self.iSearchTempGroupArray removeAllObjects];
    }
    [self reloadTableView];
    //将当前搜索的词存入内存中
    self.iSearchText = iSearchBar.text;
}

//获取历史记录缓冲文件名称
-(NSString*)getHistoryCacheFileName
{
    return self.iHistoryCacheFileName;
}

//以弹出搜索界面的情形
-(void)cancelSearch
{
    if ([self.iMWALCCDelegate respondsToSelector:@selector(cancelSearchStatus)])
    {
        [self.iMWALCCDelegate cancelSearchStatus];
    }
}

#pragma mark 界面事件的调度，定义的界面样式，调用情形不同。
//左侧按钮点击事件
-(IBAction)leftBtAction:(id)sender
{
    //如果子类没有继承，那么就调用委托
    if ([self.iMWALCCDelegate respondsToSelector:@selector(leftBtClick)])
    {
        [self.iMWALCCDelegate leftBtClick];
    }
}

//右侧按钮点击事件
-(IBAction)rightBtAction:(id)sender
{
    //如果子类没有继承，那么就调用委托
    if ([self.iMWALCCDelegate respondsToSelector:@selector(rightBtClick)])
    {
        [self.iMWALCCDelegate rightBtClick];
    }
}

//groupbutton点击事件
-(void)groupButtonOneClick:(id)sender
{
    int index = 0;
    for (index =0 ; index <[self.iGroupButtonTitleArray count]; index++)
    {
        if (sender == [self.iGroupButton getButtonObjectOfIndex:index]) 
        {
            iGroupButtonPressIndex = index;
            break;
        }
    }
    
    //重新请求联网
    [self setSearchPos];
    [self startQueryOneCondition:self.iSearchText
                    withStartPos:iRequestStartPos withPageNum:iRequestPageNum];
}

//请求全部的前25条结果
-(void)showFirst25List
{
    //第一次请求全部，那么searchtext 为 @“”；
    if(!self.iSearchText)
    {
      self.iSearchText = @"";
    }
    [self startQueryOneCondition:self.iSearchText
                    withStartPos:iRequestStartPos 
                     withPageNum:iRequestPageNum];
}

//主动刷新页面
-(void)freshSearchTable:(BOOL)iIsConNet
{
    //不是第一次进入才会进入代码
    self.iSearchResultsTableView.reachedTheEnd = NO;
    //应该清空缓存,清空数据重新开始
    iRequestStartPos = WA_LISTCACHE_FIRSTPOST;
    iRequesMaxPagePos= 0;
    [self.iSearchResultsTableView deleteAllObjects];
    //清空分组
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        [self.iSearchGroupArray removeAllObjects];
        [self.iSearchTempGroupArray removeAllObjects];
    }
    [self.iSearchGroupArray removeAllObjects];
    [self.iSearchTempGroupArray removeAllObjects];
    //清空数据
    [self.iSearchResultArray removeAllObjects];
    
    [self reloadTableView];
  
    if(iIsConNet)
    {
        [self startQueryOneCondition:self.iSearchText 
                    withStartPos:iRequestStartPos
                     withPageNum:iRequestPageNum];
    }
}

#pragma mark 接口返回数据
//请求列表数据失败
-(void)requestFailedWithError:(NSError*)theError
{
    //请求出错，修正requespos
    if (iRequestStartPos !=WA_LISTCACHE_FIRSTPOST)
    {
        iRequestStartPos -= iRequestPageNum;
    }
    //隐藏spinner
    [self hideMySpinner];
    //提示信息
    if (theError !=nil)
    {
        [self showMsg:[theError domain]];
    }
    
    //tableview完成刷新
    [self.iSearchResultsTableView tableViewDidFinishedLoading];
}

//成功返回数据，列表数据
-(void)addSearchResultWithArray:(NSMutableArray*)aResultArray
{
    iIsNetWorking = NO;
    //重新加载数据
    if ([aResultArray count] <= iRequestPageNum && [aResultArray count]>0) 
    {
        iSearchIsShowNoDImg = NO;
        //要将无数据页面的图片隐藏掉
        if (iSearchCurViewType == EListCacheSearch) 
        {
            self.iNoDataImgView.hidden = YES;
#pragma warning 修改bug 无数据页面 到有数据页面 无刷新加载功能 by cherh1
          [self.iSearchResultsTableView setNormalTableview:NO];
        }
        
        //记录请求过的，并且有数据的最大的页码
        if (iRequesMaxPagePos < iRequestStartPos) 
        {
            iRequesMaxPagePos = iRequestStartPos;
        }
        
        //返回数据的数组的count
        int resultSize = [aResultArray count];
        //当前tableview的cell数目
        
        //为了对多section的支持，换用这种方式获取cell数目
        int lastArrayCount = [self.iSearchResultArray count];
        
        //更新NSMutalbeArray的数据
        //当前返回数据在NSMutableArray中的实际位置
        int opratePos = iRequestStartPos - 1;
        
        WAListCacheRange rangeDaraArray;
        rangeDaraArray.WAListCacheLocation = opratePos;
        rangeDaraArray.WAListCacheLength   = [aResultArray count];
        
        //判断是应该插入，还是应该替换，当前tableview的cell数目为0时，就应该更新，不为0,则插入
        BOOL isAdd = (rangeDaraArray.WAListCacheLocation
                      +rangeDaraArray.WAListCacheLength - 1) > lastArrayCount-1;
        
        //修正，当array为空时，一定是添加
        int intArraySize = [self.iSearchResultArray count];
        if (intArraySize==0)
        {
            isAdd = YES;
        }
        //添加到array中
        for (int index = 0; index<resultSize; index++)
        {
            id object = [aResultArray objectAtIndex:index];
            
            if (isAdd)
            {
                //应该是插入
                [self.iSearchResultArray addObject:object];
            }
            else 
            {
                //应该是替换
                int replaceIndex = opratePos + index;
                [self.iSearchResultArray replaceObjectAtIndex:replaceIndex 
                                                   withObject:object];
            }
        }
        
        //请求了数据，必然是因为缓存中没有，所以数据都应该存入缓存
        WAListCacheRange rangeInsert;
        rangeInsert.WAListCacheLocation = opratePos;
        rangeInsert.WAListCacheLength   = [aResultArray count];
        [self.iSearchResultsTableView insertNewObject:aResultArray Range:rangeInsert];
        
        //就在搜索结果的时候
        self.iSearchResultsTableView.decelerationRate = DecelerationRate;
        
        //更新tableview的cell
        WAListCacheRange listrange;
        listrange.WAListCacheLocation = opratePos;
        listrange.WAListCacheLength   = [aResultArray count];
        
        BOOL isAddOrNO = (listrange.WAListCacheLocation
                          +listrange.WAListCacheLength - 1) > lastArrayCount-1;
        if (isAddOrNO && lastArrayCount>0)
        {
            //数目为0,或者，要显示的数目比当前的数目多，需要插入
            //考虑到可能有前面的被删除的情况，此处的添加cell范围要单独从table上获取
            int cellCount = [self countSumRowsOfTable];
            WAListCacheRange cellRange;
            cellRange.WAListCacheLocation = cellCount;
            cellRange.WAListCacheLength   = [aResultArray count];
            //有可能出现，cell为空了，但是aray还有数据，这个时候，cellCount -1 为-1，所以
            //这个时候修改为0
            cellRange.WAListCacheLocation = 
            cellRange.WAListCacheLocation >0 ?cellRange.WAListCacheLocation:0;
            [self addCells:cellRange];
        }
        else 
        {
            //直接整个tableview raload
            self.iSearchResultsTableView.hidden = NO;
            [self reloadTableView];
        }
        //判断没有更多的数据了
        if (resultSize < iRequestPageNum)
        {
            //mark 10-11:有数据时，不提示没有更多数据
            //只有当不是第一页的时候，并且为空，时，提示，没有更多数据
            [self.iSearchResultsTableView 
                tableViewDidFinishedLoadingWithMessage:nil];
            self.iSearchResultsTableView.reachedTheEnd = YES;
        }
    }
    //没有返回结果时,如果，数据大于page数，则还会提示，数据错误
    else 
    {
        //显示无数据页面
        if (iRequestStartPos == WA_LISTCACHE_FIRSTPOST)
        {
            iSearchIsShowNoDImg = YES;

            //修复，如果搜索列表也没有数据，关注有数据时，显示无数据页面问题
            if (iSearchCurViewType == EListCacheSearch)
            {
                self.iNoDataImgView.hidden = NO;
                if (self.iNoDataImgView == nil)
                {
                    iIsHavaAddDataBViewDid = YES;
                }
              self.iSearchResultsTableView.hidden = YES;
            }
            //空数据页面不能上拉，下拉刷新
            [self.iSearchResultsTableView setNormalTableview:YES]; 
        }
      
        //位置矫正
        if (iRequestStartPos != WA_LISTCACHE_FIRSTPOST)
        {
            //通过上拉，下拉来激发请求的，所以要修正
            iRequestStartPos -=iRequestPageNum;
            [self.iSearchResultsTableView 
                tableViewDidFinishedLoadingWithMessage:NSLocalizedStringFromTable(@"NoMoreResult", WA_MUTILANGUE_FILENAME, nil)];
            self.iSearchResultsTableView.reachedTheEnd = YES;
        }
        
        //数据异常，目前并不处理这种情况
        if([aResultArray count] > iRequestPageNum)
        {
            [self showMsg:NSLocalizedStringFromTable(@"DataAddOverPage", WA_MUTILANGUE_FILENAME, nil)];
        }
    }
    //tableview完成刷新
    [self.iSearchResultsTableView tableViewDidFinishedLoading];
}

//添加一个分组
-(BOOL)addNewGroup:(int)aGroupRowNum 
     WithGroupName:(NSString*)aGroupName WithGroupKey:(NSString*)aGroupKey
{
    //先添加到临时分组数据中
    CWASearchListGroupDetail * aGroupType = [[CWASearchListGroupDetail alloc] init];
    aGroupType.iSectionName   = aGroupName;
    aGroupType.iSectionKey    = aGroupKey;
    aGroupType.iSectionRowNum = aGroupRowNum;
    aGroupType.iSectionIndex  = [self.iSearchTempGroupArray count];
    [self.iSearchTempGroupArray addObject:aGroupType];
    [aGroupType release];
    return YES;
}

//增加最后一个分组的row的数目
-(BOOL)addLastGroupRowNum:(int)aGroupAddRowNum
{
    //先添加到临时分组数据中
    BOOL opeStatus = NO;
    if (self.iSearchTempGroupArray == nil 
        ||[self.iSearchTempGroupArray count]==0)
    {
        opeStatus = NO;
    }
    else 
    {
        opeStatus = YES;
        int objectIndex = [self.iSearchTempGroupArray count] - 1;
        CWASearchListGroupDetail * aGroupType =
            [self.iSearchTempGroupArray objectAtIndex:objectIndex];
        aGroupType.iSectionRowNum += aGroupAddRowNum;
    }
    return opeStatus;
}

-(void)removeNormalCell:(id)aCell
{
    [self.iNormalArray removeObject:aCell];
}

-(void)removeResultCellWithIndexPahts:(NSArray *)aIndexPahts
{
  NSMutableArray *delArray = [[NSMutableArray alloc] initWithCapacity:1];
    for(int i = 0 ;i < [aIndexPahts count];i++)
    {
       
        NSIndexPath *indexPath =   [aIndexPahts objectAtIndex:i];
        NSObject *object = [self getAResultObject:indexPath];
       [delArray addObject:object];
    }
  [self.iSearchResultArray  removeObjectsInArray:delArray];
  [self.iSearchResultsTableView reloadData];
  [delArray release];
}

- (void)removeNormalCellWithIndexPahts:(NSArray *)aIndexPahts
{
  NSMutableArray *delArray = [[NSMutableArray alloc] initWithCapacity:1];
  for(int i = 0 ;i < [aIndexPahts count];i++)
    {
    
    NSIndexPath *indexPath =   [aIndexPahts objectAtIndex:i];
    NSObject *object = [self getANormalObject:indexPath];
    [delArray addObject:object];
    }
  [self.iNormalArray  removeObjectsInArray:delArray];
  [self.iNormalTableView reloadData];
  [delArray release];
}

//普通列表数据以Array形式传入，每一个元素就是一个界面VO
-(void)addNormalListArray:(NSMutableArray*)aNormalArray
{
    if ([aNormalArray isKindOfClass:[NSMutableArray class]])
    {
        int intArraySize = [aNormalArray count];
        if (intArraySize >0)
        {
            //不显示无数据页面
            iNormalIsShowNoDImg = NO;
            if (iSearchCurViewType == EListCacheNormal) 
            {
                self.iNoDataImgView.hidden = YES;
            }
            
            for (int index =0 ; index<intArraySize; index++)
            {
                id aObject = [aNormalArray objectAtIndex:index];
                [self.iNormalArray addObject:aObject];
            }
            //刷新列表
            [self.iNormalTableView reloadData];
        }
        else 
        {
            //显示无数据页面
            iNormalIsShowNoDImg = YES;
            if (iSearchCurViewType == EListCacheNormal) 
            {
                self.iNoDataImgView.hidden = NO;
            }
        }
    }
    else 
    {
        //显示无数据页面
        iNormalIsShowNoDImg = YES;
        if (iSearchCurViewType == EListCacheNormal) 
        {
            iNoDataImgView.hidden = NO;
        }
    }
}

//更新普通列表
-(void)updateNormalListArray:(NSMutableArray*)aNormalArray
{
    if ([aNormalArray isKindOfClass:[NSMutableArray class]])
    {
        //先删除
        [self.iNormalArray removeAllObjects];
        //更新
        int intArraySize = [aNormalArray count];
        if (intArraySize >0)
        {
            //不显示无数据页面
            iNormalIsShowNoDImg = NO;
            if (iSearchCurViewType == EListCacheNormal) 
            {
                self.iNoDataImgView.hidden = YES;
            }
            //循环添加新的数据
            for (int index =0 ; index<intArraySize; index++)
            {
                id aObject = [aNormalArray objectAtIndex:index];
                [self.iNormalArray addObject:aObject];
            }
            //刷新列表
            [self.iNormalTableView reloadData];
        }
        else 
        {
            //显示无数据页面
            iNormalIsShowNoDImg = YES;
            if (iSearchCurViewType == EListCacheNormal) 
            {
                iNoDataImgView.hidden = NO;
            }
            //刷新列表
            [self.iNormalTableView reloadData];
        }
    }
    else 
    {
        //显示无数据页面
        iNormalIsShowNoDImg = YES;
        if (iSearchCurViewType == EListCacheNormal) 
        {
            iNoDataImgView.hidden = NO;
        }
        [self.iNormalTableView reloadData];
    }
}

//只有当界面样式为多section时，显示
-(CWASearchListGroupDetail*)getLastGroupInfo
{
    CWASearchListGroupDetail * agroup = nil;
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        int groupNum = [self.iSearchGroupArray count];
        
        agroup = groupNum >0 ?[self.iSearchGroupArray objectAtIndex:groupNum - 1]:nil;
    }
    else 
    {
        agroup = nil;
    }
    return agroup;
}

-(CWASearchListGroupDetail*)getGroupInfoAtIndex:(int)aIndex
{
  CWASearchListGroupDetail * agroup = nil;
  if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
  {
    if([self.iSearchGroupArray count] > aIndex)
    agroup = aIndex >= 0 ?[self.iSearchGroupArray objectAtIndex:aIndex]:nil;
  }
  else
    {
    agroup = nil;
    }
  return agroup;
}

//取消搜索状态，缩回历史记录，缩回键盘
-(void)cancelSearchStatus:(BOOL)isCancel
{
    if (isCancel)
    {
        [iSearchBar resignFirstResponder];
        BOOL bIsCancelQuit = [self getIsCancelQuit];
        if (bIsCancelQuit)
        {
            [self.iSearchBar setShowsCancelButton:YES animated:NO];
        }
        else 
        {
            [self.iSearchBar setShowsCancelButton:NO animated:YES];
        }
        iSearchBar.userInteractionEnabled = NO;
    }
    else 
    {
        iSearchBar.userInteractionEnabled = YES;
    }
}

//显示信息
-(void)showMsg:(NSString*)aMsg
{
    NSString * nssMsg = aMsg;
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:nssMsg
                                                   delegate:nil 
                                          cancelButtonTitle:NSLocalizedStringFromTable(@"SearchOk", WA_MUTILANGUE_FILENAME, nil)
                                          otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
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
    [cellbg release];
}

//更新某一个cell
-(void)updataCellAtIndexPath:(NSIndexPath*)aIndexPath
{
    //判断参数类型
    if ([aIndexPath isKindOfClass:[NSIndexPath class]]) 
    {
        int tableSecNum = [self.iSearchResultsTableView numberOfSections];
        //判断section 位置
        if ((aIndexPath.section<=tableSecNum - 1 
            &&aIndexPath.section >=0))
        {
            int rowsInSec   = [self.iSearchResultsTableView 
                               numberOfRowsInSection:aIndexPath.section];
            //判断row位置
            if (aIndexPath.row <= rowsInSec) 
            {
                [self.iSearchResultsTableView  beginUpdates];
                NSArray * array = [NSArray arrayWithObject:aIndexPath];
                [self.iSearchResultsTableView reloadRowsAtIndexPaths:array 
                      withRowAnimation:UITableViewRowAnimationFade];
                [self.iSearchResultsTableView endUpdates];
            }
        }
    }
}


-(void)updataNormalCellAtIndexPath:(NSIndexPath*)aIndexPath
{
  [self.iNormalTableView  beginUpdates];
  NSArray * array = [NSArray arrayWithObject:aIndexPath];
  [self.iNormalTableView reloadRowsAtIndexPaths:array
                                      withRowAnimation:UITableViewRowAnimationFade];
  [self.iNormalTableView endUpdates];
}

#pragma mark tableview 协议的实现
//此处判断当前列表类型用的是实例类型判断，而不是变量，因为界面有可能显示搜索，但是，更新的是普通列表。
//分组的数目
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    int numberOfSection = 0;
    
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if (iSearchFlags.iIsMutipleSection == NO)
        {
            //单个分组的情形
            numberOfSection = 1;
        }
        else 
        {
            //多个分组的情形
            numberOfSection = [self.iSearchGroupArray count];
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        numberOfSection = 1;
    }
    
    return numberOfSection;
}

//每个分组的标题
- (NSString *)tableView:(UITableView *)tableView 
titleForHeaderInSection:(NSInteger)section
{
    NSString * titleSection = nil;
    
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if (iSearchFlags.iIsMutipleSection == NO)
        {
            //单个分组的情形
            titleSection = nil;
        }
        else 
        {
          if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f)
          {
#warning modify by wangzhyc (解决SDK6在iOS7上的崩溃问题)
            if (section<[self.iSearchGroupArray count])
            {
              //多个分组的情形
              CWASearchListGroupDetail * groupType =
              [self.iSearchGroupArray objectAtIndex:section];
              titleSection = groupType.iSectionName;
            }
          }
          else
          {
            //多个分组的情形
            CWASearchListGroupDetail * groupType =
            [self.iSearchGroupArray objectAtIndex:section];
            titleSection = groupType.iSectionName;
          }
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        titleSection = nil;
    }
    
    return titleSection;
}
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.iMWAListCacheDelegate
         respondsToSelector:@selector(setTableView:editingStyleForRowAtIndexPath:)])
    {
       return [self.iMWAListCacheDelegate setTableView:tableView
                                       editingStyleForRowAtIndexPath:indexPath];
    }
    else
    {
        return UITableViewCellEditingStyleNone;
    }
}
- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
    int secHeight = 0.0f;
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if (iSearchFlags.iIsMutipleSection == YES)
        {
            //多个分组的情形
            secHeight = WA_LISTCACHE_SECHEIGHT;
        }
        else 
        {
            //单个分组的情形
            secHeight = 0.0f;
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        secHeight = 0.0f;
    }
    return secHeight;
}

//tableview headview
- (UIView *)tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section
{
    UIView * headerView = nil;
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if (iSearchFlags.iIsMutipleSection == YES)
        {
            if ([self.iMWAListCacheDelegate
                 respondsToSelector:@selector(setHeader:viewForHeaderInSection:)])
            {
                headerView = [self.iMWAListCacheDelegate setHeader:tableView viewForHeaderInSection:section];
            }
            else
            {
            //多个分组的情形
            headerView = [[[UIView alloc] 
                        initWithFrame:WA_LISTCACHE_HEADVIEWRECT] autorelease];
            CGRect lableFrame = headerView.bounds;
            lableFrame.size.width -=10;
            lableFrame.origin.x   +=10;
            UILabel *lable = [[UILabel alloc] initWithFrame:lableFrame];
            
            //显示名称
            CWASearchListGroupDetail * groupType =
            [self.iSearchGroupArray objectAtIndex:section];
            NSString * titleSection = groupType.iSectionName;
            lable.text = titleSection;
            
            //设置字体
            UIFont * font =[UIFont fontWithName:WA_SEARCH_SECTIONFONT 
                                           size:WA_SEARCH_SECTIONFONTSIZE];
            
            if (font !=nil)
            {
                [lable setFont:font];
            }
            //设置阴影
            [lable setShadowColor:[UIColor whiteColor]];
            [lable setShadowOffset:CGSizeMake(0, 1)];
            
            lable.backgroundColor = [UIColor clearColor];
            [lable setTextColor:[UIColor blackColor]];
            
            //背景
            UIImage * sectionbgimg = [UIImage imageNamed:WA_SEARCH_SECTIONBG];
            UIImageView * sectionbgimgView =[[UIImageView alloc] 
                                             initWithImage:sectionbgimg];
  
            [headerView addSubview:sectionbgimgView];
            [sectionbgimgView release];
            [headerView addSubview:lable];
            [lable release];
            }
        }
        else 
        {
            //单个分组的情形
            headerView = nil;
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        headerView = nil;
    }
    return headerView;
}

//每个分组里面cell数目
- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section 
{
    int intCount = 0;
    
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if (iSearchFlags.iIsMutipleSection == NO)
        {
            //单个分组的情形,被删除元素不显示，所以，要用真实的数目
            intCount = [self realSearchCount];
        }
        else 
        {
            //多个分组的情形
            CWASearchListGroupDetail * groupType =
            [self.iSearchGroupArray objectAtIndex:section];
            intCount = groupType.iSectionRowNum;
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        intCount = [self.iNormalArray count];
    }
    
    return  intCount;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  if(self.iMWAListCacheDelegate && [self.iMWAListCacheDelegate  respondsToSelector:@selector(tableViewscrollViewWillBeginDragging:)])
  {
    [self.iMWAListCacheDelegate tableViewscrollViewWillBeginDragging:scrollView];
  }
}
//分组里面的cell
- (UITableViewCell *)tableView:(UITableView *)tableView 
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = nil;
    
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        //准备数据
//        [self readyForData:indexPath];  2013-6-7 fanhn去掉此处理
        
        //设置数据,处理没有数据的情况
        id object = [self getAResultObject:indexPath];
        if ([object isKindOfClass:[NSNull class]])
        {
            NSString * strCellIdentifer = @"blankCell";
            cell = [tableView dequeueReusableCellWithIdentifier:strCellIdentifer];
            if (cell == nil)
            {
                cell = [[[UITableViewCell alloc] 
                         initWithStyle:UITableViewCellStyleDefault 
                         reuseIdentifier:strCellIdentifer] autorelease];
            }
            [self setOddEvenCellBg:cell WithIndexPath:indexPath];
        }
        else 
        {
            cell = [self.iMWAListCacheDelegate setCell:tableView 
                                 cellForRowAtIndexPath:indexPath];
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        
        cell = [self.iMWAListCacheDelegate setNormalCell:tableView 
                                   cellForRowAtIndexPath:indexPath];
    }
    
    return cell;
}

//点击了一个cell
- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.iSearchResultsTableView) 
    {
        [self.iMWAListCacheDelegate selectCell:tableView 
                       didSelectRowAtIndexPath:indexPath];
    }
    else if(tableView == self.iNormalTableView)
    {
        [self.iMWAListCacheDelegate selectNormalCell:tableView 
                       didSelectRowAtIndexPath:indexPath];
    }
}

- (void)tableView:(UITableView *)tableView
didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.iMWAListCacheDelegate
       respondsToSelector:@selector(deselectCell:didSelectRowAtIndexPath:)])
    {
      if (tableView == self.iSearchResultsTableView)
      {
          [self.iMWAListCacheDelegate deselectCell:tableView
                           didSelectRowAtIndexPath:indexPath];
      }
      else if(tableView == self.iNormalTableView)
      {
          [self.iMWAListCacheDelegate deselectCell:tableView
                           didSelectRowAtIndexPath:indexPath];
      }
    }
}

//tableview cell的高度，如果子类不初始化
- (CGFloat)tableView:(UITableView *)tableView 
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //返回cell的高度
    CGFloat cellHeight = 0;
    
    //如果是子类初始化，那么由子类自己初始化高度，如果子类没有实现，默认44
    if (tableView == self.iSearchResultsTableView) 
    {
        if ([self.iMWAListCacheDelegate 
            respondsToSelector:@selector(setCellHeight:heightForRowAtIndexPath:)]) 
        {
            cellHeight = [self.iMWAListCacheDelegate setCellHeight:tableView
                                       heightForRowAtIndexPath:indexPath];
        }
        else 
        {
            cellHeight = WA_LISTCACHE_CELLHEIGHT;
        }
    }
    else if(tableView == self.iNormalTableView)
    {
        //请求设置，高度
        if ([self.iMWAListCacheDelegate 
             respondsToSelector:@selector(setNormalCellHeight:heightForRowAtIndexPath:)])
        {
            cellHeight = [self.iMWAListCacheDelegate setNormalCellHeight:tableView
                                       heightForRowAtIndexPath:indexPath];
        }
        else
        {
            cellHeight = WA_LISTCACHE_CELLHEIGHT;
        }
    }
    else 
    {
        cellHeight = WA_LISTCACHE_CELLHEIGHT;
    }
    
    return cellHeight;
}

// tableview cell是否可以编辑
- (BOOL)tableView:(UITableView *)tableView 
canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    BOOL biscanedit = NO;
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        if ([self.iMWAListCacheDelegate respondsToSelector:
            @selector(setCellEdit:canEditRowAtIndexPath:)])
        {
            biscanedit = [self.iMWAListCacheDelegate setCellEdit:tableView canEditRowAtIndexPath:indexPath];
        }
        else 
        {
            biscanedit = NO;
        }
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        biscanedit = YES;
    }
    return biscanedit;
}

- (void)deleteAcell:(NSIndexPath *)indexPath tableView:(UITableView *)tableView
{
  int realCurRowPos = [self countPosFromIndexPath:indexPath];
  //考虑到被删除元素的问题，此处curRowPos 要修正,更加真实的位置，获取在数组中的位置
  int curRowPos = [self getSearchIndex:realCurRowPos];
  //删除缓存中的数据
  WAListCacheRange range;
  range.WAListCacheLength = 1;
  range.WAListCacheLocation = curRowPos;
  TWADeleteResultType result = [self.iSearchResultsTableView
                                deletaObjectsAtRange:range];
  if (result == EDeleteSec) 
  {
    //删除搜索结果中的数据
    [self remDataAtIndex:curRowPos];
    
    //删除tableview中的cell
    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
                     withRowAnimation:UITableViewRowAnimationFade];
  }
  
  //如果全部删除了，那就要显示无数据页面,是指被删除后数目，所以用被删除的元素数目
  if ([self realSearchCount]==0)
  {
    iNormalIsShowNoDImg = YES;
    self.iNoDataImgView.hidden = NO;
  }
}

// tableview cell的编辑
- (void)tableView:(UITableView *)tableView 
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //搜索样式
    if (tableView == self.iNormalTableView) 
    {
        if (editingStyle == UITableViewCellEditingStyleDelete) 
        {
            if ([self.iMWAListCacheDelegate 
                 respondsToSelector:@selector(deleteANormalObject:)])
            {
                //判断子类是否处理成功，如果，子类处理成功了，才会删掉数据
                BOOL isOpeSec = [self.iMWAListCacheDelegate deleteANormalObject:indexPath];
                if(isOpeSec == YES) 
                {
                    [self.iNormalArray removeObjectAtIndex:[indexPath row]];
                    [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] 
                                     withRowAnimation:UITableViewRowAnimationFade];
                    //如果全部删除了，那就要显示无数据页面
                    if ([self.iNormalArray count]==0)
                    {
                        iNormalIsShowNoDImg = YES;
                        self.iNoDataImgView.hidden = NO;
                    }
                }
            }
        }   
        else if (editingStyle == UITableViewCellEditingStyleInsert) 
        {
            //cell的插入事件，目前不处理
        } 
    }
    else if(tableView == self.iSearchResultsTableView)
    {
        if (editingStyle == UITableViewCellEditingStyleDelete) 
        {
            if ([self.iMWAListCacheDelegate 
                 respondsToSelector:@selector(deleteASearchObject:)])
            {
                //判断子类是否处理成功，如果，子类处理成功了，才会删掉数据
                BOOL isOpeSec = [self.iMWAListCacheDelegate deleteASearchObject:indexPath];
                if(isOpeSec == YES) 
                {
                  [self deleteAcell:indexPath tableView:tableView];
                }
            }
        }   
        else if (editingStyle == UITableViewCellEditingStyleInsert) 
        {
            //cell的插入事件，目前不处理
        }
    }
}

// tableview cell是否可以移动
- (BOOL)tableView:(UITableView *)tableView
canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    BOOL biscanmove = NO;
    //搜索样式
    if (tableView == self.iSearchResultsTableView) 
    {
        biscanmove = NO;
    }
    //普通列表的样式
    else if(tableView == self.iNormalTableView) 
    {
        //目前，cell不容许移动
        biscanmove = NO;
    }
    return biscanmove;
}

// tableview的cell的移动
- (void)tableView:(UITableView *)tableView 
moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    //普通样式
    if (tableView == self.iNormalTableView) 
    {
        if ([self.iMWAListCacheDelegate 
             respondsToSelector:@selector(moveNormalCell:moveRowAtIndexPath:toIndexPath:)]) 
        {
            //判断子类是否交换成功
            BOOL isExchangeSuccess = [self.iMWAListCacheDelegate moveNormalCell:tableView
                                                       moveRowAtIndexPath:fromIndexPath
                                                              toIndexPath:toIndexPath];
            //子类交换成功后，才会交换
            if (isExchangeSuccess) 
            {
                [self.iNormalArray exchangeObjectAtIndex:fromIndexPath.row withObjectAtIndex:toIndexPath.row];
            }
            else 
            {
                //交换不成功
                [tableView moveRowAtIndexPath:toIndexPath toIndexPath:fromIndexPath];
            }
        }
        else 
        {
            [tableView moveRowAtIndexPath:toIndexPath toIndexPath:fromIndexPath];
        }
    }
}

#pragma mark - RefreshTableView的委托
//列表上拉刷新
- (void)pullingTableViewDidStartRefreshing:(CWAPullingRefreshTableView *)tableView
{
    //不是第一次进入才会进入代码
    self.iSearchResultsTableView.reachedTheEnd = NO;

    //应该清空缓存,清空数据重新开始
    iRequestStartPos = WA_LISTCACHE_FIRSTPOST;
    iRequesMaxPagePos= 0;
    [self.iSearchResultsTableView deleteAllObjects];
    //清空分组
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        [self.iSearchGroupArray removeAllObjects];
        [self.iSearchTempGroupArray removeAllObjects];
    }
    [self.iSearchGroupArray removeAllObjects];
    [self.iSearchTempGroupArray removeAllObjects];
    //清空数据
    [self.iSearchResultArray removeAllObjects];
 
    [self reloadTableView];
    [self startQueryOneCondition:self.iSearchText 
                    withStartPos:iRequestStartPos
                     withPageNum:iRequestPageNum];
}

//列表下拉加载
- (void)pullingTableViewDidStartLoading:(CWAPullingRefreshTableView *)tableView
{  
    //不是第一次进入才会进入代码
    //新的位置
    if (iRequestStartPos>0) 
    {
        iRequestStartPos += iRequestPageNum;
    }
    [self addData];
}

//tableview停止滚动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView == self.iSearchResultsTableView)
    {
        [self.iSearchResultsTableView tableViewDidScroll:scrollView];
    }
    else if(scrollView == self.iNormalTableView)
    {
        //普通列表的停止滚动不处理
    }
}

//tableview将要停止拖动
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView 
                  willDecelerate:(BOOL)decelerate
{
    if (scrollView == self.iSearchResultsTableView)
    {
        [self.iSearchResultsTableView tableViewDidEndDragging:scrollView];
    }
    else if(scrollView == self.iNormalTableView)
    {
        //普通列表的停止拖动事件，不处理
    }
}

#pragma mark 历史记录相关
//历史记录点击了某一项
- (void)clickOneRow:(NSString *)value
{
    NSString * searchText = @"";
    searchText =value;
    iSearchBar.text = searchText;
    
    //列表可以刷新
    //空数据页面不能上拉，下拉刷新
    [self.iSearchResultsTableView setNormalTableview:NO];
    //判断是否是曾经搜索过的,并且控制它，默认
    if ([self.iSearchText isEqualToString:searchText]
        && self.iSearchActionDef.iIsClickHistoryCache)
    {
        //判断是否有数据，如果没有数据，没有必要跳进来，没有数据是指，不包含被删除的部分
        int resultCount  = [self realSearchCount];
        if (resultCount>0) 
        {
            [self.iSearchResultsTableView setNormalTableview:NO];
            [self reloadTableView];
        }
    }
    else 
    {
        //不是第一次进入才会进入代码
        self.iSearchResultsTableView.reachedTheEnd = NO;
        //记录搜索词条
        self.iSearchText = iSearchBar.text;
        
        //清空缓存，清空数据，初始化startpos
        [self.iSearchResultsTableView deleteAllObjects];
        [self.iSearchResultArray removeAllObjects];
        if(iSearchViewDeatailFlags.iIsMutipleSection == YES)
        {
            //清空分组信息
            [self.iSearchGroupArray removeAllObjects];
            [self.iSearchTempGroupArray removeAllObjects];
        }
        iRequestStartPos = WA_LISTCACHE_FIRSTPOST;
        iRequesMaxPagePos = 0;
        [self reloadTableView];
        //开始搜索
        [self startQueryOneCondition:searchText
                        withStartPos:iRequestStartPos 
                         withPageNum:iRequestPageNum];
    }
    
    [self.iSearchBar resignFirstResponder];
    
    BOOL bIsCancelQuit = [self getIsCancelQuit];
    if (bIsCancelQuit)
    {
        [self.iSearchBar setShowsCancelButton:YES animated:NO];
    }
    else 
    {
        [self.iSearchBar setShowsCancelButton:NO animated:YES];
    }
}

//键盘将要出现
- (void)keyboardWillShow:(NSNotification *)n
{   
    //根据键盘的情况修正历史记录的坐标
    NSDictionary* userInfo = [n userInfo];
    // get the size of the keyboard
    NSValue* boundsValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGSize keyboardSize = [boundsValue CGRectValue].size;
    //动画显示历史纪录
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0];
    CGRect cgfFrame = iHistoryDDList.view.frame;
    cgfFrame.origin.y = iSearchBarView.frame.origin.y 
        + iSearchBarView.frame.size.height;
    cgfFrame.size.height = (WA_SCREEN_HEIGHT - keyboardSize.height) 
                         - cgfFrame.origin.y;
    
    iHistoryDDList.view.frame = cgfFrame;
    [self keyboardDidShow:n];
    [UIView commitAnimations];
}

- (void)keyboardDidShow:(NSNotification *)n
{
  return;
}

//键盘将要消失
-(void)keyboardWillHidden:(NSNotification*)n
{
    //根据键盘的情况修正历史记录的坐标
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationDuration:0];
    CGRect cgfFrame = iHistoryDDList.view.frame;
    cgfFrame.origin.y = iSearchBarView.frame.origin.y 
        + iSearchBarView.frame.size.height;
    if (iSearchViewDeatailFlags.iHaveBottomArea == YES)
    {
        cgfFrame.size.height = (WA_SCREEN_HEIGHT - 
                                self.iBottomSubView.frame.size.height)
                                - cgfFrame.origin.y;
    }
    else 
    {
        cgfFrame.size.height = WA_SCREEN_HEIGHT - cgfFrame.origin.y;
    }
    
    iHistoryDDList.view.frame = cgfFrame;
    [self keyboardDidHidden:n];
    [UIView commitAnimations];
}

//键盘将要消失
-(void)keyboardDidHidden:(NSNotification*)n
{
  return;
}

//显示历史记录
-(void)showHistoryList
{
    //显示搜索历时列表
    self.iSearchConditionArray = [self.iCWASearchController getHistoryArray];
    
    //获取searchbar位置
    [iHistoryDDList updateData:self.iSearchConditionArray];
    CGRect historyFram   = iHistoryDDList.view.frame;
    historyFram.origin.y = iSearchBarView.frame.origin.y +
                        iSearchBarView.frame.size.height;
    iHistoryDDList.view.frame = historyFram;
    [self.view addSubview:iHistoryDDList.view];
    iHistoryDDList.view.hidden = NO;
}

//隐藏历史记录
-(void)hiddenHistoryList
{
    [iHistoryDDList.view removeFromSuperview];
    [self.iSearchBar resignFirstResponder];

    BOOL bIsCancelQuit = [self getIsCancelQuit];
    if (bIsCancelQuit)
    {
        [self.iSearchBar setShowsCancelButton:YES animated:NO];
    }
    else 
    {
        [self.iSearchBar setShowsCancelButton:NO animated:YES];
    }
    iHistoryDDList.view.hidden = YES;
}

-(void)startQueryWithCondition:(NSString*)aCondition
{
    [self startQueryOneCondition:aCondition
                    withStartPos:iRequestStartPos
                     withPageNum:iRequestPageNum];
}

-(void)startQueryOneCondition:(NSString*)aCondition
                 withStartPos:(int)aStartPos 
                  withPageNum:(int)aPageNum
{
    if (iSearchViewDeatailFlags.iHaveGroupButton || [self.iGroupButtonTitleArray count]>0)
    {
        //有分组的形式
        if([self.iMWALCCDelegate
            respondsToSelector:
            @selector(startSearchWithGroup:StartPos:PageNum:GroupBtIndex:GroupBtTitle:WithLoadType:)])
        {
            //分组信息
            int index = iGroupButtonPressIndex;
            
            //请求的类型
            TWALCSearchType searchtype = (aStartPos == 1?ELCSearchRefresh:ELCSearchReload);
            
            NSString * btTitle = [self.iGroupButtonTitleArray objectAtIndex:index];
            [self.iMWALCCDelegate startSearchWithGroup:aCondition
                                                    StartPos:iRequestStartPos
                                                     PageNum:iRequestPageNum
                                                GroupBtIndex:index
                                                GroupBtTitle:btTitle 
                                                WithLoadType:searchtype];
        }
    }
    else 
    {
        //没有分组的形式
        if([self.iMWALCCDelegate
            respondsToSelector:@selector(startSearch:StartPos:PageNum:WithLoadType:)])
        {
            //请求的类型
            TWALCSearchType searchtype = (aStartPos == 1?ELCSearchRefresh:ELCSearchReload);
            
            //请求联网
            [self.iMWALCCDelegate startSearch:aCondition
                                           StartPos:iRequestStartPos 
                                            PageNum:iRequestPageNum 
                                 WithLoadType:searchtype];
        }
    }
}

#pragma mark 缓存处理相关
//添加数据
-(void)addData
{
    iIsNetWorking = YES;
    //需要开始搜索
    [self startQueryOneCondition:self.iSearchText
                    withStartPos:iRequestStartPos
                     withPageNum:iRequestPageNum];
}

//添加Cell
-(void)addCells:(WAListCacheRange)aAddRange
{
    //增加cell
    int start = aAddRange.WAListCacheLocation;
    int end   = aAddRange.WAListCacheLength + aAddRange.WAListCacheLocation;
    
    //根据dansection，多section分别处理
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        //多section
        for (int index = start; index < end;index++)
        {
            //将要插入的位置
            NSIndexPath * indexpath = [self getIndexPathFromTempAIndex:index];
            //现有的位置
            int section = [self.iSearchResultsTableView numberOfSections];
            if (indexpath.section <= section -1) 
            {
                //table已经有了这个section,直接添加cell就行了
                //更新group信息
                int groupNum = [self.iSearchGroupArray count];
                CWASearchListGroupDetail * agroup =
                [self.iSearchGroupArray objectAtIndex:groupNum - 1];
                agroup.iSectionRowNum += 1;
            }
            else 
            {
                //当前没有这个section，需要添加
                //添加section
                CWASearchListGroupDetail * agroup =
                    [self.iSearchTempGroupArray objectAtIndex:indexpath.section];
                
                CWASearchListGroupDetail * aNewGroup =
                    [[CWASearchListGroupDetail alloc] init];
                [self.iSearchGroupArray addObject:aNewGroup];
                aNewGroup.iSectionIndex = agroup.iSectionIndex;
                aNewGroup.iSectionKey   = agroup.iSectionKey;
                aNewGroup.iSectionName  = agroup.iSectionName;
                aNewGroup.iSectionRowNum= 0;
            
                //添加section
                [self.iSearchResultsTableView beginUpdates];
                NSIndexSet * indexset = [NSIndexSet indexSetWithIndex:indexpath.section];
                [self.iSearchResultsTableView insertSections:indexset
                                            withRowAnimation:UITableViewRowAnimationFade];
                [self.iSearchResultsTableView endUpdates];
                //添加完section后，要添加cell
                aNewGroup.iSectionRowNum ++;
                [aNewGroup release];
            }
            //更新cell
            [self.iSearchResultsTableView beginUpdates];
            [self.iSearchResultsTableView 
             insertRowsAtIndexPaths:[NSArray arrayWithObject:indexpath] 
             withRowAnimation:UITableViewRowAnimationFade];
            [self.iSearchResultsTableView endUpdates];
        }
    }
    else 
    {
        //单section
        [self.iSearchResultsTableView beginUpdates];
        for (int index = start; index < end;index++)
        {
            //indexpath应该根据分组来获取
            NSIndexPath * indexPathAdd = nil;
            
            //单个分组沿用以前的方式
            indexPathAdd=[NSIndexPath indexPathForRow:index inSection:0];
            
            //更新tableview
            [self.iSearchResultsTableView 
             insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPathAdd] 
             withRowAnimation:UITableViewRowAnimationFade];
        }
        [self.iSearchResultsTableView endUpdates];
    }
}


//reloadTableView
-(void)reloadTableView
{
    //如果是mutisection要同步数据
    if (iSearchFlags.iIsMutipleSection == YES)
    {
        int intSum = [self.iSearchTempGroupArray count];
        [self.iSearchGroupArray removeAllObjects];
        for (int index =0 ; index <intSum; index++)
        {
            CWASearchListGroupDetail * aGroup = 
                [self.iSearchTempGroupArray objectAtIndex:index];
            //添加到真正的数组中
            CWASearchListGroupDetail * aNewGroup =
            [[CWASearchListGroupDetail alloc] init];
            aNewGroup.iSectionIndex = aGroup.iSectionIndex;
            aNewGroup.iSectionKey   = aGroup.iSectionKey;
            aNewGroup.iSectionName  = aGroup.iSectionName;
            aNewGroup.iSectionRowNum= aGroup.iSectionRowNum;
            [self.iSearchGroupArray addObject:aNewGroup];
            [aNewGroup release];
        }
    }
    [self.iSearchResultsTableView reloadData];
    [self.iNormalTableView reloadData];
}

//准备数据，因为，内存中的Array是一个动态变化的过程。
-(void)readyForData:(NSIndexPath*)indexpath
{
    //int curRowPos = [indexpath row];
    int realCurRowPos = [self countPosFromIndexPath:indexpath];
    //循环遍历
    int arraySize = [iSearchResultArray count];
    //考虑到可能被删除的情况，此处curRowPos要考虑被删元素问题
    int curRowPos = [self getSearchIndex:realCurRowPos];
    
    //某时刻肯定只能出现一侧没有数据的情况
    //左侧遍历
    int startLeft = curRowPos - 1;
    for (int index = startLeft; index>0; index--)
    {
        if (index< curRowPos - ArrayRealNum) 
        {
            //小于边界值,并且不为
            [self delDataAtIndex:index];
        }
        else 
        {
            //判断是否从缓存获取数据成功
            BOOL bIsSec = [self getDataFromCache:index];
            if (bIsSec == NO)
            {
                //需要联网获取
                [self getDataFromNet:index];
            }
        }
    }
    
    //右侧遍历,及本身遍历
    int startRight = curRowPos;
    for (int index = startRight; index<arraySize; index++) 
    {
        if (index > curRowPos + ArrayRealNum)
        {
            //小于边界值,并且不为
            [self delDataAtIndex:index];
        }
        else 
        {
            //判断是否需要从缓存获取数据
            BOOL bIsSec = [self getDataFromCache:index];
            if (bIsSec == NO) 
            {
                //需要联网获取
                [self getDataFromNet:index];
            }
        }
    }
}

//删除指定位置的数据
-(BOOL)delDataAtIndex:(int)aIndex
{
    //删除指定位置的数据，此处的删除不是真的删除数据而是用null代替
    BOOL bIsHandlerSec = YES;
    id object = [iSearchResultArray objectAtIndex:aIndex];
    if (![object isKindOfClass:[NSString class]])
    {
        NSNull * nilObject =  [NSNull null];
        [self.iSearchResultArray replaceObjectAtIndex:aIndex withObject:nilObject];
    }
    return bIsHandlerSec;
}

// 移除数组中的一个特定位置的元素
-(BOOL)remDataAtIndex:(int)aIndex
{
    //移除指定位置的数据
    BOOL bIsHandlerSec = YES;
    id object = [iSearchResultArray objectAtIndex:aIndex];
    if (![object isKindOfClass:[NSString class]])
    {
        NSString * nilObject = @"";
        [self.iSearchResultArray replaceObjectAtIndex:aIndex withObject:nilObject];
    }
    //如果是多分组，要删除分组的信息里面的数目
    if (iSearchViewDeatailFlags.iIsMutipleSection == YES)
    {
        NSIndexPath * groupIndexPath = [self getIndexPathFromTempAIndex:aIndex];
        //删除临时分组信息
        CWASearchListGroupDetail * aGroupTypeTemp = 
            [self.iSearchTempGroupArray objectAtIndex:groupIndexPath.section]; 
        aGroupTypeTemp.iSectionRowNum -= 1;
        //删除分组信息
        CWASearchListGroupDetail * aGroupType = 
            [self.iSearchGroupArray objectAtIndex:groupIndexPath.section];
        aGroupType.iSectionRowNum -= 1;
    }
    return bIsHandlerSec;
}

//从缓存中获取数据
-(BOOL)getDataFromCache:(int)aIndex
{
    //判断操作是否成功,为YES,表示，已有数据，或者从缓存获取到了。
    //为NO表示操作不成功，多表示cache里面也没有数据
    BOOL bIsHandleSec = YES;
    id object = [iSearchResultArray objectAtIndex:aIndex];
    if ([object class] == [NSNull class])
    {
        //需要从缓存获取
        WAListCacheRange range;
        range.WAListCacheLocation = aIndex;
        range.WAListCacheLength   = 1;
        NSMutableArray * cacheObjects = [self.iSearchResultsTableView getObjects:range];
        if ([cacheObjects count]>0) 
        {
            //如果从缓存中获取到了数据
            id object = [cacheObjects objectAtIndex:0];
            [self.iSearchResultArray replaceObjectAtIndex:aIndex withObject:object];
        }
        else 
        {
            //没有从缓存中获取到数据，这种情况通常发生在
            //缓存已经满的情况
            bIsHandleSec = NO;
            //停止tableview的加速滚动
            self.iSearchResultsTableView.decelerationRate = 0.0f;
            //需要重新获取数据
        }
    }
    return bIsHandleSec;
}

//从网络获取数据
-(BOOL)getDataFromNet:(int)aIndex
{
    BOOL handleIsSec = YES;
    //当前在联网就不能请求了
    if(iIsNetWorking)
    {
        handleIsSec = NO;
    }
    else 
    {
        //判断所要请求的数据所在的页码
        int tryPagePos = 1;
        int tryPageNum = 1;
        //循环计算出所在的页码
        while (YES)
        {
            if (tryPageNum*iRequestPageNum <aIndex+1)
            {
                tryPageNum++;
                tryPagePos+=iRequestPageNum;
            }
            else 
            {
                //找到了页码，所以跳出循环
                break;
            }
        }
        //超过了曾经请求过的最大的页码，这种请求要去掉，因为狠可能，后续没有
        //数据了，容许请求的话，会造成多次重复请求
        BOOL isCanGet = (tryPagePos <= iRequesMaxPagePos);
        if (isCanGet) 
        {
            iIsNetWorking = YES;
            //请求联网
            iRequestStartPos = tryPagePos;
            //需要开始搜索
            [self startQueryOneCondition:self.iSearchText
                            withStartPos:iRequestStartPos 
                             withPageNum:iRequestPageNum];
            handleIsSec = YES;
        }
        else 
        {
            handleIsSec = NO;
        }
    }
    return handleIsSec;
}

#pragma mark 下面这些和删除有关
//此函数取的count是，不包括被删除元素的（被置为@“”）
- (NSUInteger)realSearchCount
{
    int count = [self.iSearchResultArray count];
    int realObjectCount = count;
    for (int index = 0; index<count; index++)
    {
        id object = [self.iSearchResultArray objectAtIndex:index];
        BOOL isObjectValid = YES;
        if ([object isKindOfClass:[NSString class]])
        {
            if ([object isEqualToString:WA_LISTCACHE_DELETEMARK])
            {
                isObjectValid = NO; //这种情况表示这个数据被删除
            }
        }
        //表示这个数据被删除了
        if (isObjectValid==NO)
        {
            realObjectCount --;
        }
    }
    return realObjectCount;
}

//根据真实的位置，获取在数组中的位置
- (NSUInteger)getSearchIndex:(int)aRealIndex
{
    int aHaveFindPos = -1;
    //考虑到有可能某个数据被删除了，所以，被删除的数据，位置要移除
    int realObjectIndex = -1;
    for (int index = 0; index<[self.iSearchResultArray count]; index++)
    {
        realObjectIndex ++;
        id object = [self.iSearchResultArray objectAtIndex:index];
        BOOL isObjectValid = YES;
        if ([object isKindOfClass:[NSString class]])
        {
            if ([object isEqualToString:WA_LISTCACHE_DELETEMARK])
            {
                isObjectValid = NO; //这种情况表示这个数据被删除
            }
        }
        if (isObjectValid == YES)
        {
            aHaveFindPos ++;
            //如果数目已够要寻找的数目
            if (aRealIndex <=aHaveFindPos)
            {
                break;
            }
        }
    }   
    return realObjectIndex;
}

//根据数组的位置，获取在真实的位置
- (NSUInteger)getRealSearchIndex:(int)aRealIndex
{
    return 0;
}

//此处索引位置是不包括被删除元素的位置
- (id)realSearchObjectAtIndex:(NSUInteger)aObjectIndex
{
    id  objectReturn = nil;
    //考虑到有可能某个数据被删除了，所以，被删除的数据，位置要移除
    int realObjectIndex = [self getSearchIndex:aObjectIndex];
    objectReturn = [self.iSearchResultArray objectAtIndex:realObjectIndex];
    return objectReturn;
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

- (NSArray *)getVisibleCells
{
  return [iSearchResultsTableView visibleCells];
}
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] 
        removeObserver:self 
                  name:UIKeyboardWillShowNotification
                object:self.view.window];
    [[NSNotificationCenter defaultCenter] 
        removeObserver:self
                  name:UIKeyboardWillHideNotification
                object:self.view.window];
    [iCWASearchController release];
    [iSearchViewDeatailFlags release];
    [iSearchFlags release];
    [iNomalFlags release];
    [iSearchActionDef release];
    [iSearchResultsTableView release];
    [iNormalTableView release];
    [iTitleBarView release];
    [iTitleBarSubView release];
    [iSearchResultUIView release];
    [iSearchConditionArray release];
    [iSearchBarView release];
    [iSearchBar release];
    [iSearchCancelBt release];
    [iHistoryDDList release];
    [iNormalArray release];
    [iSearchResultArray release];
    [iSearchGroupArray release];
    [iSearchTempGroupArray release];
    [iGroupButtonView release];
    [iGroupButton release];
    [iRedLabelUIView release];         
    [iRedLabelUILabel release];
    [iConditionStr release];
    [iRedLabelStr release];
    [iGroupButtonTitleArray release];
    [iBottomAreaView release];
    [iBottomSubView release];
    [iRightNavButton release];
    [iRightNavBtTitle release];
    [iRightNavBtBg release];
    [iLeftNavButton release];
    [iLeftNavBtTitle release];
    [iLeftNavBtBg release];
    [iTitle release];
    [iTitleBg release];
    [iTitleBgImg release];
    [iHistoryCacheFileName release];
    [iSearchText release];
    [iNoDataImgView release];
    [super dealloc];
}

- (void)setSearchTableFrame:(CGRect)aSearchTableFrame
{
  iSearchResultsTableView.frame = aSearchTableFrame;
}

- (CGRect)getSearchTableFrame
{
  return iSearchResultsTableView.frame;
}
@end
