//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPITransaction.h"

@class UMPDefaultSession;

@interface UMPTransaction : NSObject<UMPITransaction> {
@private
    UMPDefaultSession * _conn;
}
- (id)initWithConn:(UMPDefaultSession *)conn;


@end