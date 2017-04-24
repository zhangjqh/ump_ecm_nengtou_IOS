
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface ecm_searchegController_listView_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;








@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* listView_childWgt0_entName;

@property (nonatomic,strong) UMView* listView_childWgt0_entNum;

@property (nonatomic,strong) UMView* listView_childWgt0_entSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_entImg;




@end


@interface ecm_searchegController_listView_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* listView_childWgt0_entName;

@property (nonatomic,strong) UMView* listView_childWgt0_entNum;

@property (nonatomic,strong) UMView* listView_childWgt0_entSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_entImg;



@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;







@end


@interface ecm_searchegController_listView_cellHeight : NSObject
@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;







@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* listView_childWgt0_entName;

@property (nonatomic,strong) UMView* listView_childWgt0_entNum;

@property (nonatomic,strong) UMView* listView_childWgt0_entSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_entImg;



-(void)getCellHeightByIndex:(NSString *)index;

-(void)getSectionHeightByIndex;

@property(nonatomic,strong)NSMutableDictionary *dataBindGroup;//���灞����
@property(nonatomic,strong)UMBaseViewController *parentController;
@property(nonatomic,strong)UMEntityContext *ctx;
@property(nonatomic,strong)UMView *container;

-(void)addSubview:(UIView *)view;

-(UMEntityContext *)getContext;

-(NSMutableDictionary *) getBindGroup;
@end
