//
//  WAAttachmentVO.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-3.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWAAttachmentVO : CWABaseVO
{
  NSString *iFileID;
  NSString *iFileName;
  NSString *iFileSize;
  NSString *iFileType;
  NSString *iDownloadFlag;
  NSString *iFile;
  NSDictionary *userInfo;
}

@property (copy, nonatomic) NSString *iFileID;
@property (copy, nonatomic) NSString *iFileName;
@property (copy, nonatomic) NSString *iFileSize;
@property (copy, nonatomic) NSString *iFileType;
@property (copy, nonatomic) NSString *iDownloadFlag;
@property (copy, nonatomic) NSString *iFile;
@property (retain, nonatomic) NSDictionary *userInfo;

- (id)init;

@end
