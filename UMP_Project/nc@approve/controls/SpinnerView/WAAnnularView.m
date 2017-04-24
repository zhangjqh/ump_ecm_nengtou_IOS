/*!
 *	@abstract	环形旋转视图
 *	@discussion	
 */
#import "WAAnnularView.h"
@implementation CWAAnnularView


@synthesize iProgress;

static NSTimer *iTimer = nil;


#pragma mark initWithFrame
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
    {
      self.opaque = NO;    
    }
    return self;
}

#pragma mark 无委托添加旋转效果
- (void)increasesProgress
{
  if (self.iProgress >= 1.0f)
  {
    self.iProgress = 0.0f;
  }
  else
  {
    self.iProgress += 0.1f;
  }
}

#pragma 停止旋转
- (void)stopTimer
{
  if(iTimer)
  {
    [iTimer invalidate];
    iTimer = nil;
  }
}

#pragma mark 无委托初始化时间
- (void)startTimer
{
  iTimer =  [NSTimer scheduledTimerWithTimeInterval:0.08 
                                             target:self 
                                           selector:@selector(increasesProgress) 
                                           userInfo:nil 
                                            repeats:YES];
}

#pragma mark 设置旋转角度，重绘界面，调用drawRect
- (void)setIProgress:(float)aProgress {
	iProgress = aProgress;
	[self setNeedsDisplay];
}


//#pragma mark - Drawing
- (void)drawRect:(CGRect)rect
{
	// Draw background
  CGFloat lineWidth = 5.f;
  UIBezierPath *processBackgroundPath = [UIBezierPath bezierPath];
  processBackgroundPath.lineWidth = lineWidth;
  processBackgroundPath.lineCapStyle = kCGLineCapRound;
  CGPoint center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
  CGFloat radius = (self.bounds.size.width - lineWidth)/2;
  CGFloat startAngle = - ((float)M_PI / 2); // 90 degrees
  CGFloat endAngle = (2 * (float)M_PI) + startAngle;
  [processBackgroundPath addArcWithCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
  [[UIColor colorWithRed:1 green:1 blue:1 alpha:0.1] set];
  [processBackgroundPath stroke];
  // Draw progress
  UIBezierPath *processPath = [UIBezierPath bezierPath];
  processPath.lineCapStyle = kCGLineCapRound;
  processPath.lineWidth = lineWidth;
  endAngle = (self.iProgress * 2 * (float)M_PI) + startAngle;
  [processPath addArcWithCenter:center radius:radius startAngle:startAngle endAngle:endAngle clockwise:YES];
  [[UIColor whiteColor] set];
  [processPath stroke];
}
@end
