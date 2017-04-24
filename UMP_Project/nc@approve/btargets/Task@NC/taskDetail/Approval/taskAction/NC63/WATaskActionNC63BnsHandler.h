
#import <Foundation/Foundation.h>
#import "WADoActionRequstsVO.h"
#import "WABnsDesVO.h"
#import "WAHTTPRequestHandler.h"
#import "WAAttachMentUpRequestsVO.h"

typedef  void (^TWATaskActionReturnBlock) (NSString *aSuccessStr,NSError *aError);

@interface CWATaskActionNC63BnsHandler : NSObject<MWAHTTPNotify>
{
  TWATaskActionReturnBlock iTaskActionReturnBlock;
}

@property (nonatomic,copy)TWATaskActionReturnBlock iTaskActionReturnBlock;

- (void)doActionWithDoActionRequstsVO:(CWADoActionRequstsVO *)aDoActionRequstsVO
           WithAttachMentUpRequestsVO:(CWAAttachMentsUpRequestsVO *)aAttachMentUpRequestsVO
                      WithServiceCode:(NSString *)aServiceCode
                      withReturnBlock:(TWATaskActionReturnBlock)aBlock;

@end
