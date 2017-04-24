
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface scdu_sharedgrouopController_listview0_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* listview0_childWgt0;
- (UMLayoutView*)listview0_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;





@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* listview0_childWgt0_label0;




@end


@interface scdu_sharedgrouopController_listview0_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* listview0_childWgt0_label0;



@property (strong) UMLayoutView* listview0_childWgt0;
- (UMLayoutView*)listview0_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;




@end


@interface scdu_sharedgrouopController_listview0_cellHeight : NSObject
@property (strong) UMLayoutView* listview0_childWgt0;
- (UMLayoutView*)listview0_childWgt0 BV_OBJC_METHOD_FAMILY_NONE;




@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* listview0_childWgt0_label0;



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
