
#import "WASudoKuBDView.h"


@implementation CWALineAttribute

@synthesize iColor;
@synthesize iWidth;

@end

@implementation CWASudoKuBDView

@synthesize isNeedTopLine;
@synthesize isNeedBottomTopLine;
@synthesize iRow;
@synthesize iCount;
@synthesize iLineAttrubute;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
      self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

#pragma mark 绘制线条
- (void)drawRect:(CGRect)rect
{
  
  CGFloat perWidth = self.frame.size.width/iCount;
  CGFloat perHeight = self.frame.size.height/iRow;
  CGContextRef context    = UIGraphicsGetCurrentContext(); //获取画布
  CGContextSaveGState(context);
  UIColor *lineColor = [UIColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1];
  if (iLineAttrubute.iColor)
  {
    lineColor = iLineAttrubute.iColor;
  }
  
  CGFloat lineWidth = 1.0;
  if(iLineAttrubute && iLineAttrubute.iWidth > 0)
  {
    lineWidth = iLineAttrubute.iWidth;
  }
  
  UIColor *line1Color = [UIColor whiteColor];
  CGContextSetStrokeColorWithColor(context, line1Color.CGColor);
  CGContextSetShouldAntialias(context, NO);//设置线条平滑，不需要两边像素宽
  CGContextSetLineWidth(context, lineWidth);//设置线条宽度
  
  //画竖线
  for(int i = 0 ; i < iCount ;i++)
  {
    if(i%4 ==0)
    {
      continue;
    }
    CGFloat x = i*perWidth+1;
    CGContextMoveToPoint(context,x,1.00f);
    CGContextAddLineToPoint(context,x,self.frame.size.height-1);
  }
  
  //画横线
  for(int i = 0 ; i < iRow-1 ;i++)
  {
    CGFloat y = (i+1)*perHeight+1;
    CGContextMoveToPoint(context, 0.00f,y);
    CGContextAddLineToPoint(context,self.frame.size.width-1,y);
    
  }
  
  if(isNeedTopLine)
  {
    CGContextMoveToPoint(context, 1.00f,1.00f);  //线条起始点
    CGContextAddLineToPoint(context,self.frame.size.width, 1.00f);//线条结束点
  }
  
  
  //画下面的线条
  if(isNeedBottomTopLine)
  {
    CGContextMoveToPoint(context ,1.00f,self.frame.size.height);  //线条起始点
    CGContextAddLineToPoint(context, self.frame.size.width,self.frame.size.height);//线条结束点
  }
  
  CGContextStrokePath(context);
  
  
  CGContextSetStrokeColorWithColor(context, lineColor.CGColor); //线条颜色
  
  //画竖线
  for(int i = 0 ; i < iCount ;i++)
  {
    if(i% 4== 0)
    {
      continue;
    }
    CGFloat x = i*perWidth;
    CGContextMoveToPoint(context,x,0.00f);
    CGContextAddLineToPoint(context,x,self.frame.size.height);
  }
  
  //画横线
  for(int i = 0 ; i < iRow-1 ;i++)
  {
  
    CGFloat y = (i+1)*perHeight;
    CGContextMoveToPoint(context, 0.00f,y);
    CGContextAddLineToPoint(context,self.frame.size.width,y);
 
  }
  
  if(isNeedTopLine)
  {
    CGContextMoveToPoint(context, 0.00f,0.00f);  //线条起始点
    CGContextAddLineToPoint(context,self.frame.size.width, 0.00f);//线条结束点
  }
  
  
  //画下面的线条
  if(isNeedBottomTopLine)
  {
    CGContextMoveToPoint(context ,0.00f,self.frame.size.height-1);  //线条起始点
    CGContextAddLineToPoint(context, self.frame.size.width,self.frame.size.height-1);
  };//线条结束点
  
	CGContextStrokePath(context);
  
 
  
  CGContextRestoreGState(context);
}


//点击事件传递给下面的视图
- (void)touchesBegan:(NSSet*)touches
           withEvent:(UIEvent *)event
{
	[super touchesBegan:touches withEvent:event];
	[[self nextResponder] touchesBegan:touches withEvent:event];
}

- (void)touchesMoved:(NSSet*)touches
           withEvent:(UIEvent *)event
{
	[super touchesMoved:touches withEvent:event];
	[[self nextResponder] touchesMoved:touches withEvent:event];
}

- (void)touchesEnded:(NSSet*)touches
           withEvent:(UIEvent *)event
{
	[super touchesEnded:touches withEvent:event];
	[[self nextResponder] touchesEnded:touches withEvent:event];
}

@end
