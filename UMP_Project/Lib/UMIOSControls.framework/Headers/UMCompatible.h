//
//  UMCompatible.h
//  UMIOSControls
//
//  Created by dingheng on 14-9-19.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMIOSCommon.h"
#import "RootCell.h"
#import "UMView.h"
#import "UMControlBase.h"
@interface UMCompatible : NSObject

+(void)exec:(id)sender container:(UIViewController<UMContainerProtocol> *)controller cursor:(NSString *)name;

+(SEL)checkActionName:(SEL)action;
//老控件 属性容错 本地解析
+(BOOL)setProperty:(UMView *)layoutview name:(NSString *)name value:(NSString *)value;

+(UMLayoutView *)initUMlayoutView:(NSDictionary *)info;

+(void)initCommonProperty:(UMView *)layoutview info:(NSDictionary *)info;
+(void)initCommonProperty:(UMView *)layoutview info:(NSDictionary *)info container:(id)container;

+(void)operateExpression:(UMView *)control controlId:(NSString *)controlId propertyName:(NSString *)propertyName value:(NSString *)value;

+(void)initCommonProperty:(UMView *)layoutview info:(NSDictionary *)info container:(id)container;

+(void)operateExpression:(UMView *)control controlId:(NSString *)controlId propertyName:(NSString *)propertyName value:(NSString *)value;

@end
