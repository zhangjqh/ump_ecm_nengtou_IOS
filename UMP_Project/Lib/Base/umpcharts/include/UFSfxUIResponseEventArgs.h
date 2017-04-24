//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxEventArgs.h"

@interface UFSfxUIResponseEventArgs : UFSfxEventArgs {
@private
    UIEvent * _event;
}

@property(nonatomic, strong, readonly) UIEvent *event;

- (id)initWithEvent:(id)sender event:(UIEvent *)event;


@end