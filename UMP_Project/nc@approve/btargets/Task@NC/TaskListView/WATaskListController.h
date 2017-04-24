/*!
 @header WAListController.h
 @abstract 任务中心列表界面动作处理类
 @author huych 
 @copyright ufida
 @version 1.00 2012/06/23 Creation 
 */

#import <Foundation/Foundation.h>
#import "WATaskListDef.h"
#import "TaskDef.h"
#import "WATaskListVoArray.h"
#import "WAButtonVOArray.h"
#import "WATaskListBnsHandler.h"

@protocol MWATaskListControllerDelegate <NSObject>
@optional
- (void) updateWithTaskType:(TWATaskType)aTaskType;
- (void) updateVO:(CWATaskListVoArray *)aListVos;
- (void) updateButtonVO:(NSMutableDictionary *)aButtonListVos;
- (void) requestFail;
- (void) setCurrentPageWithPage:(NSNumber *)aPage;
- (void) clearUI;
@required
- (NSMutableDictionary *)getButtonVoDic;
@end

@interface CWATaskListController : NSObject<MWATaskHandlerDelegate>
{
  IBOutlet UIBarButtonItem *iNavRightBarItem;
  IBOutlet UINavigationItem *iNavBarItem;
  IBOutlet UIView *iView;
//  BOOL isSetPage;
  TWATaskType type ;
}

/*!
 @property
 @abstract iNavRightBarItem 导航栏右边按钮item
 */
@property (nonatomic,retain)IBOutlet UIBarButtonItem *iNavRightBarItem;
/*!
 @property
 @abstract iNavBarItem 导航栏标题item
 */
@property (nonatomic,retain)IBOutlet  UINavigationItem *iNavBarItem;

/*!
 @property
 @abstract iView 控制的视图
 */
@property (nonatomic,retain)IBOutlet  UIView *iView;

///*!
// @property
// @abstract isSetPage 是否需要设置页面
// */
//@property (nonatomic,assign)BOOL isSetPage;

/*!
 @property
 @abstract iListControllerDelegate 列表控制委托
 */
@property (nonatomic,assign)id <MWATaskListControllerDelegate> iListControllerDelegate;

/*!
 @method
 @abstract 右边按钮点击事件
 @discussion  
 @param sender 请求消息发送者
 */
- (IBAction)rightButtonClick:(id)sender;

/*!
 *	@method
 *	@abstract	按钮list动作
 *	@discussion	
 *	@param 	sender 	消息发送者
 */
- (void) buttonListTouch:(id)sender;

- (void)ShowLoadingView;


- (void)clearUIData;

@end
