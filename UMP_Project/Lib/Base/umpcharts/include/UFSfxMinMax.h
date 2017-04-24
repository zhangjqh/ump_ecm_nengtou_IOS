//
//  Created by 宋永强 on 11-8-24.
//
//


#import <Foundation/Foundation.h>

@class UFSfxUIElement;

@interface UFSfxMinMax : NSObject {
    float _minWidth;
    float _maxWidth;
    float _minHeight;
    float _maxHeight;
}

@property(nonatomic) float minWidth;
@property(nonatomic) float maxWidth;
@property(nonatomic) float minHeight;
@property(nonatomic) float maxHeight;

- (id)initWithElement:(UFSfxUIElement *)element;

@end