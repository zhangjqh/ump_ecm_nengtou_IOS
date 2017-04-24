//
//  Created by 宋永强 on 11-9-4.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxVisualElement.h"

@interface UFSfxBasePrimitiveElement : UFSfxVisualElement {

}

@property(nonatomic, readonly) BOOL isEmpty;

- (void)paintPrimitive:(id <UFSfxIRenderContext, NSObject>)renderContext;
@end