#import "UMIOSCommon.h"
#import "UMCustomerExtendcontext.h"
#import "UMCustomer_listExtendcontext.h"
#import "UMCustomer_listExtendMapping.h"



@interface UMCustomer : NSObject

-(UMEntityContext *)getContext:(NSString *)json;

@end
