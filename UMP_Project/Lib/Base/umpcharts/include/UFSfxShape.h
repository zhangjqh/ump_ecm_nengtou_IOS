//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBrush.h"
#import "UFSfxPen.h"
#import "UFSfxUIElement.h"
#import "UFSfxVisualElement.h"

@class UFSfxTranslateTransform;

@interface UFSfxShape : UFSfxVisualElement {
    UFSfxPen * _pen;
    int _strokeThicness;
}

@property(nonatomic) int strokeThicness;


@end