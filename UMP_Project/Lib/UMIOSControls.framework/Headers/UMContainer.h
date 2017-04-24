//
//  UMContainer.h
//  UMContainer
//
//  Created by dingheng on 13-11-4.
//  Copyright (c) 2013年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMCore.h"
#import "InvokeDelegate.h"
#import "PageLifecycleDelegate.h"
#import "UMDataBinder.h"
#import "ContainerUtil.h"
//#import "UMIOSCommon.h"
#import "UMBaseViewController.h"
/*---UMCommonService----*/
#import "UMFile.h"
#import "UMDevice.h"
#import "UMService.h"
#import "UMSQLite.h"
#import "XEventArgs.h"
#import "UMCtx.h"
#import "UMViewService.h"
#import "UMCommonSevice.h"
#import "UMParser.h"
//#import "UMWXShare.h"
#import "UMBadgeService.h"
#import "UMCalendar.h"
#import "UMExpend.h"
#import "UMPListBaseController.h"
#import "JSONKit.h"
#import "UMJS.h"


@interface UMContainer : NSObject<InvokeDelegate,PageLifecycleDelegate>
@property (nonatomic,strong) UMCore *m_thisCore;
@property (nonatomic,strong) UMDataBinder *m_thisDataBinder;
@property (nonatomic,strong) NSString* controllerName;
@property (nonatomic,weak) id currentSender;
@property (nonatomic,weak) XEventArgs * currentArgs;
@property (nonatomic,weak) UIViewController * currentController;
-(void)initController:(NSString*)cName;
-(void)initCurrentViewController: (NSString*)cName;
-(void)initCurrentViewContext:(NSString *)cName;
-(id)callJsOnTouchAction:(NSDictionary *)info;
-(id)callJsAction:(id)sender controllername:(NSString*)controllername actionName:(NSString*)actionname params:(NSString*)param,... ;
-(id)callAction:(id)sender controllername:(NSString*)controllername actionName:(NSString*)actionname params:(NSString*)param,...;

-(NSString *)getModel:(NSString*)viewname;
-(NSString *)updateModel:(NSString*)param;
-(NSString *)modelEventBind:(NSString*)param;
-(id)callRemoteService: (NSString*)servicename actionName:(NSString*)actionname requestContext:(NSString*)reqContext contextKey:(NSString*)key params:(NSString*)param,...;
-(void)DumpMessage:(NSString*)msg;
-(NSString*)getMessage;
-(NSString*)jsonToString:(NSString*)param;
/*
 ding add
 */
-(UMEntityContext *)getContext:(NSString *)viewname;
/*
 * page lifecycle defined
 */
-(void)onInit:(NSString*)controllername;
-(void)onLoad:(NSString*)controllername;
-(void)onDataBinding:(NSString*)controllername;
-(void)onComplete:(NSString*)controllername;
-(void)onUnload:(NSString*)controllername;
-(id)callClearTimeout:(NSString *)json;
#pragma mark propertylist 
/*
 * 获取当前对象以及父类属性
 */
-(NSMutableDictionary *)getAllPropertyList:(NSObject *)object;
/*
 * 获取当前对象属性
 */
-(NSMutableDictionary *)getPropertyList:(NSObject *)object;
/* 
 * 获取对象的所有属性 
 */
- (NSArray *)getProperties:(NSObject *)object;
/*
 * 获取当前对象以及父类属性值
 */
-(NSMutableArray *)getAllProperties:(NSObject *)object;

@end



