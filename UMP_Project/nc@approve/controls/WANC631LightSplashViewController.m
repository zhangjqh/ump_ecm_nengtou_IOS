//  CWANC631LightSplashViewController.m
//  MobileCRM
//
//  Created by HUYCH on 14-4-22.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WANC631LightSplashViewController.h"

@interface CWANC631LightSplashViewController ()

@end

@implementation CWANC631LightSplashViewController

- (UIImageView *)getLogoImageView
{
  UIImage *image  = [UIImage imageNamed:@"login_logo_large.png"];
  UIImageView *LogoImageView = [[UIImageView alloc] initWithImage:image];
  LogoImageView.frame = CGRectMake(110.0f, 128.00f, 96, 96);
  
  return LogoImageView;
}

@end
