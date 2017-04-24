
/*!
 @header CWAAPPUpdateVersionInfoVO.h
 @abstract APP版本信息VO
 @author Created by sunset
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 on 13-10-24
 */
#import "WABaseVO.h"

@interface CWAAPPUpdateVersionInfoVO : CWABaseVO

/*!
 @property
 @abstract 处理结果
 */
@property (nonatomic,retain) NSString *iFlagSign;
/*!
 @property
 @abstract 处理结果描述信息
 */
@property (nonatomic,retain) NSString *iFlagDesc;
/*!
 @property
 @abstract 最新程序版本号
 */
@property (nonatomic,retain) NSString *iVersionNo;
/*!
 @property
 @abstract 新版本提示信息
 */
@property (nonatomic,retain) NSString *iVersionDesc;
/*!
 @property
 @abstract 更新内容
 */
@property (nonatomic,retain) NSString *iVersionContent;
/*!
 @property
 @abstract "程序下载地址
 */
@property (nonatomic,retain) NSString *iNewVersionURL;
/*!
 @property
 @abstract 处理结果是否成功
 */
@property (nonatomic,assign) BOOL isSuccess;

@end
