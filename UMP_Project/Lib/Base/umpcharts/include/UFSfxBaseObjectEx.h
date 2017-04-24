//
//  Created by 宋永强 on 11-8-2.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBaseObject.h"

@interface UFSfxBaseObjectEx : UFSfxBaseObject {
    int _updateSuspendCount;
}

- (BOOL)isUpdateSuspend;

- (void)beginUpdate;

- (void)cancelUpdate;

- (void)endUpdate;

@end

@interface UFSfxBaseObjectEx (Protected) 

- (void)onResumeUpdate;

@end