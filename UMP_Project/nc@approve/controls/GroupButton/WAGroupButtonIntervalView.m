#import "WAGroupButtonIntervalView.h"

@implementation CWAGroupButtonIntervalView

- (id)initWithButtonImages:(CWAButtonImagesArray *)aButtonImageArray
          WithEdgeDistance:(CGFloat)aEdgeDistance
              WithInterval:(CGFloat)aInterval
{
  
  self = [super init];
  if (self)
  {
    self.iButtonImageArray = aButtonImageArray;
    iEdgeDistance = aEdgeDistance;
    iInterval = aInterval;
    [self addButtons];
    currentHighlightIndex = 0;
    
  }
  return self;
}

- (void) addButtons
{
  if(self.iButtonImageArray)
  {
    CGFloat startPointOfX = iEdgeDistance;
    CGFloat startPointOfY = 0.00f;
    for (int i = 0; i < iButtonImageArray.iButtonImages.count ; i++)
      {
      CWAButton *buttonImage = [iButtonImageArray.iButtonImages objectAtIndex:i];
      buttonImage.frame = CGRectMake(startPointOfX,startPointOfY,[buttonImage getWidth],[buttonImage getHeigth]);
      startPointOfX = startPointOfX + [buttonImage getWidth] + iInterval;
      [buttonImage setTag:(200+i)];
      [buttonImage addTarget:self
                      action:@selector(touchHandle:)
            forControlEvents:UIControlEventTouchUpInside];
      [self addSubview:buttonImage];
      }
    }
}
@end
