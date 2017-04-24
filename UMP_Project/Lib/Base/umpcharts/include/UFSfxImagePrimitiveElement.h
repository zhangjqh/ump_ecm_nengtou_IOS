//
//  Created by 宋永强 on 11-9-4.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBasePrimitiveElement.h"

@interface UFSfxImagePrimitiveElement : UFSfxBasePrimitiveElement {
}

@property(nonatomic, strong) UIImage * image;
@property(nonatomic) UFSfxImageMode imageLayout;

@end

@interface UFSfxImagePrimitiveElement (ObjectProperty)

+ (UFSfxObjectProperty *)imageProperty;
+ (UFSfxObjectProperty *)imageLayoutProperty;


@end