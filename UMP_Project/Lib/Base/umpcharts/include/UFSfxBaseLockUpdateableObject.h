//
//  Created by 宋永强 on 11-8-1.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBaseObject.h"

@interface UFSfxBaseLockUpdateableObject : UFSfxBaseObject {
@private
    int _updateSuspendCount;
}

- (BOOL)isUpdateSuspend;

- (void)beginUpdate;

- (void)cancelUpdate;

- (void)endUpdate;

@end

@interface UFSfxBaseLockUpdateableObject (Protected) 

- (void)onResumeUpdate;

@end