//
//  NCDocumentInteractionControllerDelegate.m
//  UMP_Project
//
//  Created by sunchaof on 15/8/25.
//
//

#import "NCDocumentInteractionControllerDelegate.h"
#import "AppDelegate.h"

@interface NCDocumentInteractionControllerDelegate()
@property (nonatomic,strong) UIViewController* controller;
@end


@implementation NCDocumentInteractionControllerDelegate



- (instancetype)initWithLastViewController:(UIViewController*)last{
    if (self = [super init]) {
        self.controller = last;
    }
    return self;
}

- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)interactionController
{
    return self.controller;
}

@end
