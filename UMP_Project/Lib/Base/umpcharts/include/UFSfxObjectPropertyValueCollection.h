//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObject;
@class UFSfxObjectProperty;
@class UFSfxObjectPropertyValue;


@interface UFSfxObjectPropertyValueCollection : NSObject {
    __unsafe_unretained UFSfxObject * _owner;
    NSMutableDictionary * _entries;
//    NSMutableDictionary * _valueList;
}

- (id)initWithOwner:(UFSfxObject *)owner;

- (UFSfxObjectPropertyValue *)getEntry:(UFSfxObjectProperty *)property createNew:(BOOL)createNew;

@end