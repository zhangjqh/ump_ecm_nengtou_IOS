//
//  Created by 宋永强 on 11-8-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxTransform.h"

@interface UFSfxTranslateTransform : UFSfxTransform {
    float _cx;
    float _cy;
}

@property(nonatomic) float cx;
@property(nonatomic) float cy;

- (id)initWithCx:(float)offsetX cy:(float)offsetY;


@end