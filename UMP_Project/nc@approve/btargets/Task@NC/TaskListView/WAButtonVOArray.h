#import <Foundation/Foundation.h>
#import "WAButtonVO.h"
/*!
 *	@header	WAButtonVOArray.h
 *	@abstract	按钮组数据对象
 *	@discussion	
 *	@author	huych
 *	@copyright	ufida
 *	@version	1.0 2012-07-26 09:43:58 Creation
 */
@interface CWAButtonVOArray : NSObject
{
  NSMutableArray *buttonVOs;
}

/*!
 *	@property
 *	@abstract	buttonVOs	按钮组
 */
@property (nonatomic,retain) NSMutableArray *buttonVOs;

/*!
 *	@method
 *	@abstract	添加button
 *	@discussion	
 *	@param 	buttonVO 	button数据vo
 */
- (void)addButtonVO:(CWAButtonVO *)buttonVO;

/*!
 *	@method
 *	@abstract	根据索引获取按钮数据vo
 *	@discussion	
 *	@param 	aIndex 	索引
 *	@result	获取到的数据VO,owned,不需要释放
 */
- (CWAButtonVO *)getButtonVoWithIndex:(int)aIndex;

/*!
 *	@method
 *	@abstract	获取按钮数量
 *	@discussion	
 *	@result	按钮数量
 */
- (int)count;

@end
