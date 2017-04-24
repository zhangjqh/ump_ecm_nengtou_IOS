#import "UMContextMapping.h"

@interface UMCustomer_listMapping : UMContextMapping

-(void)mapping:(UMEntityContext *)from object:(UMEntityContext *)to;

-(void)mappingto;

-(void)remapping;

@end
