//
//  Created by 宋永强 on 12-2-23.
//
//


#import <Foundation/Foundation.h>
#import "UMPPersistenceContext.h"

@class UMPEntityKey;

@interface UMPEntityEntry : NSObject<NSCopying> {
@private
    UMPBusinessEntity * _entity;
    UMPPersistenceEntityStatus _status;
}
@property(nonatomic, readonly) UMPEntityKey *entityKey;
@property(nonatomic, readonly, assign) UMPPersistenceEntityStatus status;
@property(nonatomic, readonly) UMPBusinessEntity *entity;

- (id)initWithEntity:(UMPBusinessEntity *)entity status:(UMPPersistenceEntityStatus)status;

@end