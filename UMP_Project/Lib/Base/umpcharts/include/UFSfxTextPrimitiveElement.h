//
//  Created by 宋永强 on 11-9-4.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBasePrimitiveElement.h"

@interface UFSfxTextPrimitiveElement : UFSfxBasePrimitiveElement {
    
}

@property(copy, nonatomic) NSString * text;
@property(nonatomic) UFSfxOrientation textOrientation;
@property(nonatomic) UFSfxContentAlignment textAlignment;

@end

@interface UFSfxTextPrimitiveElement (ObjectProperty)

+ (UFSfxObjectProperty *)textProperty;

+ (UFSfxObjectProperty *)textAlignmentProperty;

+ (UFSfxObjectProperty *)textOrientationProperty;

@end