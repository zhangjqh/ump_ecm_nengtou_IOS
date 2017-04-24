//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObjectPropertyMetadata;


@interface UFSfxObjectProperty : NSObject {
    id _uniqueKey;
    int _gloablIndex;
    NSString * _name;
    Class _ownerType;
    id _defalutValue;
    UFSfxObjectPropertyMetadata * _defaultMetadata;
}

+ (id)unsetValue;

@property(nonatomic, strong, readonly) Class ownerType;
@property(nonatomic, strong, readonly) NSString *name;
@property(nonatomic, strong, readonly) id uniqueKey;
@property(nonatomic, readonly) int gloablIndex;
@property(nonatomic, strong, readonly) id defalutValue;


+ (UFSfxObjectProperty *)registerProperty:(NSString *)name ownerType:(Class)ownerType defaultMetadata:(UFSfxObjectPropertyMetadata *)defaultMetadata;
+ (UFSfxObjectProperty *)registerProperty:(NSString *)name ownerType:(Class)ownerType defaultValue:(id)defaultValue;
+ (UFSfxObjectProperty *)registerProperty:(NSString *)name ownerType:(Class)ownerType;
+ (UFSfxObjectProperty *)getRegisterProperty:(NSString *)name ownerType:(Class)ownerType;

@end