#import <UIKit/UIKit.h>
#import "WAPickerViewCell.h"

#define WA_TASK_ACTION_DEFAULT_HEIGHT 44

@protocol MWAPickerNC63TextFieldCellDelegate <NSObject>

- (void)delPickerCellSuccess:(id)representedObject withSender:(id)sender;

@end

@interface CWAPickerNC63TextFieldCell : UITableViewCell <UITextFieldDelegate,UIGestureRecognizerDelegate>
{
  @private

  //装载pickercell的array
  NSMutableArray *iPickerCellArray;
  //输入的textfield
  UITextField *iInputTextField;
  //隐藏的textfield
  UITextField *iHiddenTextField;
  
   UITextField *iPlaceHolderTextField;
  //要删除的pickercell
  CWAPickerViewCell *iDeletedPickerCell;
  
  CWAPickerViewCell *iDragPickerCell;

  //是否能后在加联系人
  BOOL canAddPeople;
  //iLinkmanField的旧的frame
  CGRect iLinkmanFieldOldFrame;
  //能否改变顺序
  BOOL iCanChangeOrder;
  CGPoint startLocation;
	CGRect startFrame;
  NSString *iPromptText;
  UIScrollView *iScrollView;
  @public
  UIButton *iAddButton;
  BOOL *iIsShowAddButtonFlag;
}
/*!
 	@property
 	@abstract	iPromptText	提示文字（如：收件人）
 */
@property (nonatomic, retain)NSString *iPromptText;

@property (nonatomic,assign,getter = getCanChangeOrder)BOOL iCanChangeOrder;

@property (nonatomic,assign)id <MWAPickerNC63TextFieldCellDelegate> iPickerNC63TextFieldCellDelegate;


/*!
 	@property
 	@abstract	iAddButton	添加人员按钮
 */
@property (nonatomic, retain) UIButton *iAddButton;

/*!
 	@property
 	@abstract	iIsShowAddButtonFlag	添加人员按钮 是否显示
 */
@property (nonatomic, assign)BOOL *iIsShowAddButtonFlag;

- (void)addALinkManWith:(id)aLinkMan;


- (CGRect)calFrameOfCell;

- (void)reSetFrame;
- (void)deleteAllPickerCell;

- (NSArray *)getAllSelectedRepresentedObject;
- (void)settPlaceHolder:(NSString *)text;

- (id)initWithFrame:(CGRect)frame withFlag:(NSString*)aFlag;
/*!
 	@method
 	@abstract	初始化方法
 	@discussion
 	@param 	frame
 	@param 	promptText 	提示语句
 	@result
 */
- (id)initWithFrame:(CGRect)frame WithPromptText:(NSString *)promptText WithAddButtonFalg:(BOOL)aFalg;

@end


