//
//  WAColTaskAttachVO.m
//  CollaborationTask
//
//  Created by Lemon on 13-3-13.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTAttachVO.h"

@implementation CWACTAttachVO
@synthesize iFileID;
@synthesize iFileSize;
@synthesize iFileName;
@synthesize iFileType;
@synthesize iDownflag;
@synthesize iFile;

- (id)init
{
  self = [super init];
  if (self)
  {
    iFileID = @"";
    iFileSize = @"";
    iFileName = @"";
    iFileType = @"";
    iDownflag = @"";
    iFile = @"";
  }
  return self;
}

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iFileID?self.iFileID:@"" ,WA_ATTACHLIST_FILEID_RES,
                                     self.iFileSize?self.iFileSize:@"" ,WA_ATTACHLIST_FILESIZE_RES,
                                     self.iFileName?self.iFileName:@"" ,WA_ATTACHLIST_FILENAME_RES,
                                     self.iFileType?self.iFileType:@"" ,WA_ATTACHLIST_FILETYPE_RES,
                                     self.iDownflag?self.iDownflag:@"" ,WA_ATTACHLIST_DOWNFLAG_RES,
                                     self.iFile?self.iFile:@"" ,WA_ATTACHLIST_FILE_RES,
                                     nil];

  self.voDictionary = requestPara;

}

- (void)setSelfWithVO:(CWACTAttachVO *)aVO
{
  self.iFileID = aVO.iFileID;
  self.iFileSize = aVO.iFileSize;
  self.iFileName = aVO.iFileName;
  self.iFileType = aVO.iFileType;
  self.iDownflag = aVO.iDownflag;
  self.iFile = aVO.iFile;
}
@end
