//
//  WAAttachmentSizeHandleUtil.h
//  NC63Multiple
//
//  Created by 陈荣杭 on 14-1-7.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol MWAAttachmentControllerDelegate<NSObject>
@optional
/*!
 @method
 @abstract
 @discussion	确认下载按钮点击
 @result
 */
-(void)alertConfimDownLoadBtnSelect;
@end
@interface CWAAttachmentSizeHandleUtil : NSObject<UIAlertViewDelegate>

/*!
 @property
 @abstract	iAttchControlDelegate	附件下载controller代理
 */
@property (nonatomic, assign)id <MWAAttachmentControllerDelegate> iAttchControlDelegate;
/*!
 @method
 @abstract	文件过大继续下载提示 YES 有提示
 @discussion
 @param 	aServiceCode servicecode
 @param 	aFileSize 	 附件大小
 @result	void
 */
-(BOOL)continueDownloadTipWithServiceCode:(NSString *)aServiceCode
                            andAttachSize:(NSInteger)aFileSize;
@end
