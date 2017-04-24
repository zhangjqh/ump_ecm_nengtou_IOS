//
//  NCFile.h
//  
//
//  Created by dingh on 15/8/21.
//
//

#import <UMIOSControls/UMIOSControls.h>
#import <QuickLook/QuickLook.h>
#import "QLPreviewControllerDataSource.h"
#import "NCDocumentInteractionControllerDelegate.h"
#import "AppDelegate.h"

@interface UMDevice (QL)

/*
 *  @brief	打开PDF、word、Excel、png等
 *
 *  @param  path 文件路径
 */

+(void)openFile:(XEventArgs *)args;

@end
