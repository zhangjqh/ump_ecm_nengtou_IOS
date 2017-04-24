//
//  UmpEncrypt.h
//  UMIOSCommon
//
//  Created by dingheng on 13-8-7.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EncryptUtil.h"

@interface UmpEncrypt : EncryptUtil
/*
 * 加密
 */
+(NSData *)encode:(NSData *)sData;

/*
 * 解密
 */
+(NSData *)decode:(NSData *)sData;

@end
