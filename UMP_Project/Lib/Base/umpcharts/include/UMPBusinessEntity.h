//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObject.h"
#import "UFSfxJSONConvertable.h"
#import "UMPEnums.h"

@protocol UMPISession;
@class UMPEntityMetaData;
@class UMPAbstractQuery;
@class UMPWhere;
@class UMPEntityQuery;
@class UMPSimpleQuery;
@class UMPEntityKey;

@interface UMPBusinessEntity : UFSfxObject<UFSfxJSONConvertable>

@property(nonatomic, readonly) long id;
@property(nonatomic, readonly) UMPEntityKey * entityKey;

- (void)onValidate;

- (void)beforeInsert;

- (void)beforeUpdate;

- (void)beforeDelete;

- (void)afterTransactionFail_extend;

- (void)afterTransactionSuccess_extend;

- (void)fromJSON:(NSDictionary *)json;

- (NSString *)JSONString;

- (NSString *)JSONStringWithOptions:(JSONSerializeOptionFlags)serializeOptions;

+ (UMPEntityMetaData *)metaData;

+ (UMPEntityQuery *)entityQuery;

+ (UMPSimpleQuery *)simpleQuery;

+ (UMPBusinessEntity *)fromJSON:(NSDictionary *)json;

@end

