//
//  UINavigationController+Animation.h
//  AnimationDemo
//
//  Created by dingheng on 13-7-20.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UmpAnimationUtil.h"
@interface UINavigationController (Animation)


- (void)pushViewController: (UIViewController*)controller
          animatedWithType:(int)type
                   subtype:(int)subtype
                  duration:(double)duration;

- (void)pushWithViewControllers: (NSArray*)viewControllers
               animatedWithType:(int)type
                   subtype:(int)subtype
                 duration:(double)duration;

- (UIViewController *)popViewControllerAnimatedWithType:(int)type
                                                subtype:(int)subtype
                                               duration:(double)duration;

@end
