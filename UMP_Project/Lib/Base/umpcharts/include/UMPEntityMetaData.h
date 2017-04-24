//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>
#import "UMPMetaDataIVisitable.h"

@class UMPAttributeMap;

@interface UMPEntityMetaData : NSObject<UMPMetaDataIVisitable> {
@private
    Class _type;
    NSString * _name;
    // entity attributes
    NSString * _tableName;
    NSString * _where;
    BOOL _lazy;
    NSString * _syncGroup;
    UMPAttributeMap *_attributeMap;
}

/**
* Gets or sets the table name associated with the type
*/
@property(nonatomic, readwrite, strong) NSString *tableName;
/**
*
*/
@property(nonatomic, readwrite, strong) NSString *syncGroup;

/**
* Gets the entity class type for this model
*/
@property(nonatomic, readwrite, assign) Class type;
/**
* SQL condition to retrieve objects
*/
@property(nonatomic, readwrite, strong) NSString *where;
/**
* Enable lazy loading for the type
*/
@property(nonatomic, readwrite) BOOL lazy;
/**
*
*/
@property(nonatomic, readwrite, strong) UMPAttributeMap *attributeMap;

@property(nonatomic, readwrite, strong) NSString *name;


@end