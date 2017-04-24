//
//  WANC63BadgeVO.m
//  NC63Multiple
//
//  Created by evan on 14-1-15.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WANC63BadgeVO.h"

@implementation CWANC63BadgeVO

- (id)init
{
  if (self = [super init])
  {
    iScheduleBadge = @"";
    iTaskBadge = @"";
    iMsgBadge = @"";
    iMsgPreviewBadge = @"";
    iScheduleTaskBadge = @"";
    iEcmWorkBadge = @"";
  }
  return self;
}

//KVC还对未定义的属性值定义了 valueForUndefinedKey:，你可以重载以获取你要的实现
//如果没有实现本方法，程序会抛出一个NSUndefinedKeyException异常错误
//设计valueForUndefinedKey:方法的主要目的是当你使用-(id)valueForKey方法从对象中请求值时，对象能够在错误发生前，有最后的机会响应这个请求。
- (id)valueForUndefinedKey:(NSString *)key
{
  return @"";
}

//未定义的属性值
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
  
}

//NSKeyValueCoding
//自定义设置nil事件
- (void)setNilValueForKey:(NSString *)key
{

}


@end
