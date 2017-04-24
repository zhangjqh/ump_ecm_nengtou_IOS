/*!
 @header WATaskHistoryBnsHandler.h 
 @abstract 任务历史数据处理
 @author Created by Li Xiaopeng on 12-5-22.
 @version 1.00 2012/5/22 Creation (此文档的版本信息)
 */

#import <UIKit/UIKit.h>
#import "WAHTTPNotify.h"
@class CWATaskHistoryController;

/*!
 @class
 @abstract 任务历史数据处理类
 */
@interface CWATaskHistoryBnsHandler : NSObject<MWAHTTPNotify>
{
  @private
  NSInteger iSection;
  CWATaskHistoryController *iTaskHistoryController;  
}
/*!
 @property
 @abstract 表格视图段落号
 */
@property (assign, nonatomic) NSInteger iSection;

/*!
 @property
 @abstract 任务历史视图控制器
 */
@property (retain, nonatomic) CWATaskHistoryController *iTaskHistoryController;

/*!
 *	@method
 *	@abstract	发送http请求联系人详情
 *	@discussion	
 *	@param 	aPsnID 	联系人编号
 *	@param 	aSection 	点击的块
 *	@param 	aServiceCode 	服务器编码
 */
- (void)sendHttpRequestWithPsnID:(NSString *)aPsnID
                     withSection:(NSInteger)aSection
                 withServiceCode:(NSString *)aServiceCode;


@end
