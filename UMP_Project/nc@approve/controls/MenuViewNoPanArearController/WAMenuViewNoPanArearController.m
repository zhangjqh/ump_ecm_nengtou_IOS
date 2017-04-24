//
//  CWAMenuViewNoPanArearController.m
//  ChannelVisit
//
//  Created by HUYCH on 13-11-12.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAMenuViewNoPanArearController.h"


@implementation CWAMenuViewNoPanArearController


- (NSMutableArray *)getNoPanAreas
{
  if(!iNoPanAreas)
  {
    iNoPanAreas = [[NSMutableArray alloc] initWithCapacity:1];
  }
  return iNoPanAreas;
}

- (BOOL)addNoPanArea:(CGRect)aNoPanArea
{
  BOOL isNeedAdd = YES;
  
  NSMutableArray *array = [self getNoPanAreas];
  for(int i = 0; i < [array count] ;i++)
  {
    NSValue *value = [array objectAtIndex:i];
    CGRect rect = [value CGRectValue];
    if(CGRectIntersectsRect(aNoPanArea, rect))
    {
      isNeedAdd = NO;
      break;
    }
  }
  if(isNeedAdd)
  {
    [array addObject:[NSValue valueWithCGRect:aNoPanArea ]];
    return YES;
  }
  else
  {
    return NO;
  }
}

- (BOOL)removeNoPanAreaWithIndex:(int)aIndex
{
  NSMutableArray *array = [self getNoPanAreas];
  
  if([array count] > aIndex)
  {
    [array removeObjectAtIndex:aIndex];
    return YES;
  }
  else
  {
    return NO;
  }
}

- (void)clearNoPanAreas
{
  NSMutableArray *array = [self getNoPanAreas];
  [array removeAllObjects];
}


- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
  BOOL isResponsed = YES;

  CGPoint translation = [(UIPanGestureRecognizer *)gestureRecognizer locationInView:self.view];
  NSArray *array = [self getNoPanAreas];
    
  for(int i =0 ; i < [array count] ;i++)
  {
    NSValue *value = [array objectAtIndex:i];
    CGRect rect = [value CGRectValue];
    if(CGRectContainsPoint(rect, translation))
    {
      isResponsed = NO;
      break;
    }
  }
  if(!isResponsed)
  {
    return NO;
  }
  return [super gestureRecognizerShouldBegin:gestureRecognizer];
}

@end
