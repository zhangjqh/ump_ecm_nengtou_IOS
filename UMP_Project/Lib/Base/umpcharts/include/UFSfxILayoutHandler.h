//
//  Created by 宋永强 on 11-9-3.
//
//


@class UFSfxLayoutManager;

@protocol UFSfxILayoutHandler

- (UFSfxLayoutManager *)layoutManager;

- (void)invokeLayoutCallback:(SEL)callback;

@end