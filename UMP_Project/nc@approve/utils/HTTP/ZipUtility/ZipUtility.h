//
//  ZipUtility.h
//  U8ReportSample
//
//  Created by 谢友泽 on 11-11-3.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "zlib.h"

@interface ZipUtility : NSObject {
    
}
+(NSData*) gzipData: (NSData*)pUncompressedData;
+(NSData *)uncompressZippedData:(NSData *)compressedData;
@end
