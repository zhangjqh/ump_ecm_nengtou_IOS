
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface ecm_searchpgController_listView_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;








@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* listView_childWgt0_groupName;

@property (nonatomic,strong) UMView* listView_childWgt0_groupNum;

@property (nonatomic,strong) UMView* listView_childWgt0_groupSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_groupImg;




@end


@interface ecm_searchpgController_listView_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* listView_childWgt0_groupName;

@property (nonatomic,strong) UMView* listView_childWgt0_groupNum;

@property (nonatomic,strong) UMView* listView_childWgt0_groupSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_groupImg;



@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;







@end


@interface ecm_searchpgController_listView_cellHeight : NSObject
@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;







@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* listView_childWgt0_groupName;

@property (nonatomic,strong) UMView* listView_childWgt0_groupNum;

@property (nonatomic,strong) UMView* listView_childWgt0_groupSpace;

@property (nonatomic,strong) UMView* listView_childWgt0_groupImg;



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
