//
//  CWARestPicInfoVO.h
//  MessagePreview
//
//  Created by evan on 13-4-24.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//
/*!
 @header CWARestPicInfoVO.h
 @abstract qiyue图片info VO
 @author 赵文
 @copyright ufida
 @version
 */

#import "WABaseVO.h"

@interface CWARestPicInfoVO : CWABaseVO
{
    NSString *iId;
    NSString *iDesc;
}

/*!
 @property
 @abstract iInfoPicId 图片详情返回的ID
 */
@property (nonatomic, copy) NSString *iId;

/*!
 @property
 @abstract iInfoPicDesc 图片miaoshu
 */
@property (nonatomic, copy) NSString *iDesc;

@end
