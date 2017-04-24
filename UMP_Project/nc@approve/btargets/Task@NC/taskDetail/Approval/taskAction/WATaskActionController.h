/*!
 @header CWATaskActionController.h
 @abstract 任务处理界面的action类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */

#import <Foundation/Foundation.h>
#import "WATaskMacro.h"
#import "CWATaskBnsHandler.h"
#import "WAProgressView.h"

@protocol MWATaskActionControllerDelegate;

/*!
 @class
 @abstract 任务处理界面的controller类
 */
@interface CWATaskActionController : NSObject<MWATaskBnsHandlerDelegate,UIAlertViewDelegate>
{
  //同意按钮
  IBOutlet UIButton    *iActionButton;
  //背景scrollview
  IBOutlet UIScrollView *iBackGroundScrollView;
  //业务处理
  CWATaskBnsHandler *iTaskHanlder;
  //任务的id
  NSString *iTaskid;
  
  NSString * iServiceCode;
  
  //临时keywindow
  UIWindow *iTempKeyWindow;
}


/*!
 *	@property
 *	@abstract	 iServiceCode	服务器编码
 */
@property (nonatomic, copy) NSString * iServiceCode;

/*!
 @property
 @abstract  自己的代理
 */
@property (nonatomic, assign) id <MWATaskActionControllerDelegate>iDelegate;

/*!
 @property
 @abstract 任务id
 */
@property (nonatomic, copy) NSString *iTaskid;

/*!
 @method
 @abstract 初始化成员变量
 @discussion 初始化成员变量
 @result void
 */
- (void)initElements;

/*!
 @method
 @abstract 点击同意按钮的操作
 @discussion 点击同意按钮的操作
 @param N/A
 @result void
 */
- (IBAction)dealWithTask;

@end

/*!
 @protocol
 @abstract 这个CWATaskActionController类的一个protocol
 @discussion 
 */
@protocol MWATaskActionControllerDelegate <NSObject>

/*!
 @method
 @abstract 返回意见的text
 @discussion 返回意见的text
 @result NSString /owned
 */
- (NSString *)noteForTask;

/*!
 @method
 @abstract 返回任务后续操作人的集合
 @discussion 返回任务后续操作人的集合
 @result NSArray 任务操作人的集合owned
 */
- (NSArray *)linkManNameSet;


/*!
 @method
 @abstract 返回任务的类型
 @discussion 返回任务的类型
 @result NSString 返回任务的类型owned
 */
- (NSString *)taskType;

/*!
 @method
 @abstract 设置键盘是否可见
 @discussion 设置键盘是否可见
 @param aIsVisiable-YES为可见，no为不可见
 @result NSString 返回任务的类型owned
 */
- (void)setKeyBoardIsVisiable:(BOOL)aIsVisiable;
@end
