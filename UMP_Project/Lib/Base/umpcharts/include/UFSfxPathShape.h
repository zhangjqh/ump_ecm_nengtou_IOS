//
//  UFSfxPathShape.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-4.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxShape.h"
#import "UFSfxGeometry.h"

@interface UFSfxPathShape : UFSfxShape {
    UFSfxGeometry * _data;
}

@property(nonatomic, strong) UFSfxGeometry * data;


@end
