
#import "UITabBar+WATabBarCategory.h"

@implementation UITabBar (WATabBarCategory)

static NSString *clearBd = @"clear.png";
- (void)clearShadow
{
  double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
  if(version < 6.0f)
  {
    
  }
  else
  {
    [self setShadowImage:[UIImage imageNamed:clearBd]];
  }
}
@end
