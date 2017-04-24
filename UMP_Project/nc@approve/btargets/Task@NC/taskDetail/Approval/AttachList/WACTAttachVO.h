//
//  WAColTaskAttachVO.h
//  CollaborationTask
//
//  Created by Lemon on 13-3-13.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WACommonInfoVO.h"

#define WA_ATTACHLIST_FILEID_RES @"fileid"
#define WA_ATTACHLIST_FILESIZE_RES @"filesize"
#define WA_ATTACHLIST_FILENAME_RES @"filename"
#define WA_ATTACHLIST_FILETYPE_RES @"filetype"
#define WA_ATTACHLIST_DOWNFLAG_RES @"downflag"
#define WA_ATTACHLIST_FILE_RES @"file"

@interface CWACTAttachVO : CWABaseVO
{
  NSString *iFileID;
  NSString *iFileSize;
  NSString *iFileName;
  NSString *iFileType;
  NSString *iDownflag;
  NSString *iFile;
}

@property (nonatomic, copy) NSString *iFileID;
@property (nonatomic, copy) NSString *iFileSize;
@property (nonatomic, copy) NSString *iFileName;
@property (nonatomic, copy) NSString *iFileType;
@property (nonatomic, copy) NSString *iDownflag;
@property (nonatomic, copy) NSString *iFile;

- (void)setSelfWithVO:(CWACTAttachVO *)aVO;

- (id)init;

@end
