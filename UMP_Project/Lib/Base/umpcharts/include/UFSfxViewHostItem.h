//
//  Created by 宋永强 on 11-10-13.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxHostItem.h"

@interface UFSfxViewHostItem : UFSfxHostItem {
@private
    __unsafe_unretained UIView * _view;
}

@property(nonatomic, unsafe_unretained, readonly) UIView *view;


@end