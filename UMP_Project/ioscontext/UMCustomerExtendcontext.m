#import "UMCustomerExtendcontext.h"

@implementation UMCustomerExtendcontext


 -(NSArray *)getlist{

 return [[super getValue:@"list"] objectFromJSONString];
}


 -(void)setlist:(NSArray*)value{
 
 [super setValue:@"list" source:[value JSONString]]; 
}




@end
