/*!
 	@header	界面VO
 	@abstract
 	@discussion	
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-13 16:14:55 Creation
 */
#import "WABaseVO.h"
@interface CWAHTMLContentViewVO : CWABaseVO
{
  NSString *iHtmlname;
  NSString *iHtmlfile;
  NSString *iResoucedir;
  NSArray *iResourcelist;
}

@property (nonatomic,copy)NSString *iHtmlname;
@property (nonatomic,copy)NSString *iHtmlfile;
@property (nonatomic,copy)NSString *iResoucedir;
@property (nonatomic,retain) NSArray *iResourcelist;

@end
