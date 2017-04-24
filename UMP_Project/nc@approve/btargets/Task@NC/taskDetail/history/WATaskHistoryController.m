/*!
 @header WATaskHistoryController.h 
 @abstract 任务历史控制器
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22s Creation (此文档的版本信息)
 */

#import "WATaskHistoryController.h"
#import "WATaskHistoryviewController.h"
#import "WATaskHistoryBnsHandler.h"
#import "WAContactViewController.h"

/*!
 @class
 @abstract 任务历史控制器
 */
@implementation CWATaskHistoryController

@synthesize iWATaskHistoryTableView;

@synthesize iFloatShadowImage;

@synthesize iWATaskHistoryviewController;

@synthesize iWATaskHistoryBnsHandler;

/*!
 @method 
 @abstract 控制器初始化
 @discussion 
 @result 
 */
-(id) init
{
  if(self = [super init])
  {
    iWATaskHistoryBnsHandler = [[CWATaskHistoryBnsHandler alloc] init];
    iWATaskHistoryBnsHandler.iTaskHistoryController = self;
  }
  return (self);
}

/*!
 @method 
 @abstract 控制器销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
   
  self.iWATaskHistoryTableView = nil;
  self.iFloatShadowImage = nil;
  self.iWATaskHistoryviewController = nil;
  self.iWATaskHistoryBnsHandler = nil;
  
}

/*!
 @method 
 @abstract 当表格结束滚动的时候隐藏浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
  self.iFloatShadowImage.hidden = YES;
}

/*!
 @method 
 @abstract 当表格开始滚动的时候显示浮动视图
 @discussion
 @param scrollView 滚动视图的指针 
 @result 
 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
  self.iFloatShadowImage.hidden = NO;
}

/*!
 @method 
 @abstract 清除高亮状态
 @discussion
 @param sender 消息发送者 
 @result 
 */
-(void) clearHighlightState:(id)sender
{
  [self.iWATaskHistoryTableView deselectRowAtIndexPath:[self.iWATaskHistoryTableView indexPathForSelectedRow] animated:YES];
}

/*!
 @method
 @abstract 按下返回键返回上一次列表
 @discussion
 @result 
 */
- (IBAction)backBtnPressed:(id)sender 
{
  [self.iWATaskHistoryviewController.navigationController popViewControllerAnimated:YES];
}


- (void)sendHttpRequestWithPsnID:(NSString *)aPsnID
                     withSection:(NSInteger)aSection
                 withServiceCode:(NSString *)aServiceCode
{
  [self.iWATaskHistoryBnsHandler sendHttpRequestWithPsnID:aPsnID 
                                              withSection:aSection
                                          withServiceCode:aServiceCode];
}

/*!
 @method
 @abstract 显示联系人详情页面
 @discussion
 @param aWAContactVO 联系人详情值对象
 @result
 */
- (void)showContactViewWithWAContactVO:(CWAContactVO *)aWAContactVO
{
  CWAContactViewController *contactViewController = [[CWAContactViewController alloc] init];
  [contactViewController setContactVO:aWAContactVO];
  [self.iWATaskHistoryviewController.navigationController pushViewController:contactViewController animated:YES];

}

@end
