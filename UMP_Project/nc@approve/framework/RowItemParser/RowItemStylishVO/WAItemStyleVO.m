//  WAItemStyleVO.m
//  CustomerEnquiries
//
//  Created by yhl on 13-6-3.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAItemStyleVO.h"

@implementation CWAItemStyleVO

@synthesize iStyle;

@synthesize iAction;

//实现序列化
- (void)encodeWithCoder:(NSCoder *)aCoder
{
  [aCoder encodeObject:iStyle forKey:@"Style"];
  [aCoder encodeObject:iAction forKey:@"Action"];
  
}

//实现反序列化
- (id)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder])
  {
    self.iStyle = [aDecoder decodeObjectForKey:@"Style"];
    self.iAction = [aDecoder decodeObjectForKey:@"Action"];
    
    
  }
  return self;
}

@end
