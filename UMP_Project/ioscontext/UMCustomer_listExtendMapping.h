#import "UMCustomer_listMapping.h"

@interface UMCustomer_listExtendMapping : UMCustomer_listMapping

-(void)mapping:(UMEntityContext *)from object:(UMEntityContext *)to;

-(void)mappingto;

-(void)remapping;

@end
