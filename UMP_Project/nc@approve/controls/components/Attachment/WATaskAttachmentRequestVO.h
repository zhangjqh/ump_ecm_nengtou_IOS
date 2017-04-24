/*!
 @header CWATaskAttachmentRequestVO.h
 @abstract 任务附件列表请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/06 Creation 
 */

#import "WABaseVO.h"

@interface CWATaskAttachmentRequestVO : CWABaseVO

/*!
 @method
 @abstract 初始化方法
 @discussion 初始化方法
 @param aDic 传入的字典用于初始化任务列表请求vo
 @result void
 */
- (id)initWithDic:(NSMutableDictionary *)aDic;
@end
