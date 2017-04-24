
/*!

 	@header	常用审批意见列表请求类

 	@abstract

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-23 16:16:28 Creation

 */

#import <Foundation/Foundation.h>
#import "WANormallyNoteListRequestVO.h"
#import "WAHTTPRequestHandler.h"

typedef void (^TWANoteListReturnBlock) (NSDictionary *aDic,NSError *aError);
@interface CWANormallyNoteListBnsHandler : NSObject<MWAHTTPNotify>
{
  TWANoteListReturnBlock iNoteListReturnBlock;
}

@property (nonatomic,copy) TWANoteListReturnBlock iNoteListReturnBlock;

- (void)getNormalNoteWithVO:(CWANormallyNoteListRequestVO *)aVO
            WithServiceCode:(NSString *)aServiceCode
                  withBlock:(TWANoteListReturnBlock)aBlock;
@end
