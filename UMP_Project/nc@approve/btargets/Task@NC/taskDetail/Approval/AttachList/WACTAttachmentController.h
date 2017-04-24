//
//  WACTAttachmentController.h
//  CollaborationTask
//
//  Created by Lemon on 13-5-9.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WAAttachmentController.h"
#import "WAAttachmentViewController.h"
#import "AppDelegate.h"
#import "WACTAttachmentViewController.h"

@interface CWACTAttachmentController : CWAAttachmentController

- (void)scanAttachment;

- (void) attchDownloadWithFileID:(NSString*)aFileID
                    withFileSize:(NSInteger)aFileSize
                    withFileName:(NSString*)aFileName
                    withFileType:(NSString*)aFileType
               withFileDirectory:(NSString *)aFileDirectory
                withComplementID:(NSString *)aComplementId
                 withServiceCode:(NSString *)aServiceCode
                  withActionType:(NSString *)aActiontype;
@end
