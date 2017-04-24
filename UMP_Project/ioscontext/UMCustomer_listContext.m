

#import "UMCustomer_listContext.h"

@implementation UMCustomer_listContext


 -(void)setcustomerid:(NSString*)value{
 [self setValue:@"customerid" source:value];
}


 -(NSString*)getcustomerid{
 return [self getValue:@"customerid"];
}


 -(void)setcustomername:(NSString*)value{
 [self setValue:@"customername" source:value];
}


 -(NSString*)getcustomername{
 return [self getValue:@"customername"];
}



@end
