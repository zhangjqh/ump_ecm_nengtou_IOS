//
//  UMPThemeManager.h
//  UMPIOSControlsDemo
//
//  Created by zhangnan on 13-3-28.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UMPThemeManager : NSObject
@property(nonatomic,strong) NSString* currentThemeIndexKey;

+(UMPThemeManager*) sharedUMPThemeManager;
//-(NSString*) getCurrentThemePath;
+(NSArray*)getAllThemeKeys;
+(void)sendThemeChange:(NSString*)newTheme;

+(void)addThemeUpdateObserver:(id)object;
+(void)deleteThemeUpdateObserver:(id)object;

//- (NSString*)getDefaultThemePath;

- (NSString*)getFilePathForFile:(NSString*)file;

- (NSString*)rebuildImgPath:(NSString*)ImgPath;
@end


@protocol UMPThemeDelegate <NSObject>

@required
-(void)updateDidThemeChanged:(NSNotification*)notify;

@optional
-(NSString*)getResouceRootPath;

@end