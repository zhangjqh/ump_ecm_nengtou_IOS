
#import "WAButton.h"
/*!
 *	@abstract	groupbutton使用的自定义按钮
 *	@discussion
 */
@implementation CWAButton


@synthesize iStatusCode;
@synthesize iServiceCode;
@synthesize iStatus;
@synthesize iHighlightImage;
@synthesize iNormalImage;
@synthesize iText;
@synthesize iStatusType;
@synthesize iNoImgFlag;
@synthesize iNormalBackColor;
@synthesize iHighLightBackColor;
@synthesize iButtonWidth;

static const CGFloat defaultwidth = 108.00f;
static const CGFloat defaultheight=  44.00f;

- (id)initWithNormalImage:(UIImage *)aNormalImage
       withHighlightImage:(UIImage *)aHighlightImage
                 withText:(NSString *)aText
           withStatusCode:(NSString *)aStatusCode
          withServiceCode:(NSString *)aServiceCode
               withStatus:(NSString *)aStatus
{
  self = [super init];
  if (self)
    {
    self.iHighlightImage = aHighlightImage;
    self.iNormalImage = aNormalImage;
    self.iText = aText;
    self.iStatusCode = aStatusCode;
    self.iServiceCode = aServiceCode;
    self.iStatus = aStatus;
    self.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [self setTitle:self.iText forState:UIControlStateNormal];
    [self setButtonStatus:ENORMAL];
    }
  return self;
}


- (id)initWithNormalColor:(UIColor *)aNormalImage
       withHighlightColor:(UIColor *)aHighlightImage
                 withText:(NSString *)aText
           withStatusCode:(NSString *)aStatusCode
          withServiceCode:(NSString *)aServiceCode
               withStatus:(NSString *)aStatus
                withWidth:(NSInteger)aWidth
{
  self = [super init];
  if (self)
  {
    iButtonWidth = aWidth;
    iNoImgFlag = YES;
    self.iHighLightBackColor = aHighlightImage;
    self.iNormalBackColor = aNormalImage;
    self.iText = aText;
    self.iStatusCode = aStatusCode;
    self.iServiceCode = aServiceCode;
    self.iStatus = aStatus;
    self.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    [self setTitleColor:aHighlightImage forState:UIControlStateNormal];
    [self setTitle:self.iText forState:UIControlStateNormal];
    [self setButtonStatus:ENORMAL];

  }
  return self;
}


- (void)setShadowColor:(UIColor *)aShadowColor
     WithShadowOffSize:(CGSize)aShadowOffSize
              withStatus:(UIControlState)aStatus
{
  if (self)
  {
    if (aStatus == UIControlStateNormal)
    {
      iNormalStatusShadowColor = aShadowColor;
      iNormalStatusShadowOffSize = aShadowOffSize;
    }
    else
    {
      iHighLightStatusShadowColor = aShadowColor;
      iHighLightStatusShadowOffSize = aShadowOffSize;
    }
    if(iStatusType == EHIGHLIGHT)
    {
      if(iHighLightStatusShadowColor)
      {
        [self setTitleShadowColor:iHighLightStatusShadowColor forState:UIControlStateNormal];
        self.titleLabel.shadowOffset = iHighLightStatusShadowOffSize;
      }
      else if(iNormalStatusShadowColor)
      {
        [self setTitleShadowColor:iNormalStatusShadowColor forState:UIControlStateNormal];
        self.titleLabel.shadowOffset = iNormalStatusShadowOffSize;
      }
    }
    else
    {
      if(iNormalStatusShadowColor)
      {
        [self setTitleShadowColor:iNormalStatusShadowColor forState:UIControlStateNormal];
        self.titleLabel.shadowOffset = iNormalStatusShadowOffSize;
      }
    }
  }
}

- (void)setTitleWithFont:(UIFont *)aFont
               withColor:(UIColor *)aColor
              withStatus:(UIControlState)aStatus
{
  if (self)
  {
    self.titleLabel.font = aFont;
    if (aStatus == UIControlStateNormal)
    {
      iNormalStatusColor = aColor;
    }
    else
    {
      iHighLightStatusColor = aColor;
    }
    if(iStatusType == EHIGHLIGHT)
    {
      if(iHighLightStatusColor)
      {
        [self setTitleColor:iHighLightStatusColor forState:UIControlStateNormal];
      }
      else if(iNormalStatusColor)
      {
        [self setTitleColor:iNormalStatusColor forState:UIControlStateNormal];
      }
    }
    else
    {
      if(iNormalStatusColor)
      {
        [self setTitleColor:iNormalStatusColor forState:UIControlStateNormal];
      }
    }
  }
}

- (CGFloat)getWidth
{
  if (iNoImgFlag) {
    return iButtonWidth;
  }
  else
  {
    CGFloat width;
    CGFloat widthOfHighlightImage = iHighlightImage?iHighlightImage.size.width:0.00f;
    CGFloat widthOfNormalImage = iNormalImage?iNormalImage.size.width:0.00f;
    width= widthOfHighlightImage > widthOfNormalImage?widthOfNormalImage:widthOfHighlightImage;
    if(width ==0)
      width =  defaultwidth;
    return width;
  }
}

- (CGFloat)getHeigth
{
  if (iNoImgFlag) {
    return 44;
  }
  else
  {
    CGFloat height;
    CGFloat heightOfHighlightImage = iHighlightImage?iHighlightImage.size.height:0.00f;
    CGFloat heightOfNormalImage = iNormalImage?iNormalImage.size.height:0.00f;
    height= heightOfHighlightImage > heightOfNormalImage?heightOfNormalImage:heightOfHighlightImage;
    if(height ==0)
      height = defaultheight;
    return height;
  }
 }

- (void)setButtonStatus:(TWAButtonStatus)aStatus
{
  iStatusType = aStatus;
  if (self.iNoImgFlag) {
    switch (aStatus)
    {
      case ENORMAL:
      {
        [self setSelected:NO];
        //[self setBackgroundColor:[UIColor clearColor]];
        if(iNormalStatusColor)
        {
          [self setTitleColor:iNormalStatusColor forState:UIControlStateNormal];
          
        }
//        if(iNormalStatusShadowColor)
//        {
//          [self setTitleShadowColor:iNormalStatusShadowColor forState:UIControlStateNormal];
//          self.titleLabel.shadowOffset = iNormalStatusShadowOffSize;
//        }
      }
        break;
      case EHIGHLIGHT:
      {
        //[self setBackgroundColor:[UIColor clearColor]];
        [self setSelected:YES];
        if(iHighLightStatusColor)
        {
          [self setTitleColor:iHighLightStatusColor forState:UIControlStateNormal];
        }
//        if(iHighLightStatusShadowColor)
//        {
//          [self setTitleShadowColor:iHighLightStatusShadowColor forState:UIControlStateNormal];
//          self.titleLabel.shadowOffset = iHighLightStatusShadowOffSize;
//        }
        
      }
        break;
      default:
        break;
    }
  }
  else
  {
    switch (aStatus)
    {
      case ENORMAL:
      {
        [self setBackgroundImage:self.iNormalImage forState:UIControlStateNormal];
        if(iNormalStatusColor)
        {
          [self setTitleColor:iNormalStatusColor forState:UIControlStateNormal];
          
        }
        if(iNormalStatusShadowColor)
        {
          [self setTitleShadowColor:iNormalStatusShadowColor forState:UIControlStateNormal];
          self.titleLabel.shadowOffset = iNormalStatusShadowOffSize;
        }
      }
        break;
      case EHIGHLIGHT:
      {
        [self setBackgroundImage:self.iHighlightImage forState:UIControlStateNormal];
        if(iHighLightStatusColor)
        {
          [self setTitleColor:iHighLightStatusColor forState:UIControlStateNormal];
        }
        if(iHighLightStatusShadowColor)
        {
          [self setTitleShadowColor:iHighLightStatusShadowColor forState:UIControlStateNormal];
          self.titleLabel.shadowOffset = iHighLightStatusShadowOffSize;
        }
        
      }
        break;
      default:
        break;
    }
  }
  
}

@end
