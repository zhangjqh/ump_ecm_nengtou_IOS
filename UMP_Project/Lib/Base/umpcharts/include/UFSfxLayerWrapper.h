//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxNativeControlWrapper.h"

@interface UFSfxLayerWrapper : UFSfxNativeControlWrapper {
    __unsafe_unretained CALayer * _hostedLayer;
}

@end