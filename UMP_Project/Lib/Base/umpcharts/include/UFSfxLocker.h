//
//  Created by 宋永强 on 12-3-2.
//
//


#import <Foundation/Foundation.h>


@interface UFSfxLocker : NSObject {
@private
    int _lockCount;
}

@property(nonatomic, readonly) BOOL isLocked;

- (void)lock;

- (void)unLock;

@end