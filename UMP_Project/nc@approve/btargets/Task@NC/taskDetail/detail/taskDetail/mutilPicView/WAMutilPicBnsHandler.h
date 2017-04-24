
#import <Foundation/Foundation.h>
#import "WAFirstPicContentRequestVO.h"
#import "WAOtherPicContentRequestVO.h"
#import "WAHTTPRequestHandler.h"

typedef void (^TWAPicReturnBlock) (NSDictionary *aDic,NSError *aError);
@interface CWAMutilPicBnsHandler : NSObject<MWAHTTPNotify>
{
  TWAPicReturnBlock iPicReturnBlock;
}

@property (nonatomic,copy)TWAPicReturnBlock iPicReturnBlock;


- (void)getFirstPicWithRequestVO:(CWAFirstPicContentRequestVO *)aRequestVO
                 WithServiceCode:(NSString *)aServiceCode
              withPicReturnBlock:(TWAPicReturnBlock)aPicReturnBlock;

- (void)getOtherPicWithRequestVO:(CWAOtherPicContentRequestVO *)aRequestVO
                 WithServiceCode:(NSString *)aServiceCode
              withPicReturnBlock:(TWAPicReturnBlock)aPicReturnBlock;
@end
