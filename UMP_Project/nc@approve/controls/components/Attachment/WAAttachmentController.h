//
//  WAAttachmentController.h
//  SSTASK120521A
//
//  Created by 刘得权 on 12-7-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAAttachmentBnsHanlder.h"
#import "WAAttachmentSizeHandleUtil.h"
#import "NCDocumentInteractionControllerDelegate.h"
#define WA_TASK_ATTACHMENT_DIRECTORY @"taskAttachment"
#define WA_MSG_ATTACHMENT_DIRECTIORY @"msgAttachment"


/*!
 	@header	附件下载参数VO
 	@abstract	
 	@discussion	alert 确定按钮点击 下载附件时调用
 	@author chenrh1
 	@copyright yonyou
 	@version	1.0 2014-01-07 11:20:20 Creation
 */
@interface CWACWAAttachmentDownLoadVO : CWABaseVO

{
  NSString *iFileID;
  NSInteger iFileSize;
  NSString *iFileName;
  NSString *iFileType;
  NSString *iFileDirectory;
  NSString *iComplementId;
  NSString *iServiceCode;
  NSString *iActiontype;
}
/*!
 	@property
 	@abstract	iFileID	附件ID
 */
@property (nonatomic, copy) NSString *iFileID;

/*!
 	@property
 	@abstract	iFileSize	附件大小
 */
@property (nonatomic, assign) NSInteger iFileSize;

/*!
 	@property
 	@abstract	iFileName	附件名称
 */
@property (nonatomic, copy) NSString *iFileName;

/*!
 	@property
 	@abstract	iFileType	附件类型
 */
@property (nonatomic, copy) NSString *iFileType;

/*!
 	@property
 	@abstract	iFileDirectory	附件保存路径
 */
@property (nonatomic, copy) NSString *iFileDirectory;

/*!
 	@property
 	@abstract	iComplementId	compontID
 */
@property (nonatomic, copy) NSString *iComplementId;

/*!
 	@property
 	@abstract	iServiceCode	serviceCode
 */
@property (nonatomic, copy) NSString *iServiceCode;

/*!
 	@property
 	@abstract	iActiontype	actionType
 */
@property (nonatomic, copy) NSString *iActiontype;

@end


@interface CWAAttachmentController : NSObject
<
MWAAttachmentBnsHanlderDelegate,
MWAAttachmentControllerDelegate
>
{
  NSString *iFilePath;
  NSString *iFileDirectoryName;
  NSString *iFileName;
  NSString *iFileType;
  NSString *iFileDirectory;
  NSString *iServiceCode;
  CWAAttachmentBnsHanlder *iAttachementBnsHanlder;
  UINavigationController *iNavCtrl;
  BOOL isMayContinueDownload;
  CWACWAAttachmentDownLoadVO *iAttachDownVO;
  CWAAttachmentSizeHandleUtil *iAttachSizehanbleUtil;
}

@property (nonatomic,strong) UIDocumentInteractionController* docVC;

@property (nonatomic,strong) NCDocumentInteractionControllerDelegate* ncInteractionDelegate;

@property (nonatomic,retain) UINavigationController *iNavCtrl;
/*!
 @property
 @abstract 文件保存路径
 */
@property (nonatomic, copy) NSString *iFilePath;
/*!
 @property
 @abstract 文件名字
 */
@property (nonatomic, copy) NSString *iFileName;
/*!
 @property
 @abstract 文件带上一级目录的名字
 */
@property (nonatomic, copy) NSString *iFileDirectoryName;
/*!
 @property
 @abstract 文件类型
 */
@property (nonatomic, copy) NSString *iFileType;
/*!
 @property
 @abstract 文件在tmp目录下保存的目录
 */
@property (nonatomic, copy) NSString *iFileDirectory;

/*!
 *	@property
 *	@abstract	iServiceCode	服务器编码
 */
@property (nonatomic, copy) NSString *iServiceCode;
/*!
 	@property
 	@abstract	iAttchControlDelegate	附件下载controller代理
 */
@property (nonatomic, assign)id <MWAAttachmentControllerDelegate> iAttchControlDelegate;

/*!
 	@property
 	@abstract	isMayContinueDownload	可能继续下载标识
 */
@property (nonatomic, assign)BOOL isMayContinueDownload;
/*!
 	@property
 	@abstract	iAttachDownVO	附件下载参数VO
 */
@property(nonatomic,retain)CWACWAAttachmentDownLoadVO *iAttachDownVO;
/*!
 	@property
 	@abstract	iAttachSizehanbleUtil	附件大小处理工具方法
 */
@property(nonatomic,retain)CWAAttachmentSizeHandleUtil *iAttachSizehanbleUtil;




/*!
 @method
 @abstract  初始化成员变量
 @discussion 
 @result void
 */
- (void)initElement;

/*!
 @method
 @abstract  开始下载附件
 @discussion 
 @param aFileID 文件的唯一标示
 @param aFileSize附件的大小
 @param aFileName文件的名字
 @parma aFileType 问价的类型   
 @param aFileDirectory 下载的文件要存放的目录
 @param aServiceCode 服务器编码
 @param aActiontype请求的actiontype
 @result void
 */
- (void) attchDownloadWithFileID:(NSString*)aFileID
                    withFileSize:(NSInteger)aFileSize
                   withFileName:(NSString*)aFileName
                   withFileType:(NSString*)aFileType
              withFileDirectory:(NSString *)aFileDirectory
               withComplementID:(NSString *)aComplementId
                withServiceCode:(NSString *)aServiceCode
                  withActionType:(NSString *)aActiontype;

/*!
 @method
 @abstract  保存下载的附件
 @discussion 
 @param aDic 包含附件的字典
 @result void
 */
-(void)saveFile:(NSDictionary*)aDic;

/*!
 @method
 @abstract  附件是否可以打开
 @discussion 
 @param aFileType 附件的类型
 @result void
 */
- (BOOL)isCanDownFileWithFileType:(NSString *)aFileType;

/*!
 @method
 @abstract  浏览附件
 @discussion 
 @result void
 */
- (void)scanAttachment;

/*!
 @method
 @abstract  带navigationontroller的初始化方法，为了push出附件详情。
 @discussion
 @result void
 */
-(id)initWithNav:(UINavigationController *)aNav;

/*!
 @method
 @abstract  获取iNavigationController
 @discussion
 @result void
 */
-(UINavigationController *)getNav;
/*!
 	@method
 	@abstract	根据附件大小判断附件是否可以下载
 	@discussion
 	@param 	aServiceCode
 	@param 	aFileSize 	附件大小
 	@result	BOOL YES 可以 NO 不可以
 */
-(BOOL)theAttachtCanDownloadWithServiceCode:(NSString *)aServiceCode
                              andAttachSize:(NSInteger)aFileSize;




@end
