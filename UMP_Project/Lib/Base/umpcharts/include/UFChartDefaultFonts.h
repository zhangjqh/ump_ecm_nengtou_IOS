//
//  Created by 宋永强 on 11-5-31.
//
//  To change this template use File | Settings | File Templates.
//


#import <Foundation/Foundation.h>

#import "UFSfxDrawFont.h"


/**
 *	@brief	提供图表中的一些默认字体。
 */
@interface UFChartDefaultFonts : NSObject {


}

/**
 *	@brief	获取默认的8号系统字体。
 *
 *	@return	字体。
 */
+ (UFSfxDrawFont *)getSystemFont8;

/**
 *	@brief	获取默认的9号系统字体。
 *
 *	@return	字体。
 */
+ (UFSfxDrawFont *)getSystemFont9;

/**
 *	@brief	获取默认的10号系统字体。
 *
 *	@return	字体。
 */
+ (UFSfxDrawFont *)getSystemFont10;

/**
 *	@brief	获取默认的12号系统字体。
 *
 *	@return	字体。
 */
+ (UFSfxDrawFont *)getSystemFont12;

/**
 *	@brief	获取默认的系统字体。
 *  
 *	@return	字体。默认字体依据设备而不同。iPhone和iPod返回的是9号字体。而iPad则返回12号字体。
 */
+ (UFSfxDrawFont *)getDefaultFont;
@end