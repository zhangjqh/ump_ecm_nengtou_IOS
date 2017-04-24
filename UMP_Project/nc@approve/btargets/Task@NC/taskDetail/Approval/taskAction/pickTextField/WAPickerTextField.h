/*!
 @header CWAPickerTextField.h
 @abstract 添加联系人textfield
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/21 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAPickerViewCell.h"
//本视图和textfield默认的高度
#define WA_TASK_DEFAULT_HEIGHT 44
@protocol MWAPickerTextFieldDelegate;

/*!
 @class
 @abstract 添加联系人的视图
 */
@interface CWAPickerTextField : UIView<UITextFieldDelegate>
{
  @private
  //条形线
  UIImageView *iImageview ;
  //装载pickercell的array
  NSMutableArray *iPickerCellArray;
  //输入的textfield
  UITextField *iInputTextField;
  //隐藏的textfield
  UITextField *iHiddenTextField;
  //要删除的pickercell
  CWAPickerViewCell *iDeletedPickerCell;
  //动作名称lable
  UILabel *iActionLable;
  //加按钮
  UIButton *iAddPersonButton;
  //是否能后在加联系人
  BOOL canAddPeople;
  //iLinkmanField的旧的frame
  CGRect iLinkmanFieldOldFrame;
}

/*!
 @property 
 @abstract 点击进入操作联系人界面
 */
@property (nonatomic, readonly) UIButton *iAddPersonButton;
/*!
 @property 
 @abstract CWAPickerTextField的代理。
 */
@property (nonatomic, assign) id <MWAPickerTextFieldDelegate> iDelegate;

/*!
 @property
 @abstract 输入的框iInputTextField。
 */
@property (nonatomic, readonly) UITextField *iInputTextField;

/*!
 @method
 @abstract 初始化方法
 @discussion 这是初始化方法。aActionString为开头文字
 @param frame view的frame
 @param aActionString 动作的名称，要显示在view上
 @result CWAPickerTextField 对象/not owned
 */
- (id)initWithFrame:(CGRect)frame actionString:(NSString *)aActionString;

/*!
 @method
 @abstract 添加一个联系人，在视图上用蓝色带字的子视图显示
 @discussion 当要添加个联系人的时候调用这个方法
 @param aString添加的联系人的名字
 @param aObj 添加的联系人
 @result void
 */
- (void)addPickerViewCellWithTitle:(NSString *)aString representedObject:(id)aObj;
@end

/*!
 @protocol
 @abstract 这是CWAPickerTextFiel类的一个protocol
 @discussion 这个代理主要是实现添加个联系人，移除联系人，和点击键盘return时的处理
 */
@protocol MWAPickerTextFieldDelegate <NSObject>
@optional
/*!
 @method
 @abstract 代理实现添加一个联系人
 @discussion 当要添加个联系人的时候代理调用这个方法
 @param aPickerTextField一般传入self
 @param aTitle 添加联系人的名字
 @param aObj 联系人对象
 @result void
 */
- (void)pickerTextField:(CWAPickerTextField *)aPickerTextField 
        didAddPickerCell:(NSString *)aTitle 
        representedObject:(id)aObj;

/*!
 @method
 @abstract 代理实现删除一个联系人
 @discussion 当要删除一个联系人的时候调用此方法
 @param aPickerTextField一般传入self
 @param aIndex 删除的联系人的索引
 @result void
 */
- (void)pickerTextField:(CWAPickerTextField *)aPickerTextField 
        didRemovePickerCellAtIndex:(NSUInteger)aIndex;

/*!
 @method
 @abstract 调用添加联系人的方法实现添加联系人
 @discussion 当按下return的时候，调用添加联系人的方法，实现添加联系人
 @param aPickerTextField一般传入self
 @result 返回BOOL代表是否相应textfield自带按return的效果
 */
- (BOOL)pickerTextFieldShouldReturn:(CWAPickerTextField *)aPickerTextField;

/*!
 @method
 @abstract 跳转到联系人界面
 @discussion 跳转到联系人界面
 @param N/A
 @result void
 */
- (void)goInLinkManView;

@end

@interface CWAPickerTextField(Private)
/*!
 @method
 @abstract 界面ui的普通设置
 @discussion 初始化的时候界面ui的初始化
 @param aActionString动作的名字
 @result void
 */
- (void)commonSetupWithActionString:(NSString *)aActionString;

/*!
 @method
 @abstract 调用产生一个CWAPickerViewCell对象
 @discussion 调用产生一个CWAPickerViewCell对象，然后要把它展现视图上
 @param aString动作string显示在iActionLable上
 @param aOb要添加的联系人
 @result 返回CWAPickerViewCell/owned
 */
- (CWAPickerViewCell *)pickerCellWithString:(NSString *)aString representedObject:(id)aObj;

/*!
 @method
 @abstract 设置pickerViewCell是否被选择
 @discussion 设置pickerViewCell是否被选择
 @param sender代表调用此方法的pickerviewcell自己
 @result void
 */
- (void)setSelected:(id)sender;

/*!
 @method
 @abstract 添加联系人
 @discussion 添加联系人
 @param N/A
 @result void
 */
- (void)addLiakMan;

@end

