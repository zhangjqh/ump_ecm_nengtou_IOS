//
//  NCFile.m
//  
//
//  Created by dingh on 15/8/21.
//
//

#import "NCFile+QL.h"

#define DOWNLOADFILE  [NSString stringWithFormat:@"%@/download",[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) objectAtIndex:0]]

@implementation UMDevice(QL) 

static QLPreviewControllerDataSource* qlDataSource;
static UIDocumentInteractionController* docVC;
static NCDocumentInteractionControllerDelegate* ncInteractionDelegate;
/*
 *  @brief	打开PDF、word、Excel、png等
 */

+(void)openFile:(XEventArgs *)args{
    
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    UINavigationController* nav = appDelegate.navigationCtl;
    [args check:@"path"];
    [args check:@"filename"];
    [args check:@"filetype"];
    [args check:@"filepath"];
    
    NSString * path = [args getString:@"path"];
    
    if (path == nil || [path isEqualToString:@""]) {
        
        path = [NSString stringWithFormat:@"%@/%@%@",DOWNLOADFILE,[args getString:@"filepath"],[args getString:@"filename"]];
        
        //文件路径是否存在
        if (![[UMFileManager sharedInstance] isExit:path]) {
            
            // filepath文件路径  filename文件名
            path = [NSString stringWithFormat:@"%@%@",[args getString:@"filepath"],[args getString:@"filename"]];
        }
        
   
    }
    
    if ([path hasSuffix:@".edc"] || [path hasSuffix:@".EDC"]) {
        NSURL* filePath = [NSURL fileURLWithPath:path];
        UIViewController* lastObj = (UIViewController*)[nav.childViewControllers lastObject];
        docVC = [UIDocumentInteractionController interactionControllerWithURL:filePath];
        ncInteractionDelegate = [[NCDocumentInteractionControllerDelegate alloc] initWithLastViewController:lastObj];
        docVC.delegate = ncInteractionDelegate;

        if (![docVC presentOpenInMenuFromRect:CGRectZero inView:lastObj.view animated:NO]) {
            UIAlertView* alert = [[UIAlertView alloc] initWithTitle:nil message:@"没有能打开此文件的相关应用" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
        };
    }
    else{
    
        QLPreviewController* qlVC = [[QLPreviewController alloc] init];
        
        QLPreviewControllerDataSource *dataSource = [[QLPreviewControllerDataSource alloc] init];
        dataSource.path = path;
        
        qlVC.dataSource = dataSource;
        qlDataSource = dataSource;
        qlVC.title = [args getValue:@"filename"];
        
        [nav presentModalViewController:qlVC animated:NO];
    }
    
    
    
}

-(void)dealloc{
    NSLog(@"%@------%s",@"UMDevice(QL)",__func__);
    qlDataSource = nil;
    docVC = nil;
    ncInteractionDelegate = nil;
}




@end
