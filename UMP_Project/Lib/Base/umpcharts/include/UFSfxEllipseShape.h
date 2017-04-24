//
//  UFSfxEllipseShape.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-19.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxShape.h"

@interface UFSfxEllipseShape : UFSfxShape {
    float _radiusX;
    float _radiusY;    
}

@property(nonatomic) float radiusX;
@property(nonatomic) float radiusY;

@end
