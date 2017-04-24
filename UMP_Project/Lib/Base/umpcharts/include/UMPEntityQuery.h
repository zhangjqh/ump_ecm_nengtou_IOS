//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPAbstractQuery.h"

@interface UMPEntityQuery : UMPAbstractQuery {

}

/**
* find all records and bind to entity, return entity list.
*/
- (NSArray *)findAll:(id<UMPISession>)session;

@end