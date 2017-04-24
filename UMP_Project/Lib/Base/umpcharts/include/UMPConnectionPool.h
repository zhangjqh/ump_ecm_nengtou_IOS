//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxArrayList.h"

@protocol UMPISession;
/**
* internal class.
*/
@interface UMPConnectionPool : UFSfxArrayList

- (void)addConnection:(id<UMPISession>)connection;
- (id <UMPISession>)getAvaliableConnection;

@end