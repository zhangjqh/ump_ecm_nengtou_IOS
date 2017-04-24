//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxArrayList.h"
#import "UMPEnums.h"

@class UMPSortOrder;

@interface UMPSortCriteria : UFSfxArrayList

- (void)addField:(NSString *)field;
- (void)addField:(NSString *)field order:(UFSfxSortOrderType)order;

- (void)addObject:(UMPSortOrder *)object;
- (UMPSortOrder *)objectAtIndex:(NSUInteger)index;

@end