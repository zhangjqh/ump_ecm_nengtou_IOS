//
//  UMFileSystem.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-7-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

typedef enum
{
    FILEREADINGPATH_DOCUMENT=1,
    FILEREADINGPATH_LIBRARY,
    FILEREADINGPATH_TEMPORARY,
    FILEREADINGPATH_APP
}FILEREADINGPATH;

#import <Foundation/Foundation.h>

@interface UMFileSystem : NSObject<UITableViewDelegate,UITableViewDataSource>

- (id)init;

+ (BOOL)fileExists:(NSString*)path;
- (BOOL)creatFileAtPath:(NSString*)path;
- (BOOL)testDirectoryExists:(NSString*)path;

- (BOOL)createDirectoryToPath:(NSString*)path withDirectoryName:(NSString*)directoryName;

- (NSString*)readFileFromPath:(NSString*)path;
- (void)writeFileToPath:(NSString*)path withData:(NSString*)data fromDataIndex:(int)fromDataIndex append:(BOOL)append;
- (void)removeFile:(NSString*)path;

//file&path Query Operations
- (void)selectFileFromPathType:(FILEREADINGPATH)pathType;
- (void)addTarget:(id)target actionForSelectFileOrDirectory:(SEL)action;
@end
