#import "UMCustomer.h"

@implementation UMCustomer

-(UMEntityContext *)getContext:(NSString *)json{
    

    UMEntityContext * context = [[UMEntityContext alloc] initWithJSON:json];
    
    NSMutableDictionary * rootDic = [[NSMutableDictionary alloc] init];
    
    
    [rootDic setValue:@"list" forKey:@"list"];



    
    UMCustomerExtendcontext * umcontext = [[UMCustomerExtendcontext alloc] initWithJSON:[rootDic JSONString]];
    
    
 NSArray * array =[[NSArray alloc] initWithArray:[[context getValue:@"list"] objectFromJSONString]];
NSMutableArray * contextsArr = [[NSMutableArray alloc] init];
 for (int i=0; i<[array count];i++) { 

   UMEntityContext * currentContext = [[UMEntityContext alloc] initWithJSON:[[array objectAtIndex:i] JSONString]];

   NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];


  [dic setValue:@"customerid" forKey:@"customerid"];


  [dic setValue:@"customername" forKey:@"customername"];


    UMCustomer_listExtendcontext * listcontext = [[UMCustomer_listExtendcontext alloc] initWithJSON:[dic JSONString]];
   UMCustomer_listExtendMapping * mapping = [[UMCustomer_listExtendMapping alloc] init];
   [mapping mapping:currentContext object:listcontext];
   [mapping mappingto];
    [contextsArr addObject:[listcontext.currentJson objectFromJSONString]];
 }
 [umcontext setlist:contextsArr];



 
    return umcontext;
}
@end
