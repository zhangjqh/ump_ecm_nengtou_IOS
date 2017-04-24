
//  CollaborationTask
//
//  Created by Lemon on 13-4-3.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAAttachmentVO.h"

@implementation CWAAttachmentVO
@synthesize iFileID;
@synthesize iFileName;
@synthesize iFileSize;
@synthesize iFileType;
@synthesize iDownloadFlag;
@synthesize iFile;
@synthesize userInfo;

- (id)init
{
  self = [super init];
  if (self)
  {
    iFileID = @"";
    iFileName = @"";
    iFileSize = @"";
    iFileType = @"";
    iDownloadFlag = @"";
    iFile = @"";
    userInfo = nil;
  }
  return self;
}

@end
