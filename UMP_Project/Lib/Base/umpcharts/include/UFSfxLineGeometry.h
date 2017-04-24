//
//  UFSfxLineGeometry.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-18.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxGeometry.h"

@interface UFSfxLineGeometry : UFSfxGeometry {
    UFSfxPointF * _startPoint;
    UFSfxPointF * _endPoint;
}

@property (nonatomic, copy) UFSfxPointF * startPoint;
@property (nonatomic, copy) UFSfxPointF * endPoint;

- (id)initWithPoints:(UFSfxPointF *)startPoint endPoint:(UFSfxPointF *)endPoint;

@end
