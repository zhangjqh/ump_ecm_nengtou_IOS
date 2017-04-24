//
//  UMControlBindDelegate.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-12.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//






@protocol UMControlBindDelegate <NSObject>

@required
- (void)setBindValue:(id)dataDict;
- (id)getBindValue;
- (NSArray*)isValidValue:(id)dataDict valid:(BOOL*)valid;

@end