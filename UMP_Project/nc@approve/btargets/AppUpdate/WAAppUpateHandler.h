/*!
 @header CWAAppUpateHandler.h
 @abstract 获取应用更新的handler
 @author Created by sunset
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 13-10-23
 */

#import <Foundation/Foundation.h>
#import "WAHTTPNotify.h"
#import "WAAPPUpdateVersionInfoVO.h"
//  获取应用更新请求回调block
typedef void (^CWAAppUpdateFinishBlock)(CWAAPPUpdateVersionInfoVO *versionVO,NSError *error);

/*!
 @class
 @abstract 获取应用更新的handler
 @discussion 
 */
@interface CWAAppUpateHandler : NSObject<MWAHTTPNotify>
/*!
 *	@property
 *	@abstract	获取App新版本返回值blcok
 */
@property (assign,nonatomic) CWAAppUpdateFinishBlock iAppUpdateCompleteBlock;

/*!
 @method
 @abstract 向服务器发起请求，获取当前服务器上最新应用的相关信息
 @discussion 
 @param aBlock 回调block
 @result
 */
- (void)requestAppUpateWithCompleteBlock:(CWAAppUpdateFinishBlock)aBlock;
/*!
 @method
 @abstract 打开要更新的目标应用的链接
 @discussion 链接的地址从CWACommonInfoVO中获取
 @result
 */
+ (void)redirectToAppUpdateUrl;
/*!
 @method
 @abstract 根据指定版本判断当前应用是否需要更新
 @discussion 
 @param aVersionVO 给定的某个应用版本vo
 @result
 */
+ (BOOL)isNeedUpdateToVersionVO:(CWAAPPUpdateVersionInfoVO *) aVersionVO;
@end
