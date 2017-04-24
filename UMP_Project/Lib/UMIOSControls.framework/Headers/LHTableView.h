

#import <UIKit/UIKit.h>
#import "UMBaseViewController.h"
#import "UMXTableView.h"
//@class UMXTableView;

typedef enum{
    editStatus_browse,
    editStatus_delete
}editStatus;

@interface LHTableView : UITableView<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) NSMutableArray *dataSourceArr;
//@property(nonatomic,assign) id<UITableViewDelegate> delegate;
//@property(nonatomic,assign) id<UITableViewDataSource> dataSource;

@property(nonatomic,assign)editStatus editstatus;//编辑状态 for uap 枚举delete,browse 默认browse
@property(nonatomic,assign)BOOL isGroup;
@property(nonatomic,strong)NSString *tableViewBindField;//在UMXTableView setpropery的时候赋值
@property(nonatomic,strong)NSArray *tableViewBindFieldArr;//在分组的情况下 绑定字段是用逗号隔开的。第一个是列表的，第二个是section里的row数组
@property(nonatomic,strong)NSString *controlId;//tableview控件id  在UMXTableView setpropery的时候赋值
@property(nonatomic,weak)UMBaseViewController *parentController;//在UMXTableView umviewWillAppear的时候赋值
@property(nonatomic,strong)NSString *currentControllerName;//在UMXTableView umviewWillAppear的时候赋值

@property(nonatomic,strong)NSString *onitemClick;
@property(nonatomic,strong)NSString *onitemDelete;

@property(nonatomic,assign)BOOL adaptiveHeight;//cell是否自适应高度，setpropery的时候赋值


@property(nonatomic,strong)NSMutableDictionary *cellHeightDic;
@property(nonatomic,strong)NSString *headerHeight;

@property(nonatomic,weak)UMXTableView *umTableView;//控件的umx对象

@property(nonatomic,strong)UMEntityContext * ctx;//当前行的数据

@property(nonatomic,strong)NSMutableArray *dataBindGroup;//当前行所有的可绑定的控件集合

@property(nonatomic,strong)NSMutableDictionary *sectionState;//section伸展 收缩状态，{@"0":@"1"} key为section索引，value为是否收缩 1收缩

@property(nonatomic,strong)NSMutableDictionary *cellDic;//不用cell缓存情况下，cell放进字典里

@property(nonatomic,strong)NSArray *indexDataSource;//索引的数据源

@property(nonatomic,assign)BOOL collapsed;

/**
 *  tableview展示时，当前正在渲染的indexpath，如果正在渲染group 则indexpath为[0 -1] [1 -1]等
 */
@property(nonatomic,strong)NSIndexPath *currIndexPath;

/**
 *  tableview渲染时，执行到的最后一个group的umview对象
 */
@property(nonatomic,strong)UMView *currGroupUmview;

/**
 *  tableview渲染时，执行到的最后一个cell的umview对象
 */
@property(nonatomic,strong)UMView *currCellUmview;

/**
 *  左滑按钮组
 */
@property(nonatomic,strong)NSString *slidingitems;

/**
 *  是否可以收缩，分组列表里点击group head收缩，默认是NO
 */
@property(nonatomic,assign)BOOL isshrinklist;


@property(nonatomic,strong)NSMutableDictionary *sectionViewDic;//group的缓存

-(NSInteger)gettemplateIndexByIndexPath:(NSIndexPath *)indexPath;

-(void)refreshHeight;//设置adapterheight后在umxtableview的umdidload中设置

-(void)bindAll;

-(void)collectAll;

-(void)tapSection:(NSInteger)section isshrink:(BOOL)isshrink;

/**
 *  onitemcreate执行后用户setitemsource的操作
 *
 *  @param itemsource itemsource json 
 */

//params = {
//    "id":"listview0",
//    "groupindex":event.groupindex,
//    "itemtype":0,
//    "row":[
//           {
//           controlid:"label0",
//           color:"#FF0000",
//           value:row.title
//           }
//           ]
//}

//params = {
//    "id":"listviewdefine0",
//    "itemtype":1,
//    "groupindex":event.groupindex,
//    "childindex":event.childindex,
//    "row":[
//           {
//           controlid:"label1",
//           color:"#FF0000",
//           value:row.title
//           }
//           ]
//}
-(void)itemSourceOperate:(NSString *)itemsource;

/**
 *  获取cell ctx
 *
 *  @param indexPath indexpath
 *
 *  @return ctx
 */
-(UMEntityContext *)getCellCtxByIndexpath:(NSIndexPath *)indexPath;

-(UMEntityContext *)getGroupCtxBySection:(NSInteger)section;

//获取指定行的控件属性 type 0 单列表行内的控件属性,1 获取分组内的控件属性,2 获取分组指定行内的控件属性
-(NSString *)getPropertyValueByGroupIndex:(NSInteger)groupIndex andCellIndex:(NSInteger)cellIndex andControlId:(NSString *)controlId andPropertyName:(NSString *)propertyName andType:(NSInteger)type;

//设置指定行控件的属性
-(void)setPropertyValueByGroupIndex:(NSInteger)groupIndex andCellIndex:(NSInteger)cellIndex andControlId:(NSString *)controlId andProertyNameValues:(NSMutableDictionary *)propertyNameValues andType:(NSInteger)type;

//根据indexpath获取celldata
-(NSDictionary *)getCellDataByIndexPath:(NSIndexPath *)indexPath;

//根据celldata获取行模板标识
-(int)computerTemplateIndex:(NSDictionary *)cellData;

//获取cell绑定路径
-(NSString *)getCurrentCellPath:(NSIndexPath *)indexPath;

//左滑按钮组
-(void)slidingItemsOperate:(LHTableViewCell *)cell indexpath:(NSIndexPath *)indexpath;

//cell缓存内操作
-(void)inCacheOperateCell:(LHTableViewCell *)cell indexPath:(NSIndexPath *)indexPath;

//cell缓存外操作
-(void)outCacheOperateCell:(LHTableViewCell *)cell indexPath:(NSIndexPath *)indexPath currentCellPath:(NSString *)currentCellPath ctx:(UMEntityContext *)ctx templateIndex:(NSInteger)templateIndex;

@end
