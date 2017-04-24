#import "WAUserListNC63Cell.h"
#import "WAStringUtil.h"
#define TEXTLABLEFONT [UIFont fontWithName:@"STHeitiSC-Medium" size:15];
@implementation CWAUserListNC63Cell


@synthesize iDeSelectImage;
@synthesize iSelectImage;
@synthesize iLinkManVO;
@synthesize isSelected;

static CGFloat maxNameLableWidth = 140;
static CGFloat Height = 45;


#pragma mark 单选byhoulzh
//单选时初始化的图片和frame
- (id)initWithStyleSingle:(UITableViewCellStyle)style
      WithReuseIdentifier:(NSString *)reuseIdentifier
          WithSelectImage:(UIImage *)aSelectImage
        WithDeSelectImage:(UIImage *)aDeSelectImage
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.iDeSelectImage = aDeSelectImage;
        self.iSelectImage = aSelectImage;
        
    }
    return self;
}

- (void)reSetLableFrameSingle
{
    CGRect frame = CGRectMake(272.0, 8.0, 32.0, 32.0);
    iImageView = [[UIImageView alloc] initWithFrame:frame];
    frame.origin.x = 16.0;
    
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:16.0];
    
    CGFloat width = [CWAStringUtil getWidthOfString:iLinkManVO.iName withFont:font] + 10;
    
    if(width > maxNameLableWidth)
    {
        width = maxNameLableWidth;
    }
    frame.size.width = width;
    
    if(!iNameLabel)
    {
        iNameLabel = [[UILabel alloc] initWithFrame:frame];
    }
    else
    {
        iNameLabel.frame = frame;
    }
    frame.origin.x = frame.origin.x + frame.size.width + 16.0f;
    frame.size.width = 200;
    
    if(!iCodeLabel)
    {
        iCodeLabel = [[UILabel alloc] initWithFrame:frame];
    }
    else
    {
        iCodeLabel.frame = frame;
    }
    iCodeLabel.backgroundColor = [UIColor clearColor];
    iCodeLabel.font = font;
    
    iNameLabel.backgroundColor = [UIColor clearColor];
    iNameLabel.font = font;
    [self addSubview:iNameLabel];
    [self addSubview:iCodeLabel];
    [self addSubview:iImageView];
}

- (void)setLinkManSingle:(CWALinkManVO *)aLinkMan
               WithIsSel:(BOOL)aIsSel
{
    self.iLinkManVO = aLinkMan;
    
    CGRect frame = CGRectZero;
    frame.size.height = iSelectImage.size.height;
    frame.size.width = iSelectImage.size.width;
    
    
    
    if(aIsSel)
    {
        iImageView.image = self.iSelectImage;
    }
    else
    {
        iImageView.image = self.iDeSelectImage;
    }
    frame.origin.y = (Height - frame.size.height)/2;
    frame.origin.x = iImageView.frame.origin.x;
    iImageView.frame = frame;
    [self reSetLableFrameSingle];
    CGRect icodframe = iCodeLabel.frame;
    icodframe.size.width = 200.00f;
    iCodeLabel.frame = icodframe;
    iNameLabel.text = iLinkManVO.iName;
    iCodeLabel.text = iLinkManVO.iMark;
    
}

#pragma mark 多选
- (id)initWithStyle:(UITableViewCellStyle)style
WithReuseIdentifier:(NSString *)reuseIdentifier
    WithSelectImage:(UIImage *)aSelectImage
  WithDeSelectImage:(UIImage *)aDeSelectImage
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.iDeSelectImage = aDeSelectImage;
        self.iSelectImage = aSelectImage;
    }
    return self;
}

- (void)reSetLableFrame
{
    CGRect frame = CGRectMake(8.0, 13.0, 32.0, 32.0);
    iImageView = [[UIImageView alloc] initWithFrame:frame];
    frame.origin.x = frame.origin.x + frame.size.width + 8.0;
    
    UIFont *font = [UIFont fontWithName:@"HiraKakuProN-W3" size:14.0];
    
    CGFloat width = [CWAStringUtil getWidthOfString:iLinkManVO.iName withFont:font]+10;
    
    if(width > maxNameLableWidth)
    {
        width = maxNameLableWidth;
    }
    frame.size.width = 200.00f;
    frame.origin.y = 8;
    frame.size.height = 24;
    if(!iCodeLabel)
    {
        iCodeLabel = [[UILabel alloc] initWithFrame:frame];
    }
    else
    {
        iCodeLabel.frame = frame;
    }
    
    frame.origin.y = frame.origin.y + frame.size.height ;
    frame.size.height = 18;
    if(!iNameLabel)
    {
        iNameLabel = [[UILabel alloc] initWithFrame:frame];
    }
    else
    {
        iNameLabel.frame = frame;
    }
    
    [iCodeLabel setLineBreakMode:NSLineBreakByClipping];
    iCodeLabel.backgroundColor = [UIColor clearColor];
    iCodeLabel.font = WA_TASK_FONT_KAKU_W3_14;
    iCodeLabel.textColor = WA_TASK_COLOR_31;
    
    iNameLabel.backgroundColor = [UIColor clearColor];
    iNameLabel.font = WA_TASK_FONT_KAKU_W3_12;
    iNameLabel.textColor = WA_TASK_COLOR_31;
    
    [self addSubview:iNameLabel];
    [self addSubview:iCodeLabel];
    [self addSubview:iImageView];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    if(selected)
    {
        iImageView.image = self.iSelectImage;
    }
    else
    {
        iImageView.image = self.iDeSelectImage;
    }
    
}

- (void)setLinkMan:(CWALinkManVO *)aLinkMan
         WithIsSel:(BOOL)aIsSel
{
    self.iLinkManVO = aLinkMan;
    
    CGRect frame = CGRectZero;
    if(aIsSel)
    {
        frame.size.height = iSelectImage.size.height;
        frame.size.width = iSelectImage.size.width;
    }
    else
    {
        frame.size.height = iDeSelectImage.size.height;
        frame.size.width = iDeSelectImage.size.width;
    }
    
    
    if(aIsSel)
    {
        iImageView.image = self.iSelectImage;
    }
    else
    {
        iImageView.image = self.iDeSelectImage;
    }
    frame.origin.y = (Height - frame.size.height)/2;
    iImageView.frame = frame;
    [self reSetLableFrame];
    
    iNameLabel.text = iLinkManVO.iName;
    iCodeLabel.text = iLinkManVO.iMark;
    
}


- (void)layoutSubviews
{
    CGRect frame = CGRectZero;
    if(isSelected)
    {
        frame.size.height = iSelectImage.size.height;
        frame.size.width = iSelectImage.size.width;
    }
    else
    {
        frame.size.height = iDeSelectImage.size.height;
        frame.size.width = iDeSelectImage.size.width;
    }
    
    
    if(isSelected)
    {
        iImageView.image = self.iSelectImage;
    }
    else
    {
        iImageView.image = self.iDeSelectImage;
    }
}

@end
