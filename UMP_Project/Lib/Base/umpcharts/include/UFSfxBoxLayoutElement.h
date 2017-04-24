//
//  Created by 宋永强 on 11-8-24.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxLayoutElement.h"

@interface UFSfxBoxLayoutElement : UFSfxLayoutElement {
    
}

/**
* 
*/
@property(nonatomic) UFSfxOrientation orientation;

+ (float)getProportion:(UFSfxUIElement *)element;

+ (void)setProportion:(UFSfxUIElement *)element proportion:(float)proportion;

- (UFSfxUIElement *)addControl:(id)control proportion:(float)proportion;


@end