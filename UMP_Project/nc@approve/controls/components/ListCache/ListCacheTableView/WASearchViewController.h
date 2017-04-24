/*!
 @header WASearchViewController.h
 @abstract 可用量搜索结果的viewcontroller
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import <UIKit/UIKit.h>
#import "WASearchController.h"
#import "WACacheTableView.h"
#import "WAGroupButtonView.h"
#import "WAHistoryDDList.h"
#import "WASearchDef.h"
#import "WASpinnerView.h"
#import "WAListCacheProtocal.h"

#pragma mark -
#pragma mark 定义界面样式
/*!
 @enum
 @abstract listCache的样式
 @constant EListCacheSearch    搜索类型
 @constant EListCacheNormal    普通类型
 */
typedef enum
{
    EListCacheSearch = 0,   //搜索类型
    EListCacheNormal,       //普通类型
} TWAListCacheViewType;

/*!
 @enum
 @abstract listCache 搜索界面的样式
 @constant ELCSearchTSGB  搜索界面,含有标题，searcbar，groupbutton，底部区域   
 @constant EListCacheNormal    普通样式
 */
typedef enum
{
    ELCSearchTSGB = 0,//含有标题，searcbar，groupbutton，底部区域
    ELCSearchTSB,     //含有标题，searcbar，底部区域
    ELCSearchTSG,     //含有标题，searcbar，groupbutton
}TWAListCacheSearchStyle;


/*!
 @enum
 @abstract TWAListCacheNoDataStyle 空数据界面的样式
 @constant ELCSearchNoDataOld  老版本图片提示空数据页面
 @constant ELCSearchNoDataNew63    63UE适配新空数据页面
 */
typedef enum
{
  ELCSearchNoDataOld = 0,     //老版本空数据页面(图片)
  ELCSearchNoDataNew63  //63UE适配新空数据页面
}TWAListCacheNoDataStyle;

/*!
 @interface
 @abstract 初始化界面的定义
 */
@interface CWASearchListViewStyle:NSObject
{
    BOOL iHaveTitleBar;      //是否有titleBar,当没有titlebar时，left/right 
                             //button,title都不会有
    BOOL iHaveLeftButton;    //有没有左边按钮
    BOOL iHaveRightButton;   //有没有右边按钮
    BOOL iHaveTitleText;     //有没有标题文本
    BOOL iHaveSearchBar;     //有没有搜索条
    BOOL iHaveGroupButton;   //有没有groupbutton
    BOOL iHaveRedLabel;      //有没有红色的条
    BOOL iHaveBottomArea;    //有没有底部区域
    BOOL iIsMutipleSection;  //是否是多分组的形式
    BOOL iIsCurViewSearch;   //是否当前界面搜索，为NO，则不会弹出键盘
    BOOL iIsCancelSQuit;     //取消搜索按钮是退出搜索界面功能
    BOOL iIsFirstHistory;    //是否默认显示历史记录，显示历史记录时
    TWAListCacheNoDataStyle iNoDataStyle; //空数据页面样式，默认为老版本（图片）
}
@property(nonatomic,readwrite)BOOL iHaveTitleBar;
@property(nonatomic,readwrite)BOOL iHaveLeftButton;
@property(nonatomic,readwrite)BOOL iHaveRightButton;
@property(nonatomic,readwrite)BOOL iHaveTitleText;
@property(nonatomic,readwrite)BOOL iHaveSearchBar;
@property(nonatomic,readwrite)BOOL iHaveGroupButton;
@property(nonatomic,readwrite)BOOL iHaveRedLabel;
@property(nonatomic,readwrite)BOOL iHaveBottomArea;
@property(nonatomic,readwrite)BOOL iIsMutipleSection;
@property(nonatomic,readwrite)BOOL iIsCurViewSearch;
@property(nonatomic,readwrite)BOOL iIsCancelSQuit;
@property(nonatomic,readwrite)BOOL iIsFirstHistory;
@property(nonatomic,readwrite)TWAListCacheNoDataStyle iNoDataStyle;

/*!
 @method
 @abstract 初始化函数
 */
-(id)init;

/*!
 @method
 @abstract 以一种特定样式来初始化
 @param  aStyle 请参照TWAListCacheSearchStyle的定义
 */
-(id)initWithStyle:(TWAListCacheSearchStyle)aStyle;

/*!
 @method
 @abstract 通过已有的一个界面样式初始化
 */
-(void)setStyle:(CWASearchListViewStyle*)aStyle;

@end

/*!
 @interface
 @abstract 列表行为控制定义
 */
@interface CWASearchListActionStyle : NSObject
{
    //这个值控制，点击了历史是否立即开始搜索,为NO时，立即开始搜索，不管是否上次是相同的
    //搜索条件，为YES，表示，不是立即开始搜索，如果上次是相同的搜索条件，就不搜索
    BOOL iIsClickHistoryCache;
}
/*!
 @method
 @abstract 初始化
 */
-(id)init;

/*!
 @property
 @abstract 是否点击了历史记录就开始搜索
 */
@property(nonatomic,readwrite)BOOL iIsClickHistoryCache;

@end

#pragma mark -
#pragma mark 列表分组记录情况
/*!
 @interface 
 @abstract 列表分组的定义
 */
@interface CWASearchListGroupDetail: NSObject
{
    NSString * iSectionName  ; //分组名称
    NSString * iSectionKey   ; //分组的key
    int        iSectionIndex ; //分组的位置，第几个分组
    int        iSectionRowNum; //该分组下面row的数目
}
@property(nonatomic,copy)NSString * iSectionName;
@property(nonatomic,copy)NSString * iSectionKey;
@property(nonatomic,readwrite)int   iSectionIndex;
@property(nonatomic,readwrite)int   iSectionRowNum;

-(id)init;

@end

#pragma mark -
#pragma mark CWASearchViewController的定义

@protocol MWAListCacheProtocal;
@protocol MWALCCProtocal;

@interface CWASearchViewController : UIViewController<UITableViewDataSource
,UITableViewDelegate,PullingRefreshTableViewDelegate,MWAHistoryDDListProtocal>
{
@public
    IBOutlet id<MWAListCacheProtocal> iMWAListCacheDelegate;
    IBOutlet id<MWALCCProtocal>       iMWALCCDelegate;
    NSMutableArray       * iNormalArray;       //普通列表数据
    NSMutableArray       * iSearchResultArray; //搜索结果
    NSMutableArray       * iSearchGroupArray;  //搜索分组的情况
    NSMutableArray       * iSearchTempGroupArray; 
    IBOutlet UIButton    * iLeftNavButton ;    //导航条左边按钮
    NSString             * iLeftNavBtTitle;    //左边按钮标题
    UIImage              * iLeftNavBtBg;       //左边按钮背景
    IBOutlet UIButton    * iRightNavButton;    //导航条右边按钮
    NSString             * iRightNavBtTitle;   //左边按钮标题
    UIImage              * iRightNavBtBg;      //左边按钮背景
    IBOutlet UILabel     * iTitle;             //标题
    NSString             * iTitleStr;          //标题字符串
    IBOutlet UIImageView * iTitleBg;           //标题背景
    UIImage              * iTitleBgImg;        //标题背景图片
    IBOutlet UIImageView * iNoDataImgView;     //没有数据页面
    BOOL                   iSearchIsShowNoDImg;//搜索界面是否显示无数据界面
    BOOL                   iNormalIsShowNoDImg;//普通界面是否显示无数据界面
    CWASearchListActionStyle*iSearchActionDef; //搜索列表行为定义
@protected
    IBOutlet CWASearchController * iCWASearchController;
    CWACacheTableView    * iSearchResultsTableView; //搜索结果的tableview
    UITableView          * iNormalTableView;        //普通的列表
    
    CWAHistoryDDList * iHistoryDDList; //历史记录
    
    NSString * iConditionStr;  //condition数据
    
    BOOL iIsHaveInitView;      //是否初始化过界面
    
    TWAListCacheViewType    iSearchCurViewType;     //当前界面的类型
    CWASearchListViewStyle *iSearchFlags;           //搜索界面样式
    CWASearchListViewStyle *iNomalFlags;            //普通界面样式
    CWASearchListViewStyle *iSearchViewDeatailFlags;//当前界面样式
    
    IBOutlet UIView      * iTitleBarView;           //标题栏的view
    UIView               * iTitleBarSubView;        //标题栏的subview
    IBOutlet UIView      * iSearchResultUIView;     //view放置，搜索结果的tableview
    NSMutableArray       * iSearchConditionArray;   //收索条件数组
    IBOutlet UIView      * iSearchBarView;
    IBOutlet UISearchBar * iSearchBar;              //搜索条
    IBOutlet UIButton    * iSearchCancelBt;         //搜索条取消按钮

    IBOutlet UIView      * iGroupButtonView;        //groupButton
    CWAGroupButtonView   * iGroupButton;
    int                    iGroupButtonPressIndex;  //groupbutton选中的index
    NSArray              * iGroupButtonTitleArray;  //groupButton的标题 
    
    IBOutlet UIView      * iRedLabelUIView;         //红条view
    IBOutlet UILabel     * iRedLabelUILabel;        //红条label
    NSString             * iRedLabelStr;  
    
    IBOutlet UIView      * iBottomAreaView;         //底部区域
    UIView               * iBottomSubView;
    
    //历史文件记录名称
    NSString             * iHistoryCacheFileName;
    
    //判断是否添加过数据
    BOOL                   iIsHavaAddDataBViewDid; 
    
    int iRequestStartPos ;   //请求接口的开始位置
    int iRequestPageNum  ;   //请求接口的页数
    int iRequesMaxPagePos;   //请求过的最大的页数
    
    NSString * iSearchText;  //搜索的文本
    BOOL iIsNetWorking;      //是否在联网
  TWASEARCHBARSTYLE iSearchBarStyle;//searchBar 样式
}
/*!
 @property
 @abstract 搜索的文本
 */
@property(nonatomic,copy)NSString * iSearchText;

#pragma mark 属性定义
/*!
 @method
 @abstract 初始化函数
 @param    aSearchStyle,界面样式类型，请参照CWASearchListViewStyleVo的定义
 */
-(id)init:(CWASearchListViewStyle*)aSearchStyle;

/*!
 @property
 @abstract MWAListCacheProtocal的委托
 */
@property(nonatomic,assign)id<MWAListCacheProtocal> iMWAListCacheDelegate;

/*!
 @property
 @abstract MWALCCProtocal
 */
@property(nonatomic,assign)id<MWALCCProtocal>iMWALCCDelegate;

/*!
 @property
 @abstract iConditionStr
 */
@property(nonatomic,copy)NSString * iConditionStr;

/*!
 @property
 @abstract red 字符串
 */
@property(nonatomic,retain) NSString * iRedLabelStr;

/*!
 @property
 @abstract searchviewcontroller的titlebar
 */
@property(nonatomic,retain)UIView * iTitleBarView;

/*!
 @property
 @abstract 导航条右边按钮
 */
@property(nonatomic,retain)UIButton * iRightNavButton;

/*!
 @property
 @abstract 导航条左边按钮
 */
@property(nonatomic,retain)UIButton * iLeftNavButton;

/*!
 @property
 @abstract 搜索条
 */
@property(nonatomic,retain)UISearchBar * iSearchBar;

/*!
 @property
 @abstract 搜索条
 */
@property(nonatomic,retain)UIView * iSearchBarView;

/*!
 @property
 @abstract 搜索列表行为控制
 */
@property(nonatomic,retain)CWASearchListActionStyle*iSearchActionDef;

/*!
 @property
 @abstract 历史记录cache文件的名称
 */
@property(nonatomic,copy) NSString  * iHistoryCacheFileName;
/*!
 	@property
 	@abstract	iSearchBarStyle	 searchBar 样式
 */
@property(nonatomic,assign)TWASEARCHBARSTYLE iSearchBarStyle;


#pragma mark 设置列表标识
/*!
 @method
 @abstract  设置normal的flags
 */
-(void)setNormalStyleFlags:(CWASearchListViewStyle*)aViewStyle;

#pragma mark 界面控件设置函数
/*!
 @mthod
 @abstract 支持在tiblebar上面放置一个subview
           这点来源于，U8产品首页的需求
 @param    aView:将要放置到标题栏的view，尺寸是
           320*44
 */
-(void)setTitleBarSubView:(UIView*)aView;

/*!
 @method
 @abstract 设置标题文本
 @param    aTitleStr:标题
 */
-(void)setTitleText:(NSString*)aTitleStr;

/*!
 @method
 @abstract 设置标题背景
 @param    aTitleBgImg:标题背景图片
 */
-(void)setTitleBg:(UIImage*)aTitleBgImg;

/*!
 @method
 @abstract 设置nav上的左侧按钮背景
 @param    aNavLeftBtImg:导航条左侧按钮背景
 */
-(void)setNavLeftBtBg:(UIImage*)aNavLeftBtImg;

/*！
 @method
 @abstract 设置leftbutton title
 @param    aNavLeftTitle:导航条右侧按钮标题
 */
-(void)setNavLeftBtTitle:(NSString*)aNavLeftTitle;

/*!
 @method
 @abstract 设置nav上的右侧按钮背景
 @param    aNavRightBtBg:导航条右侧按钮背景
 */
-(void)setNavRightBtBg:(UIImage*)aNavRightBtBg;

/*！
 @method
 @abstract 设置navrightbutton title
 @param    aNavRightBtTitle:导航条右侧按钮标题
 */
-(void)setNavRightBtTitle:(NSString*)aNavRightBtTitle;

/*!
 @method
 @abstract 设置底部区域，目前底部区域的尺寸是320*44
 @param    aView:底部区域view
 */
-(void)setBottomAreaView:(UIView*)aView;

/*!
 @method
 @abstract 添加控件到bottomArea
 @param    aView:底部区域view
 */
-(void)addViewToBottomAreaView:(UIView*)aView;

/*!
 @method
 @abstract 设置condition数据
 @param    aConditionStr:搜索条的提示文本
 */
-(void)setConditionText:(NSString*)aConditionStr;

/*!
 @method
 @abstract 设置redlabel文本
 @param    aRedStr:列表上方的红色小条的文本
 */
-(void)setRedLabelText:(NSString*)aRedStr;

/*!
 @method
 @abstract 设置groupbutton,传入groupbuton的titles
 @param    aGrpButtonTitles groupbutton的titles，
           aIndex,groupbuton高亮的索引位置，
           0<=aIndex<[aGrpButtonTitles count]
 */
-(void)setGroupButton:(NSArray*)aGrpButtonTitles 
        WithHighlight:(int)aIndex;

/*!
 	@method
 	@abstract	GroupButton设置aIndex位置的title
 	@discussion
 	@param 	aTitle 	设置的title
 	@param 	aIndex 	要设置的GroupButton的索引
 */
- (void)setGroupButtonWithTitle:(NSString*)aTitle
                  withHighlight:(int)aIndex;


/*!
 @method
 @abstract 设置列表的样式，目前支持搜索，和普通两种样式
           调用之后，界面就会变化。
 @param    aListCacheViewType：
           EListCacheSearch = 0,   //搜索样式，样式的定义依赖于初始化传入的参数
           EListCacheNormal,       //普通样式包含titlebar，底部区域，列表
 */
-(void)setViewType:(TWAListCacheViewType)aListCacheViewType;

/*!
 @method
 @abstract 设置搜索列表为normal样式
 @param    aBool:YES,是普通列表，NO，不是普通列表
 */
-(void)setSearchViewNormal:(BOOL)aBool;

/*!
 @mthod
 @abstract groupbutton被点击
 */
-(void)groupButtonOneClick:(id)sendr;

#pragma mark 获取listcache的一些状态，数据等
/*!
 @method
 @abstract 获取当前界面的状态
 @result   TWAListCacheViewType:当前界面状态
 */
-(TWAListCacheViewType)getViewType;

/*!
 @method
 @abstract 获取所有cell的indexpath
 @result   返回的array里面，每一个元素就是那个位置cell的indexpath
           例如，第0个位置就是第0个cell的indexpath
 */
-(NSMutableArray*)getAResultAllObIndexPaths;


- (NSArray*)getAResultSelectIndexPaths;


/*!
 @method
 @abstract 获取所有普通cell的indexpath
 @result   返回的array里面，每一个元素就是那个位置cell的indexpath
           例如，第0个位置就是第0个cell的indexpath
 */
-(NSMutableArray*)getANormalAllObIndexPaths;

/*!
 @method
 @abstract 获取一个搜索结果的元素
 @param    aIndexPath 要获取的索引位置
 @result   id类型，用户自己转换吧,当没有返回结果时，返回nil
 */
-(id)getAResultObject:(NSIndexPath*)aIndexPath;

/*!
 @method
 @abstract 获取一个普通列表的元素
 @param    aIndexPath 要获取的索引位置
 @result   id类型，用户自己转换吧,当没有返回结果时，返回nil
 */
-(id)getANormalObject:(NSIndexPath*)aIndexPath;

/*!
 @method
 @abstract 设定普通列表是否是编辑
 @param    aIsEdit为YES，是编辑，为NO，不是编辑状态
 */
-(void)setNormalTableEdit:(BOOL)aIsEdit;

/*!
 @method
 @abstract 设定搜索列表是否是编辑
 @param    aIsEdit为YES，是编辑，为NO，不是编辑状态
 */
-(void)setSearchTableEdit:(BOOL)aIsEdit;

/*!
 @method
 @abstract   主动刷新页面
 @discussion 函数先清空当前搜索页面的数据，缓存。然后，根据
             iIsConNet的值来确定是否重新联网，如果iIsConNet
             为YES,请求第一页的数据
 @param      iIsConNet 是否联网
 */
-(void)freshSearchTable:(BOOL)iIsConNet;


/*!
 @method
 @abstract 异步请求,显示前25条数据
 */
-(void)showFirst25List;

/*!
 @method
 @abstract   键盘已经展现的事件
 @discussion 键盘已经展现的监听事件，用于设置历史ddlist的frame。
 @param      n self.view.window
 */
- (void)keyboardDidShow:(NSNotification *)n;

/*!
 @method
 @abstract   键盘已经收起的事件
 @discussion 键盘已经收起的监听事件，用于设置历史ddlist的frame。
 @param      n self.view.window
 */
-(void)keyboardDidHidden:(NSNotification*)n;

- (void)reloadTableView;
/*!
 	@method
 	@abstract	删除CELL
 	@discussion
 	@param 	indexPath 
 	@param 	tableView
 	@result
 */
- (void)deleteAcell:(NSIndexPath *)indexPath tableView:(UITableView *)tableView;

#pragma mark 接口数据，或其他形式的数据返回
/*!
 @method
 @abstract   请求接口出错。在搜索列表情况下子类请求数据失败，
             应该调用父类的这个函数，以便，父类停止列表的刷新加载状态。
 @discussion 该函数先hidde spinner,然后根据theError来判断是否需要显示
             提示信息，如果theError为nil，不显示，如果theError不为nil，
             则显示
 */
-(void)requestFailedWithError:(NSError*)theError;

/*!
 @method
 @abstract 添加一个分组
 @param    aGroupRowNum 分组的row的数目，这个数目可以不是该分组的总数目
           可以后续再增加，目前只支持增加最后一个分组的数目
 @param    aGroupKey 一个分组的key
 @result   如果添加成功，返回YES，如果添加失败，返回NO
 */
-(BOOL)addNewGroup:(int)aGroupRowNum 
     WithGroupName:(NSString*)aGroupName WithGroupKey:(NSString*)aGroupKey;

/*!
 @method
 @abstract 增加最后一个分组的row的数目
 @param    aGroupAddRowNum 最后一个分组的增加的数目，增加前，最后一个分组数目为 x，
           增加后的数目为：x + aGroupAddRowNum
 @result   如果添加成功，返回YES，如果添加失败，返回NO
 */
-(BOOL)addLastGroupRowNum:(int)aGroupAddRowNum;

/*!
 @method
 @abstract   获取最后一个分组的信息
 @discussion 只有当界面样式为多section时，显示
 @result     如果当前界面时多section时，返回分组情况，单seciton返回nil
 */
-(CWASearchListGroupDetail*)getLastGroupInfo;

/*!
 @method
 @abstract 派生类获取到了数据,要将数据返回给基类去处理
 @param    aResultArray,获取到的数据以Array形式，每一个元素就是一个界面VO,
 */
-(void)addSearchResultWithArray:(NSMutableArray*)aResultArray;

/*!
 @method
 @abstract 添加普通列表的数据，一次性全部传入
 @param    aNormalArray,普通列表数据以Array形式传入，每一个元素就是一个界面VO,
 */
-(void)addNormalListArray:(NSMutableArray*)aNormalArray;

-(void)removeNormalCell:(id)aCell;



-(void)removeResultCellWithIndexPahts:(NSArray *)aIndexPahts;

/*!
 @method
 @abstract 更新普通列表
 @param aNormalArray,普通列表数据以Array形式传入，每一个元素就是一个界面VO,
 */
-(void)updateNormalListArray:(NSMutableArray*)aNormalArray;

/*!
 @method
 @abstract 根据奇偶数设置cell背景
 @param    aCell 一个tableviewcell
 @param    aIndexPath aCell 的indexpath
 */
-(void)setOddEvenCellBg:(UITableViewCell*)aCell 
          WithIndexPath:(NSIndexPath*)aIndexPath;

/*!
 @method
 @abstract 更新某一个cell
 */
-(void)updataCellAtIndexPath:(NSIndexPath*)aIndexPath;


-(void)updataNormalCellAtIndexPath:(NSIndexPath*)aIndexPath;

/*!
 @method
 @abstract 取消搜索状态
 */
-(void)cancelSearchStatus:(BOOL)isCancel;

/*!
 @method
 @abstract 显示提示信息，以提示框的方式提示
 @param    aMsg 显示的信息
 */
-(void)showMsg:(NSString*)aMsg;

/*!
 method
 @abstract show spinner
 */
-(void)showMySpinner;

/*!
 method
 @abstract hide spinner
 */
-(void)hideMySpinner;

#pragma mark 子类通过重载以下函数，实现自己的处理事件，基类对下面这些事件没有有处理
/*!
 @mthod 
 @abstract 导航条左侧按钮点击事件
 */
-(IBAction)leftBtAction:(id)sender;

/*!
 @mthod
 @abstract 导航条右侧按钮点击事件
 */
-(IBAction)rightBtAction:(id)sender;

- (NSArray *)getVisibleCells;

- (void)removeNormalCellWithIndexPahts:(NSArray *)aIndexPahts;

- (void)setSearchTableFrame:(CGRect)aSearchTableFrame;
- (CGRect)getSearchTableFrame;
-(CWASearchListGroupDetail*)getGroupInfoAtIndex:(int)aIndex;
/*!
 	@method
 	@abstract	搜索方法
 	@discussion
 	@param 	aCondition 查询条件
 	@param 	aStartPos 开始位置
 	@param 	aPageNum 请求条数
 	@result
 */
-(void)startQueryOneCondition:(NSString*)aCondition
                 withStartPos:(int)aStartPos
                  withPageNum:(int)aPageNum;


/*!
 	@method
 	@abstract //此函数取的count是，不包括被删除元素的（被置为@“”）
 	@discussion
 	@result
 */
- (NSUInteger)realSearchCount;

/*!
 	@method
 	@abstract	//是否取消按钮就
 	@discussion	是退出当前搜索界面
 	@result
 */
-(BOOL)getIsCancelQuit;

@end
