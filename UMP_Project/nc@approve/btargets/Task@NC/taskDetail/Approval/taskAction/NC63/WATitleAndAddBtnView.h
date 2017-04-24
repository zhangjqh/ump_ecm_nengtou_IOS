#import <UIKit/UIKit.h>


@interface CWATitleAndAddBtnView : UIView
{
  UILabel *iActionLabel;
  UIButton *iAddBtn;
}

@property (nonatomic,retain)UIButton *iAddBtn;
@property (nonatomic,retain)UILabel *iActionLabel;

- (id)initWithFrame:(CGRect)frame
     WithLableFrame:(CGRect)aLableFrame
       WithBtnFrame:(CGRect)aBtnFrame
       WithBtnImage:(UIImage *)aBtnImage
          WithTitle:(NSString *)aTitle;

- (id)initWithFrame:(CGRect)frame
     WithLableFrame:(CGRect)aLableFrame
       WithBtnFrame:(CGRect)aBtnFrame
       WithBtnImage:(UIImage *)aBtnImage
WithBtnHighlightImg:(UIImage *)aHbtnImag
          WithTitle:(NSString *)aTitle;
@end
