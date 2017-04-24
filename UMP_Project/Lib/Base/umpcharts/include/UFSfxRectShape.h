//
//  UFSfxRectShape.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-18.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxShape.h"

@interface UFSfxRectShape : UFSfxShape {
    float _width;
    float _height;
}

@property(nonatomic) float width;
@property(nonatomic) float height;

@end
