/*!
 @header CWATaskAttachmentRequestVO.m
 @abstract 任务附件列表请求vo
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/06 Creation 
 */

#import "WATaskAttachmentRequestVO.h"

@implementation CWATaskAttachmentRequestVO

//初始化方法
- (id)initWithDic:(NSMutableDictionary *)aDic
{
  if ((self = [super init])) 
  {
    [self setVoDictionary:aDic];
  }
  return self;
}
@end
