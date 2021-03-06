
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface ecm_searchdeptController_listView_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt0_unselectedLeftPanel;
- (UMLayoutView*)listView_childWgt0_unselectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt0_unselectedRightPanel;
- (UMLayoutView*)listView_childWgt0_unselectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt1_selectedLeftPanel;
- (UMLayoutView*)listView_childWgt1_selectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1_selectedRightPanel;
- (UMLayoutView*)listView_childWgt1_selectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;






@property(nonatomic,strong)NSString *cellHeight;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedImg;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedName;


@property (nonatomic,strong) UMView* listView_childWgt0_unselectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedPosition;



@property (nonatomic,strong) UMView* listView_childWgt1_selectedImg;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedName;


@property (nonatomic,strong) UMView* listView_childWgt1_selectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedPosition;




@end


@interface ecm_searchdeptController_listView_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedImg;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedName;


@property (nonatomic,strong) UMView* listView_childWgt0_unselectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedPosition;



@property (nonatomic,strong) UMView* listView_childWgt1_selectedImg;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedName;


@property (nonatomic,strong) UMView* listView_childWgt1_selectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedPosition;



@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt0_unselectedLeftPanel;
- (UMLayoutView*)listView_childWgt0_unselectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt0_unselectedRightPanel;
- (UMLayoutView*)listView_childWgt0_unselectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt1_selectedLeftPanel;
- (UMLayoutView*)listView_childWgt1_selectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1_selectedRightPanel;
- (UMLayoutView*)listView_childWgt1_selectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;





@end


@interface ecm_searchdeptController_listView_cellHeight : NSObject
@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt0_unselectedLeftPanel;
- (UMLayoutView*)listView_childWgt0_unselectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt0_unselectedRightPanel;
- (UMLayoutView*)listView_childWgt0_unselectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;

@property (strong) UMLayoutView* listView_childWgt1_selectedLeftPanel;
- (UMLayoutView*)listView_childWgt1_selectedLeftPanel BV_OBJC_METHOD_FAMILY_NONE;



@property (strong) UMLayoutView* listView_childWgt1_selectedRightPanel;
- (UMLayoutView*)listView_childWgt1_selectedRightPanel BV_OBJC_METHOD_FAMILY_NONE;





@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedImg;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedName;


@property (nonatomic,strong) UMView* listView_childWgt0_unselectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt0_unselectedPosition;



@property (nonatomic,strong) UMView* listView_childWgt1_selectedImg;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedName;


@property (nonatomic,strong) UMView* listView_childWgt1_selectedMobile;

@property (nonatomic,strong) UMView* listView_childWgt1_selectedPosition;



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
