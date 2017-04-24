//
//  Created by 宋永强 on 12-2-22.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxJSONConvertable.h"

@class UMPBusinessEntity;
@class UFSfxJsonObject;

@interface UMPEntityKey : NSObject<NSCopying, UFSfxJSONConvertable>

@property(nonatomic, readonly) Class entityType;
@property(nonatomic, readonly, assign) long pk;
@property(nonatomic, readonly, strong) UMPBusinessEntity * entity;

- (id)initWithEntityType:(Class)entityType pk:(long)pk;

- (id)initWithEntityName:(NSString *)entityName pk:(long)pk;

@end