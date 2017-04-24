//
//  EncryptUtil.h
//  AnimationDemo
//
//  Created by heng ding on 13-8-6.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EncryptUtil : NSObject

+ (NSString *)encryptWithText:(NSString *)sText;
+ (NSString *)decryptWithText:(NSString *)sText;


+(NSString *)encryptWithData:(NSData *)data;

@end



//
//  ConverUtil.h
//  Author:spring sky
//  QQ:840950105
//  Email:vipa1888@163.com
//

#import <Foundation/Foundation.h>

@interface ConverUtil : NSObject

/**
 64编码
 */
+(NSString *)base64Encoding:(NSData*) text;

/**
 字节转化为16进制数
 */
+(NSString *) parseByte2HexString:(Byte *) bytes;

/**
 字节数组转化16进制数
 */
+(NSString *) parseByteArray2HexString:(Byte[]) bytes;

/*
 将16进制数据转化成NSData 数组
 */
+(NSData*) parseHexToByteArray:(NSString*) hexString;

@end
