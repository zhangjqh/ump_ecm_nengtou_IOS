//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCommonEnums.h"


@interface UFSfxGridLength : NSObject {
@private
    float _unitValue;
    UFSfxGridUnitType _unitType;
}

/**
 *	@brief	长度值
 */
@property(nonatomic, readonly) float value;

/**
 *	@brief	长度单位
 */
@property(nonatomic, readonly) UFSfxGridUnitType unitType;

/**
 *	@brief	返回长度单位是否是Auto
 */
@property(nonatomic, readonly) BOOL isAuto;

/**
 *	@brief	返回长度单位是否是Star
 */
@property(nonatomic, readonly) BOOL isStar;

/**
 *	@brief	返回长度单位是否是Pixel
 */
@property(nonatomic, readonly) BOOL isAbsolute;


- (id)initWithUnitValue:(float)unitValue unitType:(UFSfxGridUnitType)unitType;

- (id)initWithUnitValue:(float)unitValue;


@end