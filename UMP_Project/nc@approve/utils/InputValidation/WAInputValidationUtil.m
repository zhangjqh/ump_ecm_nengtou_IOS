//
//  WAInputValidationUtil.m
//  ChannelVisit
//
//  Created by 陈荣杭 on 13-8-30.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAInputValidationUtil.h"

@implementation CWAInputValidationUtil

+(BOOL)valiadateWithRegx:(NSString *)aInputStr regex:(NSString *)aRegx
{
  NSPredicate *predict = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", aRegx];
  return [predict evaluateWithObject:aInputStr];
}
#pragma mark 整数校验
+(BOOL)checkInteger:(NSString *)aInputStr
{
  NSString *aRegx = @"^(-|\\+)?\\d+$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
  
}

#pragma mark 数值校验
+(BOOL)checkNumericalvalue:(NSString *)aInputStr
{
  NSString *aRegx = @"^-?([0-9]\\d*\\.\\d*|0\\.\\d*[0-9]\\d*|0?\\.0+|0)$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}
#pragma mark 校验年
+(BOOL)checkYear:(NSString *)aInputStr
{
  NSString *aRegx = @"^\\d{4}$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}

#pragma mark 校验月
+(BOOL)checkMonth:(NSString *)aInputStr
{
  NSString *aRegx = @"^(([0]{0,1}[1-9]{1})|([1]{1}[0-2]{1}))$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}

#pragma mark 校验年月
+(BOOL)checkYearAndMonth:(NSString *)aInputStr
{
  NSString *aRegx = @"^(\\d{1,4})(-|\\/)(([0]{0,1}[1-9]{1})|([1]{1}[0-2]{1}))$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}


#pragma mark 校验Email
+(BOOL)checkEmail:(NSString *)aInputStr
{
  NSString *aRegx = @"^([a-zA-Z0-9]+[_|\\_|\\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\\_|\\.]?)*[a-zA-Z0-9]+\\.[a-zA-Z]{2,4}$";
  //NSString *aRegx = @"\\b([a-zA-Z0-9%_.+\\-]+)@([a-zA-Z0-9.\\-]+?\\.[a-zA-Z]{2,6})\\b";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}
#pragma mark 电话号码
+(BOOL)checkPhoneNum:(NSString *)aInputStr
{
  NSString *aRegx = @"^([0\\+]\\d{2,3}-)?(\\d{11})$|^([0\\+]\\d{2,3}-)?(0\\d{2,3}-)?(\\d{7,8})(-(\\d{1,4}))?$";
  return [self valiadateWithRegx:aInputStr regex:aRegx];
}



@end
