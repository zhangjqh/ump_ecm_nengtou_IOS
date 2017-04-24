//
//  Created by 宋永强 on 11-5-30.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"
#import "UFSfxDrawColor.h"
#import "UFSfxGradient.h"
#import "UFSfxRectF.h"

@interface UFSfxBrush : NSObject {
//    BOOL _visible;
    NSUInteger _opacity; //透明度 (0 - 255)
}

@property(nonatomic) NSUInteger opacity;


- (id)clone;

- (void)assign:(UFSfxBrush *)obj;

- (UFSfxBrush *)createObjectForClone;

@end