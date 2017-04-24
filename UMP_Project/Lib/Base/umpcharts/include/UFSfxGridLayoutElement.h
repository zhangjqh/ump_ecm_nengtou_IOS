//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxLayoutElement.h"

@class UFSfxColumnDefinitionCollection;
@class UFSfxRowDefinitionCollection;


@interface UFSfxGridLayoutElement : UFSfxLayoutElement {
@private
    NSMutableArray * _definitionIndices;
//    __unsafe_unretained UFSfxColumnDefinitionCollection *_columDefinitions;
//    __unsafe_unretained UFSfxRowDefinitionCollection *_rowDefinitions;
    int _flags;
    
}

//@property(nonatomic, readwrite) BOOL showGridLines;
@property(nonatomic, readonly) UFSfxColumnDefinitionCollection *columDefinitions;
@property(nonatomic, readonly) UFSfxRowDefinitionCollection *rowDefinitions;

/**
 *	@brief	将Element放入到指定列。
 *
 *	@param 	element 	要放入到Grid中的Element
 *	@param 	column 	列的位置（0表示第一列）。
 */
+ (void)setColumn:(UFSfxUIElement *)element column:(NSUInteger)column;

/**
 *	@brief	获取element放入的列位置。
 *
 *	@param 	element 	element
 *
 *	@return	列的位置
 */
+ (int)getColumn:(UFSfxUIElement *)element;


/**
 *	@brief	将Element放入到指定行。
 *
 *	@param 	element 	要放入到Grid中的Element
 *	@param 	row 	行的位置（0表示第一行）。
 */
+ (void)setRow:(UFSfxUIElement *)element row:(NSUInteger)row;

/**
 *	@brief	获取element放入的行位置。
 *
 *	@param 	element 	element
 *
 *	@return	行的位置
 */
+ (int)getRow:(UFSfxUIElement *)element;


/**
 *	@brief	<#Description#>
 *
 *	@param 	element 	<#element description#>
 *	@param 	span 	<#span description#>
 */
+ (void)setColumnSpan:(UFSfxUIElement *)element span:(NSUInteger)span;


+ (int)getColumnSpan:(UFSfxUIElement *)element;

+ (void)setRowSpan:(UFSfxUIElement *)element span:(NSUInteger)span;

+ (int)getRowSpan:(UFSfxUIElement *)element;

/**
 *	@brief	添加一行
 *
 *	@param 	value 	行的高度值
 *	@param 	unitType 	行的高度长度单位
 */
- (void)addRowDefinition:(float)value unitType:(UFSfxGridUnitType)unitType;

/**
 *	@brief	添加一列
 *
 *	@param 	value 	列的宽度值
 *	@param 	unitType 	列的宽度长度单位
 */
- (void)addColumnDefinition:(float)value unitType:(UFSfxGridUnitType)unitType;

@end

@interface UFSfxGridLayoutElement (ObjectProperty)


+ (UFSfxObjectProperty *)columnProperty;

+ (UFSfxObjectProperty *)rowProperty;

+ (UFSfxObjectProperty *)columnSpanProperty;

+ (UFSfxObjectProperty *)rowSpanProperty;

+ (UFSfxObjectProperty *)showGridLinesProperty;


@end