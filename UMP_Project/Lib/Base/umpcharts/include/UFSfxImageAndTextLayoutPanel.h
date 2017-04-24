//
//  Created by 宋永强 on 11-9-3.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxLayoutElement.h"

@interface UFSfxImageAndTextLayoutPanel : UFSfxLayoutElement {
    __unsafe_unretained UFSfxUIElement * _imageElement;
    __unsafe_unretained UFSfxUIElement * _textElement;
}

@property(nonatomic) UFSfxContentAlignment imageAlignment;
@property(nonatomic) UFSfxContentAlignment textAlignment;
@property(nonatomic) UFSfxTextImageRelation textImageRelation;
@property(nonatomic) UFSfxTextImageDisplayStyle displayStyle;


@end

@interface UFSfxImageAndTextLayoutPanel (ObjectProperty)
+ (UFSfxObjectProperty *)imageAlignmentProperty;

+ (UFSfxObjectProperty *)textAlignmentProperty;

+ (UFSfxObjectProperty *)textImageRelationProperty;

+ (UFSfxObjectProperty *)displayStyleProperty;

+ (UFSfxObjectProperty *)isTextPrimitiveProperty;

+ (UFSfxObjectProperty *)isImagePrimitiveProperty;


@end