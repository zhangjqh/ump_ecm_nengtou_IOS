//
//  UMXTableView.h
//  UMIOSControls
//
//  Created by helly on 14-10-27.
//  Copyright (c) 2014年 zhangnan. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "LHRefreshTableView.h"
#import "UMBindView.h"

@class LHRefreshTableView;
@interface UMXTableView : UMBindView
/*
 tableView是LHRefreshTableView对象，LHRefreshTableView（负责上拉下拉）继承自LHTableView，LHTableView（负责展示）继承自UITableView
 */
@property(nonatomic,strong)LHRefreshTableView * tableView;

@property(nonatomic,strong)NSMutableArray *cellTemplatesArr;//cellTemplate 的数组

@property(nonatomic,strong)NSString *rowIndex;//列表内容索引，cell和section header都算

@property(nonatomic,assign)NSInteger childindex;
@property(nonatomic,assign)NSInteger groupindex;

@property(nonatomic,strong)NSString *row;//行数据，如果rowindex是section的header 就返回该section的全部数据

@property (nonatomic,strong) NSString *alias;//游标别名

@property(nonatomic,strong) NSString *adaptiveHeight;


@property(nonatomic,strong)UMView *umHeaderView;//列表的headview


//绑定 返回更多数据的操作
-(void)moreDataOperate:(NSString *)dataSourceStr;
@end
