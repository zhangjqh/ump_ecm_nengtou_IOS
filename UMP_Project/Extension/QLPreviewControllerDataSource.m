//
//  QLPreviewControllerDataSource.m
//  UMP_Project
//
//  Created by sunchaof on 15/8/25.
//
//

#import "QLPreviewControllerDataSource.h"

@implementation QLPreviewControllerDataSource

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{
    return 1;
}


- (id <QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{
       return [NSURL fileURLWithPath:_path];
}

@end
