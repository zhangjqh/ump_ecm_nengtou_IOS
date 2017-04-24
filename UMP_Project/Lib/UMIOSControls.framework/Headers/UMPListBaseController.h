//
//  UMPListBaseController.h
//  UMPListController

//  listViewController基类
//  内置listView对象

//  Created by heng ding on 13-3-27.
//  Copyright (c) 2013年 Yonyou. All rights reserved.
//


/*
 固定数据格式
 
 NSDictionary * row=[NSDictionary dictionaryWithObjectsAndKeys:
 @"用友股份",@"name",nil];
 
 NSMutableDictionary * dic = [NSMutableDictionary dictionaryWithObjectsAndKeys:
 @"用友",@"type",
 [NSMutableArray arrayWithObjects: row,row,row,nil],@"list",
 nil];
 
//初始化数据
self.data = [[NSMutableArray alloc] init];
[self.data addObject:dic];
 */



#import <UIKit/UIKit.h>

#import "UMBaseViewController.h"
#import "UMListBindView.h"
#import "UMControlBindDelegate.h"
#import "EGORefreshTableHeaderView.h"

/*
 *  删除模式 
 *  使用需要 设置  [listview setEditing:YES animated:YES];
 */

typedef enum {
    UMPListViewEditingStyleNone,   //正常状态
    UMPListViewEditingStyleDeleteSingle, //滑动删除
    UMPListViewEditingStyleDeleteMore  // 多选删除
}UMPListViewEditingStyle;

@class UMListBindView;

@protocol UMPListViewDelegate<NSObject>
@optional

//
// reloadTableViewDataSource:
//
// 刷新更新数据
//
// Parameters:
//    tableView - 表格
//    location - 位置
//
- (void)reloadTableViewDataSource:(UITableView *)tableView location:(EGOPullLocation)location;
@end

@interface UMPListBaseController : UIViewController<UITableViewDelegate,UITableViewDataSource,UMPListViewDelegate,UMContainerProtocol>{
    
@protected
    //自定义Cell多选图片
    NSString * unSelectImage;
    NSString * selctImage;
    UIView * contentView;//cell视图
    
    NSMutableArray * data;//数据源
    int sectionNum;//分区
    BOOL isEditing;//滑动删除
    BOOL isDelete;//多选删除
    UMPListViewEditingStyle  editingStyle;//编辑模式
    NSMutableDictionary * deleteDic;//多选选中cell
    UMListBindView* _viewObject;
    
}
@property(nonatomic,strong) UIView * contentView;//cell视图
@property(nonatomic,strong) UIView* headerView;
@property(nonatomic,strong) NSMutableArray* contentViews;
@property(nonatomic,strong) NSMutableArray* headerViews;
@property(nonatomic,strong) NSMutableDictionary * deleteDic;//多选选中cell
@property(nonatomic,strong) NSMutableArray * data;//数据源
@property(nonatomic,strong) NSString * unSelectImage;
@property(nonatomic,strong) NSString * selctImage;
@property(nonatomic,assign) BOOL isEditing;//编辑
@property(nonatomic,assign) BOOL isDelete;//是否删除
@property(nonatomic,assign) int sectionNum;//分区行数
@property(nonatomic,assign)UMPListViewEditingStyle  editingStyle;//编辑模式
@property(nonatomic,readonly)UMListBindView*  viewObject;
@property(nonatomic,assign)UITableViewStyle style;

@property (nonatomic,strong) NSString* status;

@property(nonatomic,assign) BOOL topLoad;//下拉加载
@property(nonatomic,assign) BOOL bottomLoad;//上拉加载

@property (nonatomic,strong) NSString* adaptiveheight;
@property (nonatomic,strong) NSString* height;

@property (nonatomic,assign) int dataCount;
@property (nonatomic,assign) int cellHeightSingle;

@property(nonatomic,strong) NSIndexPath *indexClick;//点击cell上的有事件button等，记录一下当前点击的cell indexpath


@property (nonatomic, strong) NSMutableDictionary * dataBindGroup;
@property (nonatomic, strong) NSString *xnamespace;
@property (nonatomic, strong) NSString *controllerid;

-(InvokeInfo *)getInvokeInfo:(NSString *)method sender:(id<UMViewControl>)sender;

-(void)dataBind:(id)context;
/*
 * 上拉 下拉 刷新数据源
 *  刷新时候操作 listview
 * location == EGOOPullLocationBottom 上拉
 *  EGOOPullLocationTop下拉
 */
- (void)reloadDataSource:(EGOPullLocation)location;

/*
 *多选删除时候触发
 */
-(void)deleteMore;
/*
 * 初始化 cellview对象
 * 自定义cell视图，根据 TAG 绑定数据
 * 当前listView 对应唯一固定view样式
 */
-(UIView *)creatContentView;

/*
 * 更新当前数据
 */
-(void)reloadAllData;

/*
 * 数据源实现
 */

#pragma mark - UITableViewDataSource

/*
 * 默认为 1 可以继承重写
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

/*
 * 默认为 [data count] 可以继承重写
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section ;

/*
 *  创建cell对象
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

/*
 * 根据当前cell.backgroudView 返回高度
 * backgroudView为 contentView
 */

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;

/*
 * cell点击事件 处理事件需要重写
 */

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;


/*
 * 默认背景颜色
 * 也可以 根据对应图片绘制
 */
- (void)tableView: (UITableView*)tableView willDisplayCell: (UITableViewCell*)cell
forRowAtIndexPath: (NSIndexPath*)indexPath;


/*
 *  刷新代理 不需要重写
 */

#pragma mark - EGORefreshTableView view data source

- (void)reloadTableViewDataSource:(UITableView *)tableView location:(EGOPullLocation)location;

#pragma mark UIScrollViewDelegate Methods

- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;

- (void)addTarget:(id)target action:(SEL)action;

- (void)addForUpRefershTarget:(id)target action:(SEL)action;

- (void)addForDownRefershTarget:(id)target action:(SEL)action;

- (void)addForDeleteCellTarget:(id)target action:(SEL)action;

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)_editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath;
@end

@interface UMPListBaseController (JSCallProperty)
@property(nonatomic,strong) NSString* display;
@property(nonatomic, strong) NSString* allowDataCollect;
@property(nonatomic,strong) NSString* visible;
@end