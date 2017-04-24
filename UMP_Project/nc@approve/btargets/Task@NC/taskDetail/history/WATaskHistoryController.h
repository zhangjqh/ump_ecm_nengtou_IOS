/*!
 @header WATaskHistoryController.h 
 @abstract 任务历史控制器
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22 Creation (此文档的版本信息)
 */

#import <UIKit/UIKit.h>
#import "WAContactVO.h"
#import "WAContactDetailVO.h"

@class CWATaskHistoryviewController;
@class CWATaskHistoryBnsHandler;

/*!
 @class
 @abstract 任务历史控制器
 */
@interface CWATaskHistoryController : NSObject
{
  @private
  CWATaskHistoryviewController *iWATaskHistoryviewController;
  IBOutlet UITableView *iWATaskHistoryTableView;
  IBOutlet UIImageView *iFloatShadowImage;
  CWATaskHistoryBnsHandler *iWATaskHistoryBnsHandler;
}

/*!
 @property
 @abstract 任务历史视图控制器
 */
@property (retain, nonatomic) CWATaskHistoryviewController * iWATaskHistoryviewController;

/*!
 @property
 @abstract 任务历史表格视图
 */
@property (retain, nonatomic) IBOutlet UITableView *iWATaskHistoryTableView;

/*!
 @property
 @abstract 浮动阴影图片
 */
@property (retain, nonatomic) IBOutlet UIImageView *iFloatShadowImage;

/*!
 @property
 @abstract 任务历史数据处理控制器
 */
@property (retain, nonatomic) CWATaskHistoryBnsHandler *iWATaskHistoryBnsHandler;

/*!
 @method 
 @abstract 当表格结束滚动的时候隐藏浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView;

/*!
 @method 
 @abstract 当表格开始滚动的时候显示浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;

/*!
 @method 
 @abstract 清除高亮状态
 @discussion
 @param sender 消息发送者 
 @result 
 */
-(void) clearHighlightState:(id)sender;

/*!
 @method 
 @abstract 发送Http请求联系人详情
 @discussion
 @param aPsnID 人员编号
 @param aSection 段落号
 @param　aServiceCode　服务器编码
 @result 
 */
- (void)sendHttpRequestWithPsnID:(NSString *)aPsnID
                     withSection:(NSInteger)aSection
                 withServiceCode:(NSString *)aServiceCode;

/*!
 @method
 @abstract 按下返回键返回上一次列表
 @discussion
 @result 
 */
- (IBAction)backBtnPressed:(id)sender;

/*!
 @method
 @abstract 显示联系人详情页面
 @discussion
 @param aWAContactVO 联系人详情值对象
 @result 
 */
- (void)showContactViewWithWAContactVO:(CWAContactVO *)aWAContactVO;
@end
