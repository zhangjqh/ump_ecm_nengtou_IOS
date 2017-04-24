//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPEnums.h"

@class UFSfxArrayList;
@class UFSfxStringList;
@class UMPJoinCriteria;
@class UMPSortCriteria;
@class UMPEntityAlias;
@class UMPWhere;
@protocol UMPISession;
@class UMPDataReader;

@interface UMPAbstractQuery : NSObject {
@protected
    UMPEntityAlias * _fromEntity;
    UFSfxArrayList * _selectFields;
    UMPJoinCriteria * _joinCriteria;
    UMPWhere * _whereCriteria;
    UMPSortCriteria * _sortCriteria;
    UFSfxStringList * _groupItems;
@private
    NSUInteger _start;
    NSUInteger _limit;
}

@property(nonatomic, readwrite, strong) UMPEntityAlias *fromEntity;
@property(nonatomic, readwrite, strong) UFSfxArrayList *selectFields;
@property(nonatomic, readwrite, strong) UMPJoinCriteria *joinCriteria;
@property(nonatomic, readwrite, strong) UMPSortCriteria *sortCriteria;
@property(nonatomic, readwrite, strong) UMPWhere *whereCriteria;
@property(nonatomic, readwrite, strong) UFSfxStringList *groupItems;

@property(nonatomic, readwrite) NSUInteger start;
@property(nonatomic, readwrite) NSUInteger limit;

- (UMPAbstractQuery *)from:(NSString *)entity:(NSString *)alias;
- (UMPAbstractQuery *)select:(NSString *)fields;
- (UMPAbstractQuery *)groupBy:(NSString *)fields;
- (UMPAbstractQuery *)join:(NSString *)entity:(NSString *)alias:(NSString *)leftField:(NSString *)rightField;
- (UMPAbstractQuery *)join:(NSString *)entity:(NSString *)alias:(NSString *)leftField:(NSString *)rightField:(UFSfxJoinType)joinType;
- (UMPAbstractQuery *)where:(UMPWhere *)where;
- (UMPAbstractQuery *)orderBy:(NSString *)field;
- (UMPAbstractQuery *)orderBy:(NSString *)field:(UFSfxSortOrderType)order;

- (UMPDataReader *)executeReader:(id<UMPISession>)session;

@end