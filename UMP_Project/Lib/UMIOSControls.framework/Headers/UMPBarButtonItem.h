//
//  UMPBarButtonItem.h
//  UMPControl
//
//  Created by dingheng on 13-3-15.
//  Copyright (c) 2013年 Yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMPThemeManager.h"

typedef enum {
    UMPBarButtonItemTypeForward = 0,   //右边带剪头
    UMPBarButtonItemTypeNormal,        //正常
    UMPBarButtonItemTypeBackward       //左边带剪头
} UMPBarButtonItemType;

@interface UMPBarButtonItem : UIBarButtonItem<UMPThemeDelegate>

/**
 *	@brief	UMPBarButtonItem类型
 *	
 */

@property (nonatomic, assign) UMPBarButtonItemType type;
/**
 *	@brief	初始化UMPBarButtonItem。
 *
 *	@param 	theType 	类型
 *	@param 	title 	    标题
 *	@param 	target 	    调用对象
 *  @param  action      实现方法
 */
- (id)initWithType:(UMPBarButtonItemType)theType title:(NSString *)title target:(id)target action:(SEL)action;

- (id)initWithUMImageNamed:(NSString*)imageName target:(id)target action:(SEL)action;

- (void)setUMBarButtonBackgroundImageByImageNamed:(NSString*)imageName forState:(UIControlState)state;

@end
