/*!
 @header	WANC63BadgeController.h
 @abstract	协同办公模块角标业务类
 @discussion	
 @author	evan
 @copyright	yonyou
 @version	1.0 2014-01-13 15:40:59 Creation
 */
#import <Foundation/Foundation.h>
#import "WANC63BadgeBnsHandler.h"
/*!
 @abstract	模块角标回调函数块
 @discussion	￼
 @param 	badgeList 	返回数据字典
 */
typedef void (^TWANC63BadgeListBlock) (NSArray *badgeList);
/*!
 @enum
 @abstract	消息类型
 @discussion
 @constant  EWAMail	微邮
 @constant  EWANotice	通知
 @constant  EWASended	已发送
 */
typedef enum
{
  EWAScheduleBadge,
  EWATaskBadge,
  EWAMsgBadge,
  EWAMsgPreviewBadge,
  EWAScheduleTaskBadge,
  EWAEcmWorkBadge
}TWANC63BadgeType;

@interface CWANC63BadgeController : NSObject
{
  CWANC63BadgeBnsHandler *iBadgeBnsHandler;
}

/*!
 	@method
 	@abstract	请求角标列表
 	@discussion
 	@param 	aTypeList 	模块类型
 	@param 	aServiceCode
 	@param 	aBlock 	回调
 	@result	
 */
- (void)requestNC63BadgeWithTypeList:(NSArray *)aTypeList
                     withServiceCode:(NSString *)aServiceCode
                           withBlock:(TWANC63BadgeListBlock)aBlock;


@end
