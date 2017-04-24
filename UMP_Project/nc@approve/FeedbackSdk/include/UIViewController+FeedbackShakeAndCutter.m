//
//  UIViewController+ShakeAndCutter.m
//  MSCDemo
//
//  Created by ligf on 14-2-25.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "UIViewController+FeedbackShakeAndCutter.h"
#import <QuartzCore/QuartzCore.h>
#import "NewFeedbackViewController.h"
#import "FeedbackCustomNavigationController.h"

@implementation UIViewController (FeedbackShakeAndCutter)

#pragma mark - 摇一摇动作处理

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"shakeBegan");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"shakeEnd");
    
    BOOL isResponseShake = [[NSUserDefaults standardUserDefaults]boolForKey:@"UserDefaultsIsResponseShake"];
    
    NSLog(@"isResponseShake == %d",isResponseShake);
    if (isResponseShake)
    {
        
        [self cutterViewToDocument];
        NewFeedbackViewController  *mailViewController = [[NewFeedbackViewController alloc] init];
        mailViewController.isFromShake = YES;
        FeedbackCustomNavigationController *cusNav = [[FeedbackCustomNavigationController alloc]initWithRootViewController:mailViewController];
        [self presentViewController:cusNav animated:YES completion:nil];
    }
}

#pragma mark - 截屏处理

- (void)cutterViewToDocument
{
    UIWindow *screenWindow = [[UIApplication sharedApplication] keyWindow];
    
    UIGraphicsBeginImageContext(screenWindow.frame.size);
    [screenWindow.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *screenShot = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    NSData *screenShotPNG = UIImagePNGRepresentation(screenShot);
    NSError *error = nil;
    [screenShotPNG writeToFile:[[NSHomeDirectory() stringByAppendingPathComponent:@"Documents"] stringByAppendingPathComponent:@"error.png"] options:NSAtomicWrite error:&error];
}

@end
