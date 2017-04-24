#import "UMCustomer_listMapping.h"
@implementation UMCustomer_listMapping

-(void)mapping:(UMEntityContext *)from object:(UMEntityContext *)to{
    
    
    [super mapping:from object:to];
}

-(void)mappingto{
  
  [self.toObject setValue:@"customerid" source:[self.fromObject getValue:@"customerid"]];


  [self.toObject setValue:@"customername" source:[self.fromObject getValue:@"customername"]];


}

-(void)remapping{
  
  [self.fromObject setValue:@"customerid" source:[self.toObject getValue:@"customerid"]];


  [self.fromObject setValue:@"customername" source:[self.toObject getValue:@"customername"]];


}

@end
