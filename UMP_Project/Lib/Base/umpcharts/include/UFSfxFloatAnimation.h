//
//  UFSfxFloatAnimation.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-17.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UFSfxBaseAnimation.h"

@interface UFSfxFloatAnimation : UFSfxBaseAnimation {
    
}

@property(nonatomic, readwrite) float from;
@property(nonatomic, readwrite) float to;

- (id)initWithFromTo:(float)from to:(float)to;

@end
