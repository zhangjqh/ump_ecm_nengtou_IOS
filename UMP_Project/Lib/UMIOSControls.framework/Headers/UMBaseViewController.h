//
//  UMBaseViewController.h
//  UMCommon
//
//  Created by controlspace on 13-3-16.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XEventArgs.h"
#import "UMControlBase.h"
#import "UMView.h"
#import "UMEntityContext.h"
#import "UMLayoutView.h"
#import "UMContainer.h"

@interface UMBaseViewController : UIViewController<UMContainerProtocol,UIGestureRecognizerDelegate>
@property (nonatomic,strong) id openTarget;
@property (nonatomic,assign) SEL openAction;
@property (nonatomic,assign) id closeTarget;
@property (nonatomic,assign) SEL closeAction;
@property (nonatomic, strong) NSTimer * JsTimer;//JS定时器
@property (nonatomic, strong) NSString * callbackAction;//记录当前页面callback
@property (nonatomic, strong) NSMutableDictionary *  argsInfo;//记录当前页面保留参数
@property (nonatomic, strong) NSString * resultCode;
@property (nonatomic, strong) NSMutableDictionary * dataBindGroup;
@property (nonatomic, strong) NSMutableDictionary * controlGroup;
@property (nonatomic, strong) NSMutableDictionary * bindPropertyGroup;
@property (nonatomic, strong) NSString *xnamespace;
@property (nonatomic, strong) NSString *controllerid;
@property (nonatomic, strong) NSString * mapping;//参照字段
@property (nonatomic, strong) XEventArgs * currentArgs;
@property (nonatomic, assign) UMView *umwebview;//当前页面的webview对象
@property (nonatomic, strong) NSMutableDictionary * timerGroup;//JS定时器
@property (nonatomic,strong)NSMutableDictionary *intervalGroup;//setinterval的定时器
@property (nonatomic, strong) NSString *mappingType;//lbn add 参照类型
@property (nonatomic, strong) NSMutableDictionary * dycontrolGroup;//刷新动态UI
@property (nonatomic,strong) UMLayoutView*  viewObject;
@property (nonatomic,strong) UMContainer* currentContainer;
@property (nonatomic,strong) NSMutableDictionary * dyOrderGroup;//动态DSL模块
@property (nonatomic,strong) NSMutableDictionary * dyActionParam;//动态事件参数
@property (nonatomic,strong) NSMutableArray * dyOnloadList;//动态onload事件
@property (nonatomic,strong) NSMutableArray * dyOnsensorchangeList;//动态 摇一摇事件

@property(nonatomic,assign) UIInterfaceOrientation willOrientation;//将要转向的方向

@property(nonatomic,strong) UIWebView *jsWebView;//执行js的webview
@property(nonatomic,strong) NSMutableDictionary * badgeGroup;
@property(nonatomic,assign) BOOL containDyView;//包含动态控件或者直接是动态页面
@property(nonatomic,strong) NSString * onorientationchange;//旋转事件


-(void)setValueWith:(id)value key:(NSString *)propoty objectId:(NSString*)objectId;

-(id)getValueWith:(NSString*)propoty objectId:(NSString*)objectId;

-(void)runViewFunByName:(NSString*)funName param:(NSString*)param;

-(InvokeInfo *)getInvokeInfo:(NSString *)aid method:(NSString *)method sender:(id<UMViewControl>)sender;

// 停止定时器
- (void) stopJsTimer;

- (id)initWithParentCtl:(UIViewController*)parentCtl;
-(void)uminputResignFirstResponder;

-(void)reAdjustSize;

- (CGRect)frameForOrientation;

-(void)operateOrientationViewDidAppear;

//jswebview加载完成，执行umload
-(void)umload;

-(UMView *)getDyLayout:(NSString *)key target:(id)target;

-(NSString *)getDyLayoutHeight:(NSString *)key;


@end
