/*!
 @header WAPushSettingVO.h
 @abstract APSN客户端push消息类型VO
 @discussion 
 @author huych
 @copyright UFIDA
 @version 
 */

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWAPushSettingVO : CWABaseVO
{
  
  @private
  NSString *iIsBadge;
  NSString *iIsAlert;
  NSString *iIsSound;
}

/*!
 @property
 @abstract 是否接受标题
 */
@property(nonatomic,copy)NSString *iIsBadge;

/*!
 @property
 @abstract 是否接受警告信息
 */
@property(nonatomic,copy)NSString *iIsAlert;

/*!
 @property
 @abstract 是否接受声音信息
 */
@property(nonatomic,copy)NSString *iIsSound;

@end
