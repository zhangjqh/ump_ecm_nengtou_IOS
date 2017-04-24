
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface info_attach_listController_listviewdefine0_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;








@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;




@end


@interface info_attach_listController_listviewdefine0_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;



@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;







@end


@interface info_attach_listController_listviewdefine0_cellHeight : NSObject
@property (strong) UMLayoutView* panel2;
- (UMLayoutView*)panel2 BV_OBJC_METHOD_FAMILY_NONE;







@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* image0;

@property (nonatomic,strong) UMView* label4;

@property (nonatomic,strong) UMView* label2;

@property (nonatomic,strong) UMView* label3;



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
