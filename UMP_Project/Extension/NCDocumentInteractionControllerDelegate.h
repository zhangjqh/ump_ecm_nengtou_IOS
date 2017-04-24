//
//  NCDocumentInteractionControllerDelegate.h
//  UMP_Project
//
//  Created by sunchaof on 15/8/25.
//
//

#import <Foundation/Foundation.h>

@interface NCDocumentInteractionControllerDelegate : NSObject <UIDocumentInteractionControllerDelegate>

- (instancetype)initWithLastViewController:(UIViewController*)last;
@end
