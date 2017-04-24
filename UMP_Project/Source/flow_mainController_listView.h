
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface flow_mainController_listView_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* listView_groupWgt;
- (UMLayoutView*)listView_groupWgt BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;









@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* listView_groupWgt_groupLabel;


@property (nonatomic,strong) UMView* listView_childWgt0_cnameLabel;

@property (nonatomic,strong) UMView* listView_childWgt0_cspace15Label;

@property (nonatomic,strong) UMView* listView_childWgt0_cdateLabel;


@property (nonatomic,strong) UMView* listView_childWgt1_importantImg;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace5Label;

@property (nonatomic,strong) UMView* listView_childWgt1_inameLabel;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace15Label;

@property (nonatomic,strong) UMView* listView_childWgt1_idateLabel;




@end


@interface flow_mainController_listView_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* listView_groupWgt_groupLabel;


@property (nonatomic,strong) UMView* listView_childWgt0_cnameLabel;

@property (nonatomic,strong) UMView* listView_childWgt0_cspace15Label;

@property (nonatomic,strong) UMView* listView_childWgt0_cdateLabel;


@property (nonatomic,strong) UMView* listView_childWgt1_importantImg;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace5Label;

@property (nonatomic,strong) UMView* listView_childWgt1_inameLabel;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace15Label;

@property (nonatomic,strong) UMView* listView_childWgt1_idateLabel;



@property (strong) UMLayoutView* listView_groupWgt;
- (UMLayoutView*)listView_groupWgt BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;








@end


@interface flow_mainController_listView_cellHeight : NSObject
@property (strong) UMLayoutView* listView_groupWgt;
- (UMLayoutView*)listView_groupWgt BV_OBJC_METHOD_FAMILY_NONE;


@property (strong) UMLayoutView* listView_childWgt0;
- (UMLayoutView*)listView_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;




@property (strong) UMLayoutView* listView_childWgt1;
- (UMLayoutView*)listView_childWgt1 BV_OBJC_METHOD_FAMILY_NONE;








@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* listView_groupWgt_groupLabel;


@property (nonatomic,strong) UMView* listView_childWgt0_cnameLabel;

@property (nonatomic,strong) UMView* listView_childWgt0_cspace15Label;

@property (nonatomic,strong) UMView* listView_childWgt0_cdateLabel;


@property (nonatomic,strong) UMView* listView_childWgt1_importantImg;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace5Label;

@property (nonatomic,strong) UMView* listView_childWgt1_inameLabel;

@property (nonatomic,strong) UMView* listView_childWgt1_ispace15Label;

@property (nonatomic,strong) UMView* listView_childWgt1_idateLabel;



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
