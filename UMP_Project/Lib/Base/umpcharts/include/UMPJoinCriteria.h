//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxArrayList.h"

@class UMPJoinCondition;

@interface UMPJoinCriteria : UFSfxArrayList {
}

- (void)addObject:(UMPJoinCondition *)object;
- (UMPJoinCondition *)objectAtIndex:(NSUInteger)index;

@end