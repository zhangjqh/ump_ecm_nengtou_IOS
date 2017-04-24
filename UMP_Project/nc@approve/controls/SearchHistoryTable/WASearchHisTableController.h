/*!
 @header	WASearchHisTableController
 @abstract	搜索历史tableController
 @discussion
 @author chenrh1
 @copyright yonyou
 @version	1.0 2013-12-16 16:50:21 Creation
 */

#import <Foundation/Foundation.h>
/*!
 	@protocol
 	@abstract 搜索table 一行选中代理
 	@discussion	
 */
@protocol TWASearchTableSecltNotification <NSObject>

/*!
 	@method
 	@abstract	选中一行后通知子类
 	@discussion
 	@param 	result 	选中的行的key
  @param 	resShow  界面展示值
 */
- (void)searchtableSelect:(NSString *)result andResShow:(NSString *)resShow;


@end

/*!
 	@abstract
 	@discussion	多语文件
 */
static NSString *const TEXTFILDHAVEHISTORYMUTILANGUAGE = @"control_TextFieldHaveHistory";

/*!
 	@abstract	全部
 	@discussion
 */
static NSString *const ALL = @"all";
static NSString *const KEYBOARDSHOW = @"keyBoardShow";
static NSString *const KEYBOARDHIDDEN = @"keyBoardHidden";

/*!
 	@class	CWASearchHisTableController
 	@abstract	搜索历史tableController
 */
@interface CWASearchHisTableController : NSObject

<
UITableViewDataSource,
UITableViewDelegate
>
{
  NSMutableArray  *iHistoryList;
  NSString *iHisToryKey;
  NSInteger iMaxHistoryNum;
  NSString *iSearChtext;
  UIView *iBaseView;
  UITableView *iTable;
  BOOL isCurrentShowKeyBoard;

}
/*!
 @property
 @abstract	iHistoryList	s
 */
@property(nonatomic,retain) NSMutableArray  *iHistoryList;
/*!
 @property
 @abstract	iHisToryKey	保存历史记录的key
 */
@property(nonatomic,copy)NSString *iHisToryKey;
/*!
 @property
 @abstract	iMaxHistoryNum	缓存记录个数
 */
@property(nonatomic,assign)  NSInteger iMaxHistoryNum;

/*!
 @property
 @abstract	iSearChtext	输入或者选择的值
 */
@property(nonatomic,copy) NSString *iSearChtext;
/*!
 	@property
 	@abstract	iBaseView	放table的View
 */
@property(nonatomic,retain)UIView *iBaseView;

/*!
 	@property
 	@abstract	iTable	历史记录table
 */
@property(nonatomic,retain)UITableView *iTable;

@property(nonatomic,assign)BOOL isCurrentShowKeyBoard;
/*!
 	@property
 	@abstract	iserchtableSelectDelegate	搜索历史提示表格选中代理
 */
@property(nonatomic,assign) id<TWASearchTableSecltNotification> iserchtableSelectDelegate;
/*!
 @method
 @abstract	初始化
 @discussion
 @param key 历史记录key
 */
-(id)initWithSavekey:(NSString *)key;
                           
/*!
 	@method
 	@abstract 添加记录
 	@discussion	
 	@param 	searchtext 	搜索关键字
 */
-(void)addHistory:(NSString *)searchtext;

/*!
 	@method
 	@abstract	添加table
 	@discussion
 	@param 	tableFrame 	table的frame
 	@param 	aView 	在哪个VIEW上添加
 */
-(void)addTable:(CGRect)tableFrame  onSuperView:(UIView *)aView;
/*!
 	@method
 	@abstract	添加table
 	@discussion
 	@param 	tableFrame 	table的frame
 	@param 	aView 在哪个VIEW上添加
 	@param 	viewFrame 	aview的frame
 	@result
 */
-(void)addTableWithTable:(CGRect)tableFrame
             onSuperView:(UIView *)aView
        withTheViewFrame:(CGRect)viewFrame;


/*!
 	@method
 	@abstract
 	@discussion	点击键盘的确认按钮
 */
-(void)textFieldReturn;


@end
