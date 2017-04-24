//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxNativeControlWrapper.h"

@interface UFSfxUIViewWrapper : UFSfxNativeControlWrapper {
    __unsafe_unretained UIView * _hostedView;
}



@end