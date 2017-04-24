//
//  LHGroup.h
//  UMIOSControls
//
//  Created by helly on 14-10-30.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMBaseViewController.h"
#import "UMLayoutView.h"
#import "UMXTableView.h"

@interface LHGroup : UMLayoutView

@property(nonatomic,weak)UMBaseViewController *parentController;//当前页面controller
@property(nonatomic,strong)NSString *currentSectionPath;//当前section在context的路径，用于cell中的控件在bind和收集的时候使用
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,assign)NSInteger sectionIndex;//section的索引

@property(nonatomic,strong)UMEntityContext *ctx;

@property(nonatomic,strong)NSMutableDictionary *dataBindGroup;//当前行所有的可绑定的控件集合

@property(nonatomic,weak)UITableView *tableView;//属于的tableview

@property(nonatomic,weak)UMXTableView *umTableView;

@property(nonatomic,strong)NSString *listGroup;//是否是分组

@property (nonatomic,strong)NSString *tableViewCursor;//列表游标

/**
 *  bindall以后执行属性表达式 对象的字典
 */
@property(nonatomic,strong)NSMutableDictionary *bindPropertyGroup;



-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx;


-(InvokeInfo *)getInvokeInfo:(NSString *)method sender:(id<UMViewControl>)sender;

-(NSMutableDictionary *) getBindGroup;

-(void) doAction:(NSString *)name sender:(id<UMViewControl>)sender eventArgs:(id<UMEventArgsProtocol>)args;
-(void)umcontrol:(UMView *)control controlid:(NSString *)controlid bindfield:(NSString *)bindfiled;

-(UMEntityContext *)getContext;

-(void)bindAll;

-(void)collectAll;
@end
