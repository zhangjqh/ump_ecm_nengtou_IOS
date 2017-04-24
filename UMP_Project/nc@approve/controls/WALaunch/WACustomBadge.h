

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface CWACustomBadge : UIView
{	
	NSString *iBadgeText;
	UIColor *iBadgeTextColor;
	UIColor *iBadgeInsetColor;
	UIColor *iBadgeFrameColor;
	BOOL iBadgeFrame;
	BOOL iBadgeShining;
	CGFloat iBadgeCornerRoundness;
	CGFloat iBadgeScaleFactor;
  CGFloat iBadgeHeight;
}

@property(nonatomic,copy) NSString *iBadgeText;
@property(nonatomic,retain) UIColor *iBadgeTextColor;
@property(nonatomic,retain) UIColor *iBadgeInsetColor;
@property(nonatomic,retain) UIColor *iBadgeFrameColor;

@property(nonatomic,assign) BOOL iBadgeFrame;
@property(nonatomic,assign) BOOL iBadgeShining;

@property(nonatomic,assign) CGFloat iBadgeCornerRoundness;
@property(nonatomic,assign) CGFloat iBadgeScaleFactor;
@property(nonatomic,assign) CGFloat iBadgeHeight;

+ (CWACustomBadge*) customBadgeWithString:(NSString *)aBadgeString;
+ (CWACustomBadge*) customBadgeWithString:(NSString *)aBadgeString
                       withStringColor:(UIColor*)aStringColor
                        withInsetColor:(UIColor*)aInsetColor
                        withBadgeFrame:(BOOL)aBadgeFrameYesNo
                   withBadgeFrameColor:(UIColor*)aFrameColor
                             withScale:(CGFloat)aScale
                              withShining:(BOOL)aShining
                          withBadgeHeight:(CGFloat)aHeight;

- (void) autoBadgeSizeWithString:(NSString *)aBadgeString;

@end
