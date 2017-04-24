//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxArrayList.h"

@interface UFSfxObjectList : UFSfxArrayList<NSFastEnumeration>

- (UFSfxObjectList *)initWithCapacity:(NSUInteger)capacity;
@end