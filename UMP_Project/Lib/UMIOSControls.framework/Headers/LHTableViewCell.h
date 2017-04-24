//
//  LHTableViewCell.h
//  test
//
//  Created by helly on 14-2-24.
//  Copyright (c) 2014年 helly. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMLayoutView.h"
#import "UMEntityContext.h"
#import "UMBaseViewController.h"
#import "SWTableViewCell.h"
#import "UMXTableView.h"

//@class UMXTableView;
//@class SWTableViewCell;//在此@class后，必须在m文件里引用

@interface LHTableViewCell : SWTableViewCell

@property(nonatomic,weak)UMBaseViewController *parentController;//当前页面controller
@property(nonatomic,strong)NSString *currentCellPath;//当前cell在context的路径，用于cell中的控件在bind和收集的时候使用

-(void)configCell:(NSInteger)index andCtx:(UMEntityContext *)_ctx;//用数据配置cell

@property(nonatomic,weak)UMXTableView *umtableView;//cell所属的umxtableview

@property(nonatomic,strong)UMEntityContext *ctx;

@property(nonatomic,strong)NSMutableDictionary *dataBindGroup;//当前行所有的可绑定的控件集合

@property(nonatomic,assign)NSInteger cellTemplateIndex;

@property(nonatomic,strong)NSIndexPath *indexPath;//cell的indexPath 为了在游标里赋值

@property(nonatomic,strong)UMView *layoutView;//如果cell是wrap，需要在取高的时候，对cell里的大view布局，绑定后取高

@property(nonatomic,strong)UILabel *sepLabel;//cell的分割线，如果每行高度不一样，需设置属性防止cell重用时有多个分割线


/**
 *  bindall以后执行属性表达式 对象的字典
 */
@property(nonatomic,strong)NSMutableDictionary *bindPropertyGroup;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container;


//cell 自己的绑定 收集
-(InvokeInfo *)getInvokeInfo:(NSString *)method sender:(id<UMViewControl>)sender;

-(NSMutableDictionary *) getBindGroup;

-(void) doAction:(NSString *)name sender:(id<UMViewControl>)sender eventArgs:(id<UMEventArgsProtocol>)args;

-(UMEntityContext *)getContext;

-(void)bindAll;

-(void)collectAll;

-(void)umcontrol:(UMView *)control controlid:(NSString *)controlid bindfield:(NSString *)bindfiled;

-(void)setWgtFrame:(UMLayoutView *)layout;

@end
