//
//  CWATaskBillRequestVO.m
//  TaskApproval
//
//  Created by dequan on 12-6-1.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WATaskBillRequestVO.h"

@implementation CWATaskBillRequestVO

- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}
@end
