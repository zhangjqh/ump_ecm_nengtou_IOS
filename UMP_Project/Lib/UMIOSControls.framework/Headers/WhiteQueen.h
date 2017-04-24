//
//  WhiteQueen.h
//  UMIOSControls
//
//  Created by zhangyuv on 13-12-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WhiteQueen : NSObject
+ (WhiteQueen*)sharedQueen;

- (BOOL)whitequeenAlive;

- (void)whitequeenKill;

- (NSString*)currentLogPath:(NSString*)logFileName;

+ (long)getWQTime;

@property (nonatomic,assign) BOOL queenAlive;
@end


@interface QueenView : UIView

@end