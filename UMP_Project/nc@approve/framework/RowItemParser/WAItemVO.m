//
//  WAItemVO.m
//  CustomerProj
//
//  Created by Xiaopeng Li on 12-9-14.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import "WAItemVO.h"

@implementation CWAItemVO

@synthesize iId;

@synthesize iName;

@synthesize iValueDesc;

@synthesize iMode;

@synthesize iCheckStatus;

@synthesize iReferId;

@synthesize iReferType;

@synthesize iReadOnly;

@synthesize iValue;

//实现序列化
- (void)encodeWithCoder:(NSCoder *)aCoder
{
  [aCoder encodeObject:iId forKey:@"iId"];
  [aCoder encodeObject:iName forKey:@"iName"];
  [aCoder encodeObject:iValueDesc forKey:@"iValueDesc"];
  [aCoder encodeObject:iMode forKey:@"iMode"];
  [aCoder encodeObject:iCheckStatus forKey:@"iCheckStatus"];
  [aCoder encodeObject:iReferId forKey:@"iReferId"];
  [aCoder encodeObject:iReadOnly forKey:@"iReadOnly"];
  [aCoder encodeObject:iValue forKey:@"iValue"];
  [aCoder encodeObject:iReferType forKey:@"iReferType"];
  
}

//实现反序列化
- (id)initWithCoder:(NSCoder *)aDecoder
{
  if (self = [super initWithCoder:aDecoder])
  {
     self.iId = [aDecoder decodeObjectForKey:@"iId"];
     self.iName = [aDecoder decodeObjectForKey:@"iName"];
     self.iValueDesc = [aDecoder decodeObjectForKey:@"iValueDesc"];
     self.iMode = [aDecoder decodeObjectForKey:@"iMode"];
     self.iCheckStatus = [aDecoder decodeObjectForKey:@"iCheckStatus"];
     self.iReferId = [aDecoder decodeObjectForKey:@"iReferId"];
     self.iReadOnly = [aDecoder decodeObjectForKey:@"iReadOnly"];
     self.iValue = [aDecoder decodeObjectForKey:@"iValue"];
     self.iReferType = [aDecoder decodeObjectForKey:@"iReferType"];
    
    
  }
  return self;
}

@end
