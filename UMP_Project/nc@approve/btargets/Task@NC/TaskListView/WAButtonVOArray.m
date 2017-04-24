#import "WAButtonVOArray.h"

@implementation CWAButtonVOArray
@synthesize buttonVOs;
- (id)init
{
  self = [super init];
  if (self) 
  {
    buttonVOs = [[NSMutableArray alloc] init];
  }
  return self;
}


- (void)addButtonVO:(CWAButtonVO *)buttonVO
{
  [buttonVOs addObject:buttonVO];
}

- (CWAButtonVO *)getButtonVoWithIndex:(int)aIndex
{
  return [buttonVOs objectAtIndex:aIndex];
}

- (int)count
{
  return [buttonVOs count];
}
@end
