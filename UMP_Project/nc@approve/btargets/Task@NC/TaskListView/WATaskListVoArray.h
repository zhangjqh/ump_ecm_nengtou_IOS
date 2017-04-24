/*!
 @header WATaskListVoArray.h
 @abstract 任务中心列表VO数组
 @author huych 
 @copyright ufida
 @version 1.00 2012/06/23 Creation 
 */

#import <Foundation/Foundation.h>

@interface CWATaskListVoArray : NSObject
{
  NSArray *iSectionTitleArray;
  NSMutableDictionary *iContentDic;
  BOOL iIsMutiServiceCode;
  
}

/*!
 @property
 @abstract iSectionTitleArray 所有组名称
 */
@property(nonatomic,retain) NSArray *iSectionTitleArray;

/*!
 @property
 @abstract iContentArray 所有的数据，二维的，行代表组，列代表组下的数据
 */
@property(nonatomic,retain)NSMutableDictionary *iContentDic;

@property(nonatomic,assign)BOOL iIsMutiServiceCode;
@end
