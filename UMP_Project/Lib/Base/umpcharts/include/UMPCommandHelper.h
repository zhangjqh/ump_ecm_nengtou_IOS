//
//  Created by 宋永强 on 12-2-11.
//
//


#import <Foundation/Foundation.h>

@class UMPDbCommand;
@protocol UMPISession;

@interface UMPCommandHelper : NSObject

+ (UMPDbCommand *)createCommand:(id<UMPISession>)conn;
+ (UMPDbCommand *)createCommand:(id<UMPISession>)conn:(NSString *)sql;
+ (void)addParameter:(UMPDbCommand *)command:(NSString *)name:(id)value;
+ (void)addBoolParameter:(UMPDbCommand *)command:(NSString *)name:(BOOL)value;
+ (void)addIntParameter:(UMPDbCommand *)command:(NSString *)name:(int)value;
+ (void)addLongParameter:(UMPDbCommand *)command:(NSString *)name:(long)value;
+ (void)addStringParameter:(UMPDbCommand *)command:(NSString *)name:(NSString *)value;

@end