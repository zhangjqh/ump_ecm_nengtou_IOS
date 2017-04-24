//  WAPlaceHolderTextView
//  ECMWork
//
//  Created by evan on 13-5-28.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWAPlaceHolderTextView : UITextView
@property (nonatomic, retain) NSString *placeholder;
@property (nonatomic, retain) UIColor *placeholderColor;

-(void)textChanged:(NSNotification*)notification;
@end
