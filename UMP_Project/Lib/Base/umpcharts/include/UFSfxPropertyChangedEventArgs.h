//
//  Created by 宋永强 on 11-9-2.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObjectProperty;
@class UFSfxObjectPropertyMetadata;

@interface UFSfxPropertyChangedEventArgs : NSObject {
@private
    id  _sender;
    UFSfxObjectProperty * _property;
    UFSfxObjectPropertyMetadata * _metadata;
    id _oldValue;
    id _newValue;
}

@property(nonatomic, readonly, strong) UFSfxObjectProperty *property;
@property(nonatomic, readonly, strong) UFSfxObjectPropertyMetadata *metadata;
@property(nonatomic, readonly, strong) id oldValue;
@property(nonatomic, readonly, strong) id sender;
@property(nonatomic, readonly, strong) id newValue;
@end