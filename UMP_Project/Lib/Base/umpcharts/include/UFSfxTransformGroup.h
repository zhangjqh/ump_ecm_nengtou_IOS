//
//  Created by 宋永强 on 11-8-8.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxTransform.h"
#import "UFSfxCollectionBase.h"

@interface UFSfxTransformCollection : UFSfxCollectionBase {
    __unsafe_unretained UFSfxTransformGroup *_owner;
}

- (id)initWithOwner:(UFSfxTransformGroup *)owner;

@end

@interface UFSfxTransformGroup : UFSfxTransform {
    UFSfxTransformCollection * _children;
}

@property(nonatomic, strong, readonly) UFSfxTransformCollection *children;

@end