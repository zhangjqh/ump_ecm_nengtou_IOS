//
//  WARowVO.m
//  CustomerProj
//
//  Created by Xiaopeng Li on 12-9-14.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import "WARowVO.h"

@implementation CWARowVO

@synthesize iStyle;

@synthesize iItemVOArray;

- (id)init
{
  self = [super init];
  if (self) 
  {
    iItemVOArray = [[NSMutableArray alloc] init];
  }
  return self;
}

//实现序列化
- (void)encodeWithCoder:(NSCoder *)aCoder
{
  [aCoder encodeObject:iStyle forKey:@"iStyle"];
  [aCoder encodeObject:iItemVOArray forKey:@"iItemVOArray"];
  
}

//实现反序列化
- (id)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder])
  {
    self.iStyle = [aDecoder decodeObjectForKey:@"iStyle"];
    self.iItemVOArray = [aDecoder decodeObjectForKey:@"iItemVOArray"];
    
    
    
  }
  return self;
}



@end
