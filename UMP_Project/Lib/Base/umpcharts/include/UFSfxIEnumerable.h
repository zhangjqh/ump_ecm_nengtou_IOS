//
//  Created by 宋永强 on 11-7-14.
//
//

#import "UFSfxIEnumerator.h"

@protocol UFSfxIEnumerable <NSObject>

- (id<UFSfxIEnumerator>)getEnumerator;

@end