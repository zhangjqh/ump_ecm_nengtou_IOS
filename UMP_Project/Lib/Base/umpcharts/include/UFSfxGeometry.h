//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxPoint.h"
#import "UFSfxPointF.h"
#import "UFSfxRect.h"
#import "UFSfxRectF.h"
#import "UFSfxSize.h"
#import "UFSfxSizeF.h"
#import "UFSfxDrawColor.h"
#import "UFSfxDrawFont.h"
#import "UFSfxBrush.h"
#import "UFSfxPen.h"

@interface UFSfxGeometry : NSObject {

}

- (UFSfxRectF *)getRenderBounds:(UFSfxPen *)pen;

@end