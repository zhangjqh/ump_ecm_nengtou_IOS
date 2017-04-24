//
//  ContactDetailVO.h
//  Contact
//
//  Created by hanning fan on 12-5-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWAContactDetailVO : CWABaseVO

/*!
 @property
 @abstract 键(手机，座机，邮件)
 */
@property(nonatomic,retain) NSString *iNumberName;

/*!
 @property
 @abstract 值
 */
@property(nonatomic,retain) NSString *iNumberValue;
/*!
 @property
 @abstract 标识(0：手机 1：办公 2：宅电 3：邮件)
 */
@property(nonatomic,retain) NSString *iFlag;
/*!
 @property
 @abstract 图标
 */
@property(nonatomic,retain) UIImage *iNumberImage;
/*!
 @property
 @abstract 邮件主题
 */
@property(nonatomic,retain) NSString *iSubject;

/*!
 @property
 @abstract	isMain	是否是主联系人
 */
@property (nonatomic, copy) NSString *isMain;
@end
