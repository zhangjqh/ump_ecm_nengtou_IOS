/*!
 @class
 @abstract 自定义开关界面
 */

#import "WASwitch.h"
@implementation CWASwitch
@synthesize iOrigin;
@synthesize on;
@synthesize iRightImage;
@synthesize iLeftImage;
@synthesize iSilderImage;
CGFloat width;
CGFloat height;

- (id)initWithRightImage:(UIImage *)aRightImage
           WithLeftImage:(UIImage *)aLeftImage
         WithSilderImage:(UIImage *)aSilderImage
             withiOrigin:(CGPoint) aOrigin
                  WithOn:(BOOL)isOn
{
    
  CGFloat leftWidth = aLeftImage? aLeftImage.size.width:40;
  CGFloat rightWidth = aRightImage? aRightImage.size.width:40;
  
  width = leftWidth > rightWidth?rightWidth:leftWidth ;
  
  
  CGFloat leftheight = aLeftImage? aLeftImage.size.height:20;
  CGFloat rightheight = aRightImage? aRightImage.size.height:20;
  
  height = leftheight > rightheight?rightheight:leftheight;
  self = [super initWithFrame:CGRectMake(0,0,width,height)];
  if (self) 
  {
    self.iRightImage = aRightImage;
    self.iLeftImage = aLeftImage;
    self.on = isOn;
    self.iSilderImage = aSilderImage;
    self.iOrigin = aOrigin;
    [self addSlider];
  }
  return self;
}


- (void)addSlider
{
 //设定最大值，最小值以及滑动过程中不执行事件
  self.minimumValue = 0.0;
  self.maximumValue = 1.0;
  self.continuous = NO;

  //如果定义了左边的图片，放置图片到左边
  if (iLeftImage)
  {
    [self setMinimumTrackImage:iLeftImage 
                      forState:UIControlStateNormal];
  }
  
  //如果定义了右边得图片，放置图片到有右边
  if (iRightImage)
  {
    [self setMaximumTrackImage:iRightImage 
                      forState:UIControlStateNormal];
  }

  //如果定义了滑块，设置滑块
  if (iSilderImage)
  {
    [self setThumbImage:iSilderImage 
                 forState:UIControlStateHighlighted];
    [self setThumbImage:iSilderImage 
                 forState:UIControlStateNormal];
  }
  
  //滑块拖动时的事件
  [self addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];

  [self setFrame:CGRectMake(iOrigin.x,iOrigin.y,width,height)];
  
  //根据初始状态设置位置
  if (self.on)
  {
    self.value = 0.00f;
  }
  else 
  {
    self.value = 1.00f;
  }


}

#pragma mark 重写父类trackRectForBounds方法，修正滑块位置不对的问题
- (CGRect)trackRectForBounds:(CGRect)bounds
{
  return CGRectMake(bounds.origin.x,bounds.origin.y,width,height);
}

#pragma mark 重写父类thumbRectForBounds方法，修正滑块位置不对的问题
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect value:(float)value
{

  CGRect result;
  if (value == self.minimumValue)
  {

    result = CGRectMake(bounds.origin.x-0.5, bounds.origin.y, iSilderImage.size.width, iSilderImage.size.height);
  }
  else if (value == self.maximumValue)
  {
    result = CGRectMake(bounds.origin.x+bounds.size.width -iSilderImage.size.width,bounds.origin.y, iSilderImage.size.width, iSilderImage.size.height);
  }
  else
  {
    result = [super thumbRectForBounds:bounds trackRect:rect value:value];
  }
 
  return  result;
}

#pragma mark 重写父类maximumValueImageRectForBounds方法，修正滑块位置不对的问题
- (CGRect)maximumValueImageRectForBounds:(CGRect)bounds
{
  return CGRectMake(bounds.origin.x,bounds.origin.y,iRightImage.size.width,iRightImage.size.height);
}

#pragma mark 重写父类minimumValueImageRectForBounds方法，修正滑块位置不对的问题
- (CGRect)minimumValueImageRectForBounds:(CGRect)bounds
{
   return CGRectMake(bounds.origin.x,bounds.origin.y,iLeftImage.size.width,iLeftImage.size.height);
}

#pragma mark updateStatusWithOn 更新状态信息
- (void)updateStatusWithOn:(BOOL)isOn
{
  self.on = isOn;
  if (isOn)
  {
    self.value = 0.00f;
  }
  else 
  {
    self.value = 1.00f;
  }
}

#pragma mark sliderValueChanged 值改变事件处理
- (void)sliderValueChanged:(id)sender
{
  if (self.value > 0.5){
    self.on = NO;
    self.value = 1.00f;
  }
  else 
  {
    self.on = YES;
    self.value = 0.00f;
  }

}

@end
