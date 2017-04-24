/*!
 @header WATaskListVO.h
 @abstract 任务中心列表VO
 @author huych 
 @copyright ufida
 @version 1.00 2012/06/23 Creation 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
@interface CWATaskListVO : CWABaseVO
{
  NSString *iIconPath;
  NSString *iTitle;
  NSString *iStatus;
  NSString *iName;
  NSString *iTime;
  NSString *iID;
  NSString *iServiceCode;
}

/*!
 @property
 @abstract iIconPath 图片路径信息
 */
@property(nonatomic,copy)NSString *iIconPath;

/*!
 @property
 @abstract iTitle 标题
 */
@property(nonatomic,copy)NSString *iTitle;

/*!
 @property
 @abstract iStatus 状态
 */
@property(nonatomic,copy)NSString *iStatus;

/*!
 @property
 @abstract iName 名称
 */
@property(nonatomic,copy)NSString *iName;

/*!
 @property
 @abstract iTime 时间
 */
@property(nonatomic,copy)NSString *iTime;

/*!
 @property
 @abstract iID id
 */
@property(nonatomic,copy)NSString *iID;

/*!
 *	@property
 *	@abstract	iServiceCode	存储serviceCode
 */
@property(nonatomic,copy)NSString *iServiceCode;


@end
