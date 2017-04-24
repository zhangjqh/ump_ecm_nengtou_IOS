//
//  UFSfxBaseAnimation.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-8-17.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UFSfxBaseAnimation : NSObject {
    NSMutableDictionary * _propValues;
    float _duration;
}

@property(nonatomic, copy) id originValue;
@property(nonatomic, copy) id destinationValue;
@property(nonatomic) float duration;

@end
