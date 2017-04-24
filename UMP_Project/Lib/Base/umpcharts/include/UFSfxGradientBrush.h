//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBrush.h"
#import "UFSfxGradientStopCollection.h"

@interface UFSfxGradientBrush : UFSfxBrush {
    UFSfxGradientStopCollection * _gradientStops;
}
- (id)initWithGradientStops:(UFSfxGradientStopCollection *)gradientStops;

@property(nonatomic, strong) UFSfxGradientStopCollection *gradientStops;

@end