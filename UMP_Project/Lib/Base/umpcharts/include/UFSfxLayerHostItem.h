//
//  Created by 宋永强 on 11-9-17.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxHostItem.h"

@interface UFSfxLayerHostItem : UFSfxHostItem {
@private
    __unsafe_unretained CALayer * _layer;
}

@property(nonatomic, unsafe_unretained, readonly) CALayer *layer;

- (id)initWithLayer:(CALayer *)layer;


@end