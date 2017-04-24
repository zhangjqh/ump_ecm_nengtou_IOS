
/*!

 	@header	获取html请求类

 	@abstract

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-13 16:39:40 Creation

 */

#import <Foundation/Foundation.h>
#import "WAHTMLContentRequestVO.h"
#import "WABnsDesVO.h"
#import "WAHTTPRequestHandler.h"

typedef void (^TWAHTMLContentReturnBlock)
(NSDictionary *aHTMLContentDic,NSError *aError);

@interface CWAHTMLContentBnsHandler : NSObject <MWAHTTPNotify>
{
  CWABnsDesVO *iBnsDesVO;
  TWAHTMLContentReturnBlock iBlock;
}

@property (nonatomic,copy)TWAHTMLContentReturnBlock iBlock;

- (void)getHtmlContentWithHTMLContentRequestVO:(CWAHTMLContentRequestVO *)aHTMLContentRequestVO
                                withSeviceCode:(NSString *)aSeviceCode
                                     withBlock:(TWAHTMLContentReturnBlock)aBlock;


@end
