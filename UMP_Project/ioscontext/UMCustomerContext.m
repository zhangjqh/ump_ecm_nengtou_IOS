

#import "UMCustomerContext.h"

@implementation UMCustomerContext


 -(NSArray *)getlist{

 return [[self getValue:@"list"] objectFromJSONString];
}


 -(void)setlist:(NSArray*)value{
 
 [self setValue:@"list" source:[value JSONString]]; 
}




@end
