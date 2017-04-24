//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObject;
@class UFSfxPropertyChangedEventArgs;

@interface UFSfxObjectPropertyMetadata : NSObject {
    id _defaultValue;
}

@property(nonatomic, strong) id defaultValue;
@property(nonatomic, readonly) BOOL isInherited;
@property(nonatomic, readonly) void (^callback)(UFSfxObject *d, UFSfxPropertyChangedEventArgs *e);

- (id)initWithDefaultValue:(id)defaultValue;

- (id)initWithBlock:(void (^)(UFSfxObject *d, UFSfxPropertyChangedEventArgs * e))block;

- (id)initWithDefaultAndBlock:(id)defaultValue :(void (^)(UFSfxObject *d, UFSfxPropertyChangedEventArgs *e))block;

@end