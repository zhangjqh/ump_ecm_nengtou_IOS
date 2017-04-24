//
//  UMPNavigationController.h
//  UMPControls
//
//  Created by zhangnan on 13-3-19.
//
//

#import <UIKit/UIKit.h>
#import "UMPThemeManager.h"
#define UMPNAVIGATIONBARBACKGROUND @"navigationbarBg.png"

@interface UMPNavigationController : UINavigationController<UMPThemeDelegate>

-(void)setBackgroundImg:(UIImage *)backgroundImage;


//-(void)push:(UIViewController *)viewController animated:(BOOL)a;


-(void)setTitleWithView:(UIView*)titleView;

-(void)setTitleWithString:(NSString*)titleString;
@end
