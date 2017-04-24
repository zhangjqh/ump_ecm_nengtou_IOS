/*!
 @header WASearchDef.h
 @abstract 可用量搜索的常量定义
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

/*!
 @abstract
 @discussion	SearchBar 样式
 */
typedef enum

{
  ESTYLEIOS6SYS = 1,//IOS6 系统风格
  ESTYLEIOS7SYS//IOS7 风格
  
}TWASEARCHBARSTYLE;

#define WA_SEARCH_CELLIMGODD      @"list_bg_1.png"
#define WA_SEARCH_CELLIMGNOTODD   @"list_bg_2.png"
#define WA_SEARCH_SECTIONBG       @"listsection_bg.png"

//section 字体
#define WA_SEARCH_SECTIONFONT     @"STHeitiSC-Medium"
#define WA_SEARCH_NODATAFONT     @"HiraKakuProN-W3"
#define WA_SEARCH_SECTIONFONTSIZE 16

#define WA_SEARCH_COLOR [UIColor colorWithRed:230.0f/250.0f green:230.0f/250.0f blue:230.0f/250.0f alpha:1.0f] 

//屏幕尺寸
#define WA_SCREEN_WIDTH_DEFAULT  320.0f
#define WA_SCREEN_HEIGHT_DEFAULT 460.0f

//一页page的数目
#define OnePageNum 25
//此处缓存数据，注意和WA_CACHETABLEVIE_MAXNUM区分
//应该满足WA_CACHETABLEVIE_MAXNUM>2*ArrayRealNum + 1
//否则拖动中，会出现，不断的创建，然后又被删除的问题
#define ArrayRealNum 50
//conditon默认的文本长度
#define ConditionMaxLength 50
//cell的默认高度
#define WA_LISTCACHE_CELLHEIGHT 70
//section的高度
#define WA_LISTCACHE_SECHEIGHT  20.0f
//group head view 的fram
#define WA_LISTCACHE_HEADVIEWRECT CGRectMake(0, 0, 320, 20)

//一个元素被删除的标记
#define WA_LISTCACHE_DELETEMARK @""

//这个数值是系统默认的
//#define DecelerationRate 0.998f

#define DecelerationRate 0.0f

//历史查询条件
#define WA_HISTORY_SRARCH_CONDITION_KEY @"HistorySearchCondition"   

//查询请求的常量
#define WA_SUPPLIESSEARCH_QUERYCONDITION_ACTIONTYPE @"getConditionDescription"

//请求接口的第一次的位置
#define WA_LISTCACHE_FIRSTPOST 1
//请求接口的页行数
#define WA_SUPPLIESSEARCH_PAGENUM 25

//多语文件名称
#define WA_MUTILANGUE_FILENAME @"btargets_ListCache"

//加载提示
#define WA_LOADING_TEXT   NSLocalizedStringFromTable(@"LoadData", WA_MUTILANGUE_FILENAME, nil)

//搜索的标题
#define WA_SUPPLIESSEARCH_Title NSLocalizedStringFromTable(@"SearchTitle", WA_MUTILANGUE_FILENAME, nil)

//搜索全部
#define WA_SUPPLIESSEARCH_SEARCHALL NSLocalizedStringFromTable(@"SearchAll", WA_MUTILANGUE_FILENAME, nil)

//提示框，确定
#define WA_SUPPLIESSEARCHLIST_OK  NSLocalizedStringFromTable(@"SearchOk", WA_MUTILANGUE_FILENAME, nil)

//没有符合条件的物料
#define WA_SUPPLIESSEARCHLIST_NOSUPLIES NSLocalizedStringFromTable(@"NoSupplies", WA_MUTILANGUE_FILENAME, nil)

//没有更多数据
#define WA_SUPPLIESSEARCH_NORESULT NSLocalizedStringFromTable(@"NoMoreResult", WA_MUTILANGUE_FILENAME, nil)

//数据超过页数提示
#define WA_LISTCACHE_DATAOVERPAGE NSLocalizedStringFromTable(@"DataAddOverPage", WA_MUTILANGUE_FILENAME, nil)