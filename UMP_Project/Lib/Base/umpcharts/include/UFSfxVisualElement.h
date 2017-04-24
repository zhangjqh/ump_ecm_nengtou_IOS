//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxUIElement.h"

@interface UFSfxVisualElement : UFSfxUIElement {
    int _savedOpacity;
}

/**
 *	@brief	背景填充刷
 */
@property(nonatomic, strong) UFSfxBrush * background;

/**
 *	@brief	边框填充刷
 */
@property(nonatomic, strong) UFSfxBrush * borderBrush;

/**
 *	@brief	字体
 */
@property(nonatomic, strong) UFSfxDrawFont * font;

/**
 *	@brief	透明度
 */
@property(nonatomic, assign, readwrite) int opacity;

/**
 *	@brief	文本
 */
@property(nonatomic, copy) NSString * text;

/**
 *	@brief	内容对齐方式
 */
@property(nonatomic, readwrite) UFSfxContentAlignment textAlignment;


@end

@interface UFSfxVisualElement (ObjectProperty)

+ (UFSfxObjectProperty *)defaultSizeProperty;

+ (UFSfxObjectProperty *)backgroundProperty;

+ (UFSfxObjectProperty *)borderBrushProperty;

+ (UFSfxObjectProperty *)fontProperty;

+ (UFSfxObjectProperty *)opacityProperty;

+ (UFSfxObjectProperty *)textProperty;

+ (UFSfxObjectProperty *)textAlignmentProperty;


@end