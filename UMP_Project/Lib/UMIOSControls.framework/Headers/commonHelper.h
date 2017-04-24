//
//  commonHelper.h
//  UMP
//
//  Created by zjx on 12-5-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SysContext:NSObject

/*
 * 获取SysContext实例,目前无多线程场景.
 */
+(SysContext*)getInstance;
@property (weak,nonatomic) UIViewController *CurrentViewController;
@property (retain) NSString *ServiceAddress;
-(CFAbsoluteTime)getTimeNow;
- (NSDictionary *)DeSerializeDataFromJSONString:(NSString *)dataJSON;
- (NSString *)SerializeDataToJSONString:(NSDictionary *)data;
-(void)snapshotImage:(UIView*)view fileName:(NSString*)filename;
-(UIImage*)loadSnapshotImage:(NSString*)fileName;
-(void)SaveImageToLocal:(UIImage*)image fileName:(NSString*)filename;
-(void)LogMessage:(NSString*)msg parentView:(UIView*)view;

-(NSString*)dataToString:(NSData*)data;
-(NSData*)stirngToData:(NSString*)str;
@end


