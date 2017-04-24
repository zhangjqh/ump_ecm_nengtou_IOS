
#import <UMIOSControls/LHTableViewCell.h>
#import <UMIOSControls/UMIOSControls.h>
#import <UMIOSControls/LHRefreshTableView.h>
#import <UMIOSControls/LHGroup.h>

@interface flow_stepscanController_listView_tableViewCell:LHTableViewCell

@property (strong) UMLayoutView* itemPanel;
- (UMLayoutView*)itemPanel BV_OBJC_METHOD_FAMILY_NONE;








@property(nonatomic,strong)NSString *cellHeight;
@property (nonatomic,strong) UMView* indexLabel;

@property (nonatomic,strong) UMView* nameLabel;

@property (nonatomic,strong) UMView* spaceLabel;

@property (nonatomic,strong) UMView* itemImg;




@end


@interface flow_stepscanController_listView_group : LHGroup

@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property(nonatomic,strong)UMView * groupLayout;
@property (nonatomic,strong) UMView* indexLabel;

@property (nonatomic,strong) UMView* nameLabel;

@property (nonatomic,strong) UMView* spaceLabel;

@property (nonatomic,strong) UMView* itemImg;



@property (strong) UMLayoutView* itemPanel;
- (UMLayoutView*)itemPanel BV_OBJC_METHOD_FAMILY_NONE;







@end


@interface flow_stepscanController_listView_cellHeight : NSObject
@property (strong) UMLayoutView* itemPanel;
- (UMLayoutView*)itemPanel BV_OBJC_METHOD_FAMILY_NONE;







@property(nonatomic,strong)UMView * groupLayout;
@property(nonatomic,strong)NSString *cellHeight;
@property(nonatomic,strong)NSString *sectionHeight;
@property(nonatomic,strong)NSString *listGroup;
@property (nonatomic,strong) UMView* indexLabel;

@property (nonatomic,strong) UMView* nameLabel;

@property (nonatomic,strong) UMView* spaceLabel;

@property (nonatomic,strong) UMView* itemImg;



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
