
#import "WAGroupButtonView.h"
#import "WAButton.h"
/*!
 *	@abstract	按钮组视图
 *	@discussion
 */
@implementation CWAGroupButtonView

@synthesize iButtonImageArray;


- (id)initWithButtonImages:(CWAButtonImagesArray *)aButtonImageArray
{
  self = [super init];
  if (self)
  {
    self.iButtonImageArray = aButtonImageArray;
    [self addButtons];
    currentHighlightIndex = 0;
  }
  return self;
}
- (id)initWithaButtonCount:(int)aButtonCount
                 withTitle:(NSArray *)aTitles
            withStatusCode:(NSArray *)aStatusCode
           withServiceCode:(NSArray *)aServiceCode
                withStatus:(NSString *)aStatus
  withResourceBundleOrPath:(NSString *)aResourceBundleOrPath
{
  self = [super init];
  if (self)
  {
    if (aResourceBundleOrPath)
    {
      // 初始化指定资源名称
      self.iButtonImageArray = [CWAButtonImagesArray getButtonWithButtonCount:aButtonCount
                                                                    withTitle:aTitles
                                                               withStatusCode:aStatusCode
                                                              withServiceCode:aServiceCode
                                                                   withStatus:aStatus
                                                         withBundleNameOrPath:aResourceBundleOrPath];
    }
    else
    {
      self.iButtonImageArray = [CWAButtonImagesArray getButtonWithButtonCount:aButtonCount
                                                                    withTitle:aTitles
                                                               withStatusCode:aStatusCode
                                                              withServiceCode:aServiceCode
                                                                   withStatus:aStatus];
    }
    currentHighlightIndex = 0;
    [self addButtons];
  }
  return self;
}
- (id)initWithaButtonCount:(int)aButtonCount
                 withTitle:(NSArray *)aTitles
            withStatusCode:(NSArray *)aStatusCode
           withServiceCode:(NSArray *)aServiceCode
                withStatus:(NSString *)aStatus
{
  
  return [self initWithaButtonCount:aButtonCount
                          withTitle:aTitles
                     withStatusCode:aStatusCode
                    withServiceCode:aServiceCode
                         withStatus:aStatus
           withResourceBundleOrPath:nil];
}

- (void)setTitleWithFont:(UIFont *)aFont
               withColor:(UIColor *)aColor
              withStatus:(UIControlState)aStatus
{
  if (self)
  {
    for (NSInteger i=0; i<[self.iButtonImageArray count]; i++)
    {
      id aBtn = [self.iButtonImageArray objectAtIndex:i];
      if ([aBtn isKindOfClass:[CWAButton class]])
      {
        [((CWAButton *)aBtn) setTitleWithFont:aFont
                                    withColor:aColor
                                   withStatus:aStatus];
      }
    }
  }
}

- (void)setTitleWithShadowColor:(UIColor *)aColor
              withShadowOffSize:(CGSize)aShadowOffSize
                     withStatus:(UIControlState)aStatus
{
  if (self)
  {
    for (NSInteger i=0; i<[self.iButtonImageArray count]; i++)
    {
      id aBtn = [self.iButtonImageArray objectAtIndex:i];
      if ([aBtn isKindOfClass:[CWAButton class]])
      {
        [((CWAButton *)aBtn) setShadowColor:aColor
                          WithShadowOffSize:aShadowOffSize
                                 withStatus:aStatus];
      }
    }
  }
}

- (void) addButtons
{
  if(self.iButtonImageArray)
  {
    CGFloat startPointOfX = 0.00f;
    CGFloat startPointOfY = 0.00f;
    CGFloat width = 0.00f;
    CGFloat height = 0.00f;
    for (int i = 0; i < iButtonImageArray.iButtonImages.count ; i++)
    {
      CWAButton *buttonImage = [iButtonImageArray.iButtonImages objectAtIndex:i];
      //[buttonImage.layer setCornerRadius:3.0f];
      buttonImage.frame = CGRectMake(startPointOfX,startPointOfY,[buttonImage getWidth],[buttonImage getHeigth]);
      if([buttonImage getHeigth] > height)
      {
        height = [buttonImage getHeigth];
      }
      startPointOfX = startPointOfX + [buttonImage getWidth];
      [buttonImage setTag:(200+i)];
      [buttonImage addTarget:self
                      action:@selector(touchHandle:)
            forControlEvents:UIControlEventTouchUpInside];
      if(buttonImage.frame.origin.x + buttonImage.frame.size.width > width)
      {
        width = buttonImage.frame.origin.x + buttonImage.frame.size.width;
      }
      [self addSubview:buttonImage];
    }
    self.frame = CGRectMake(0.00f,0.00f,width,height);
  }
}

- (CWAButton *)getButtonObjectOfIndex:(int)aIndex
{
  CWAButton *button = nil;
  if(aIndex >=0 && aIndex < [iButtonImageArray count])
  {
    button = [iButtonImageArray objectAtIndex:aIndex];
  }
  return button;
}

- (CWAButton *)getCurrentHighlightButton
{
  return (CWAButton *)currentButton;
}


- (void) setHighlightButtonWithIndex:(int)aIndex
{
  if(aIndex < 0)
  {
    return;
  }
  
  CWAButton *button = [self getButtonObjectOfIndex:aIndex];
  [button setButtonStatus:EHIGHLIGHT];
  [self touchHandle:button];
  
}

- (int)getCurrentHighlightIndex
{
  return currentHighlightIndex;
}

- (void)touchHandle:(id)sender
{
  if(currentButton && currentButton != sender)
  {
    //点击事件发生以后，上一个被点击的按钮图标变回
    [currentButton setButtonStatus:ENORMAL];
    
    //点击事件发生以后，被点击的按钮图标变化
    CWAButton *touchedButton = (CWAButton*)sender;
    [touchedButton setButtonStatus:EHIGHLIGHT];
    currentButton = (CWAButton *)sender;
  }
  else if (!currentButton)
  {
    //点击事件发生以后，被点击的按钮图标变化
    CWAButton *touchedButton = (CWAButton*)sender;
    [touchedButton setButtonStatus:EHIGHLIGHT];
    currentButton = (CWAButton *)sender;
  }
  currentHighlightIndex = currentButton.tag - 200;
}
@end
