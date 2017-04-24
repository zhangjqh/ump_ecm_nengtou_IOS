
#import <UIKit/UIKit.h>
#import "WATaskListBnsHandler.h"

@interface CWATaskListNC63BnsHandler : CWATaskListBnsHandler


+ (NSMutableArray *)getStatusListWithRequsetDic:(NSDictionary *)aRequsetDic
                                      withMsgVO:(CWAResponseMsg *)aMsgVO;

- (void)requestWithDate:(NSString *)aDate
           andStartline:(NSString *)startline
               andCount:(NSString *)aCount
           andStatusKey:(NSString *)aStatusKey
         WithSeviceCode:(NSMutableArray *)aSeviceCode
          andStatusCode:(NSString *)aStatusCode;

- (void)sendTaskBillMsg:(NSArray *)aRequestArray
        withServiceCode:(NSString *)aServiceCode
         WithIsReminder:(BOOL)aIsReminder;
@end
