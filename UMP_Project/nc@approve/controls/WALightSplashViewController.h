#import <UIKit/UIKit.h>
#import "WASplashViewController.h"

#define DEVICE_IPHONE_5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

@interface CWALightSplashViewController : CWASplashViewController
{
  BOOL isAddSubView;
}
@property (nonatomic,assign)BOOL isAddSubView;

@end
