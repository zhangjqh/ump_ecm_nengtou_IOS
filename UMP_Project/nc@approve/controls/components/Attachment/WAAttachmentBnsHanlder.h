//
//  WAAttachmentBnsHanlder.h
//  SSTASK120521A
//
//  Created by 刘得权 on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WATaskAttachmentRequestVO.h"
#import "WAHTTPRequestHandler.h"

@protocol MWAAttachmentBnsHanlderDelegate;

@interface CWAAttachmentBnsHanlder : NSObject<MWAHTTPNotify>

@property (nonatomic, assign) id <MWAAttachmentBnsHanlderDelegate> iDelegate;

/*!
 *	@method
 *	@abstract	发送获取附件消息
 *	@discussion	<#Description#>
 *	@param 	aRequestVO 	要请求的vo数据
 *	@param 	aCommonID 	aCommonID组件id
 *	@param 	aServiceCode 	服务器编码
 */
- (void)sendGetTaskActionMsgWith:(CWATaskAttachmentRequestVO *)aRequestVO
                  withComponetID:(NSString *)aCommonID
                 withServiceCode:(NSString *)aServiceCode
                  withActiontype:(NSString *)aActiontype;

@end

@protocol MWAAttachmentBnsHanlderDelegate <NSObject>

/*!
 @method
 @abstract  请求返回数据
 @discussion 请求返回数据
 @param aBaseVO 请求的数据
 @param aMsgVO请求成功的标示
 @result void
 */
- (void)requestReturnWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO;

/*!
 @method
 @abstract  返回数据失败
 @discussion 返回数据失败
 @param theError错误的内容
 @result void
 */
- (void)failedRequestWithError:(NSError*)theError;

@end
