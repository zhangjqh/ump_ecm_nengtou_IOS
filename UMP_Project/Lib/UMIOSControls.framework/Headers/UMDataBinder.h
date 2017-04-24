//
//  UMDataBinder.h
//  UMCommon
//
//  Created by controlspace on 13-3-26.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "commonHelper.h"
@interface UMDataBinder : NSObject
-(void)bind:(UIViewController*)controller parameters:(NSString*)params;
@end
