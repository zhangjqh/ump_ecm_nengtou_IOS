#import "UMCustomer_listExtendcontext.h"

@implementation UMCustomer_listExtendcontext


 -(void)setcustomerid:(NSString*)value{
  [super setValue:@"customerid" source:value];
}


 -(NSString*)getcustomerid{
 return [super getValue:@"customerid"];
}


 -(void)setcustomername:(NSString*)value{
  [super setValue:@"customername" source:value];
}


 -(NSString*)getcustomername{
 return [super getValue:@"customername"];
}



@end
