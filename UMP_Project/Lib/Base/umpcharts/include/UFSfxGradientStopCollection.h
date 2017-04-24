//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxCollectionBase.h"
#import "UFSfxDrawColor.h"

@interface UFSfxGradientStopCollection : UFSfxCollectionBase {

}

- (void)addGradientStop:(UFSfxDrawColor *)color offset:(float)offset;

@end