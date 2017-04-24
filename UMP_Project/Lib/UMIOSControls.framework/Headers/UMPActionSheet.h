//
//  UMPActionSheet.h
//  UMIOSControls
//
//  电话控件
//
//  Created by dingheng on 13-4-23.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>

@interface UMPActionSheet : NSObject<UIActionSheetDelegate,MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate,UIAlertViewDelegate>

@property (nonatomic,strong,readonly) UIActionSheet *sheet;


+ (UMPActionSheet *)sharedActionsheet;

+ (void) showWithPhoneNumber:(NSString *)phone;
@end
