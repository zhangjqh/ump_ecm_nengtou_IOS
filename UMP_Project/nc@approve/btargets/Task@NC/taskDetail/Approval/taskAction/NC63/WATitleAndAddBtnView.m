

#import "WATitleAndAddBtnView.h"
#import "TaskDef.h"

#define WA_TASK_PADDING_HEIGHT 8

#define WA_TASK_PADDING_WIDTH 8

@implementation CWATitleAndAddBtnView

@synthesize iAddBtn;
@synthesize iActionLabel;

- (id)initWithFrame:(CGRect)frame
     WithLableFrame:(CGRect)aLableFrame
       WithBtnFrame:(CGRect)aBtnFrame
       WithBtnImage:(UIImage *)aBtnImage
          WithTitle:(NSString *)aTitle
{
    self = [super initWithFrame:frame];
    if (self)
    {
      [self initActionLabelWithFrame:aLableFrame withTitle:aTitle];
      [self initAddBtnWithImage:aBtnImage WithBtnFrame:aBtnFrame];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
     WithLableFrame:(CGRect)aLableFrame
       WithBtnFrame:(CGRect)aBtnFrame
       WithBtnImage:(UIImage *)aBtnImage
WithBtnHighlightImg:(UIImage *)aHbtnImag
          WithTitle:(NSString *)aTitle
{
//  self = [self initWithFrame:frame WithLableFrame:aLableFrame WithBtnFrame:aBtnFrame WithBtnImage:aBtnImage WithTitle:aTitle];
//  self.iAddBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//  [iAddBtn setBackgroundImage:aBtnImage forState:UIControlStateNormal];
//  [iAddBtn setBackgroundImage:aHbtnImag forState:UIControlStateHighlighted];
//  return self;
  self = [super initWithFrame:frame];
  if (self)
  {
    [self initActionLabelWithFrame:aLableFrame withTitle:aTitle];
    [self initAddBtnWithImage:aBtnImage WithHightlightImg:aHbtnImag WithBtnFrame:aBtnFrame];
  }
  return self;
  
}

- (void)initAddBtnWithImage:(UIImage *)aImage WithHightlightImg:(UIImage *)aHimg WithBtnFrame:(CGRect)aBtnFrame
{
  self.iAddBtn = [UIButton buttonWithType:UIButtonTypeCustom];
  [iAddBtn setBackgroundImage:aImage forState:UIControlStateNormal];
  [iAddBtn setBackgroundImage:aHimg forState:UIControlStateHighlighted];
  [iAddBtn setFrame:aBtnFrame];
  [self addSubview:iAddBtn];
}

- (void)initAddBtnWithImage:(UIImage *)aImage WithBtnFrame:(CGRect)aBtnFrame
{
  self.iAddBtn = [UIButton buttonWithType:UIButtonTypeCustom];
  [iAddBtn setBackgroundImage:aImage forState:UIControlStateNormal];
  [iAddBtn setBackgroundImage:aImage forState:UIControlStateHighlighted];
  [iAddBtn setFrame:aBtnFrame];
  [self addSubview:iAddBtn];
}

- (void)initActionLabelWithFrame:(CGRect)aFrame
                       withTitle:(NSString *)aTitle
{
  iActionLabel = [[UILabel alloc] initWithFrame:aFrame];
  [iActionLabel setBackgroundColor:[UIColor clearColor]];
  [iActionLabel setTextColor:[UIColor grayColor]];
  iActionLabel.text = aTitle;//动态设置
  [iActionLabel setFont:WA_TASK_FONT_KAKU_W3_12];
  [iActionLabel setLineBreakMode:NSLineBreakByTruncatingTail];
  //[iActionLabel sizeToFit];
  [self addSubview:iActionLabel];
}

@end
