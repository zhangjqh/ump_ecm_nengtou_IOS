//
//  QLPreviewControllerDataSource.h
//  UMP_Project
//
//  Created by sunchaof on 15/8/25.
//
//

#import <Foundation/Foundation.h>
#import <QuickLook/QuickLook.h>

@interface QLPreviewControllerDataSource : NSObject <QLPreviewControllerDataSource>
@property (nonatomic,copy) NSString* path;
@end
