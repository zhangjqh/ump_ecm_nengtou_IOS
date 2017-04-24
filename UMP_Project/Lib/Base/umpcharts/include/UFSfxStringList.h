//
//  Created by 宋永强 on 12-2-6.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxArrayList.h"

@interface UFSfxStringList : UFSfxArrayList<NSFastEnumeration>

- (UFSfxStringList *)initWithCapacity:(NSUInteger)capacity;

@end