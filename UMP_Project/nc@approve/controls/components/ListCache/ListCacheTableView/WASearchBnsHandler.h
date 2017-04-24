/*!
 @header WASearchBnsHandler.m
 @abstract 可用量搜索的的bnshandler
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import <Foundation/Foundation.h>
#import "WAHTTPRequestHandler.h"
#import "WAHTTPNotify.h"
#import "WACommonInfoVO.h"
#import "WABnsDesVO.h"



/*!
 @class
 @abstract searchview的bnshandler
 @discussion 实现数据返回
 */

@interface CWASearchBnsHandler : NSObject<MWAHTTPNotify>
{
}

/*!
 @method
 @abstract 存储历史记录
 @result 
 */
-(BOOL)saveASearchHistory:(NSString*)aSearchHistory 
                 WithPath:(NSString*)aCachePath;

/*!
 @method
 @abstract 获取历史记录数组
 */
-(NSMutableArray*)getHistoryArray:(NSString*)aCachePath;

@end

