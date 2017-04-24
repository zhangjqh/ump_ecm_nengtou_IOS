/*!
 @header CWAPickerViewCell.h
 @abstract button用于显示添加的人
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/21 Creation 
 */

#import <UIKit/UIKit.h>

/*!
 @class
 @abstract 联系人显示的button类
 */
@interface CWAPickerViewCell : UIButton
{
  @private
  //view是否别选择
  BOOL iIsSelected;
  //代表的对象
  
  @public
  id iRepresentedObject;
}
/*!
 @property 
 @abstract iIsSelected判断self是否被选择
 */
@property (nonatomic, assign) BOOL iIsSelected; 
@property (nonatomic, retain) id iRepresentedObject;
/*!
 @method
 @abstract 初始化类方法
 @discussion 这是个工厂
 @param aString-button的title要显示的内容
 @param aObject self代表的对象
 @result CWAPickerTextField 对象/owned
 */
+ (CWAPickerViewCell *)createACWAPickerViewCellWithString:(NSString *)aString representObject:(id)aObject;

/*!
 @method
 @abstract 设置是否被选择
 @discussion 设置自己是否被选择
 @param aIsSelected YES为被选择NO为没被选择
 @result void
 */
- (void)setIsSelected:(BOOL)aIsSelected;
@end

@interface CWAPickerViewCell(Private) 
/*!
 @method
 @abstract 视图通用设置
 @discussion 视图通用设置
 @param aString 视图的title要显示的string
 @param aObject 视图代表的对象
 @result void
 */
- (void)commonSetUpWithString:(NSString *)aString representObject:(id)aObject;
@end


