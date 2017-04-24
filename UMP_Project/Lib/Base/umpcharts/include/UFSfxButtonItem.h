//
//  Created by 宋永强 on 11-9-5.
//
//


#import <Foundation/Foundation.h>

#import "UFSfxVisualElement.h"

@interface UFSfxButtonItem : UFSfxVisualElement {

}
- (id)initWithText:(NSString *)text;

@property(nonatomic, strong) UIImage * image;
@property(nonatomic) UFSfxContentAlignment imageAlignment;
@property(nonatomic) UFSfxTextImageRelation textImageRelation;
@property(nonatomic) UFSfxTextImageDisplayStyle displayStyle;

@end

@interface UFSfxButtonItem (ObjectProperty)

+ (UFSfxObjectProperty *)imageProperty;

+ (UFSfxObjectProperty *)imageAlignmentProperty;

+ (UFSfxObjectProperty *)textImageRelationProperty;

+ (UFSfxObjectProperty *)displayStyleProperty;


@end