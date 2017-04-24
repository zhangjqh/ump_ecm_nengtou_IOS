/*!
 @header	WANC63BadgeBnsHandler.h
 @abstract	协同办公获取模块角标网络请求类
 @discussion	
 @author	evan
 @copyright	yonyou
 @version	1.0 2014-01-13 15:52:24 Creation
 */
#import "WABaseVO.h"
#import "WACommonInfoVO.h"
/*!
 @abstract	模块角标回调函数块
 @discussion	￼
 @param 	aDetailDataDic 	返回数据字典
 @param 	error 	返回异常
 */
typedef void (^TWANC63BadgeRequestBlock) (NSMutableArray *aDetailDataDic , NSError *error);
@interface CWANC63BadgeBnsHandler : CWABaseVO<MWAHTTPNotify>
{
  CWABnsDesVO *iScheduleBnsDesVO;
  CWABnsDesVO *iTaskBnsDesVO;
  CWABnsDesVO *iMsgBnsDesVO;
  CWABnsDesVO *iNewsBnsDesVO;
  CWABnsDesVO *iScheduleTaskBnsDesVO;
  CWABnsDesVO *iXTWorkBnsDesVO;
  CWAHTTPRequestHandler *iBadgeHttpRequest;
  TWANC63BadgeRequestBlock iBadgeRequestBlock;
}

/*!
 @method
 @abstract 取模块角标
 @discussion
 @param  aRequstVO 请求vo数组
 @param aServiceCodes servicecodes
 @param aBlock 请求返回结果处理block
 @result
 */
- (void)getBadgeWithVOs:(NSArray *)aRequestVO
                  withServiceCodes:(NSArray *)aServiceCodes
                         withBlock:(TWANC63BadgeRequestBlock)aBlock;
@end
