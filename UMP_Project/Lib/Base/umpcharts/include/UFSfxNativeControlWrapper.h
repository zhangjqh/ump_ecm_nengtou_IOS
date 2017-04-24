//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"

@class UFSfxSizeF;
@class UFSfxRectF;
@class UFSfxPointF;
@class UFSfxThickness;

@interface UFSfxNativeControlWrapper : NSObject {
@private
    __unsafe_unretained id _hostedControl;
}

@property(nonatomic, unsafe_unretained, readonly) id hostedControl;
@property(nonatomic, unsafe_unretained, readonly) id parent;
@property(nonatomic, readwrite) BOOL autoSize;
@property(nonatomic, copy) UFSfxPointF * location;
@property(nonatomic, copy) UFSfxSizeF * size;
@property(nonatomic, copy) UFSfxRectF * bounds;
@property(nonatomic) BOOL visible;

- (id)initWithHostedControl:(id)hostedControl;

@end