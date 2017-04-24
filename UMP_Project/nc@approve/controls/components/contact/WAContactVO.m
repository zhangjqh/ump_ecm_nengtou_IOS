//  WAContactVO.m
//  Contact
//
//  Created by hanning fan on 12-5-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WAContactVO.h"

@implementation CWAContactVO

@synthesize iTitle;
@synthesize iImage;
@synthesize iNavTitle;
@synthesize iJob;
@synthesize iDept;
@synthesize iCorp;
@synthesize iDetailArray;
@synthesize iDynamicArray;

- (id)init
{
  self = [super init];
  if (self) 
  {
    iDetailArray = [[NSMutableArray alloc] init];
    iDynamicArray = [[NSMutableArray alloc] initWithCapacity:1];
  }
  return self;
}
@end
