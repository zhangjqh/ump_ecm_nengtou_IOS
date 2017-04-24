
/*!
 	@header	html正文内容控制类
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-14 08:44:35 Creation
 */
#import <Foundation/Foundation.h>
#import "WAHTMLContentViewVO.h"
#import "WAHTMLContentBnsHandler.h"

typedef void (^TWAHTMLContentVOReturnBlock)
(NSURL *aUrl);

@interface CWAHTMLContentController : NSObject
{
  CWAHTMLContentViewVO *iHTMLContentViewVO;
  CWAHTMLContentBnsHandler *iHTMLContentBnsHandler;
}

@property (nonatomic,retain)CWAHTMLContentViewVO *iHTMLContentViewVO;

- (void)getHTMLContentWithTaskID:(NSString *)aTaskID
                   WithStatuskey:(NSString *)aStatuskey
                  WithStatuscode:(NSString *)aStatuscode
                          WithID:(NSString *)aID
                    WithDownflag:(NSString *)aDownflag
                 WithServiceCode:(NSString *)aServicecode
                 WithReturnBlock:(TWAHTMLContentVOReturnBlock)aHTMLContentVOReturnBlock;

@end
