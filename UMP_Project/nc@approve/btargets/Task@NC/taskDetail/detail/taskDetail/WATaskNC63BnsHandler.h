
/*!

 	@header	NC63任务请求类

 	@abstract

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-15 14:57:08 Creation

 */

#import "CWATaskBnsHandler.h"
#import "WADefaultValueRequsetVO.h"

typedef enum
{
  EWAGetApprovedDetail = 0,
  EWAGETDEFAULTVALUE = 1
}TWARQUESTTYPE;


typedef void (^TWAGetDefaultValeBlock) (NSDictionary *aDefaultValeDic,NSError *aError);

@interface CWATaskNC63BnsHandler : CWATaskBnsHandler
{
  TWARQUESTTYPE iRequstType;
  TWAGetDefaultValeBlock iGetDefaultValeBlock;
}
@property (nonatomic,copy)TWAGetDefaultValeBlock iGetDefaultValeBlock;

- (void)getDefaultValueWithDefaultValueRequsetVO:(CWADefaultValueRequsetVO *)aDefaultValueRequsetVO
                                 withServiceCode:(NSString *)aServiceCode
                         withGetDefaultValeBlock:(TWAGetDefaultValeBlock) aGetDefaultValeBlock;
@end
