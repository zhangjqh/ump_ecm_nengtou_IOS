/*!
 @header CWAPickerViewCell.m
 @abstract button用于显示添加的人
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/21 Creation 
 */


#import "WAPickerViewCell.h"
#import <QuartzCore/QuartzCore.h>
#import "TaskDef.h"
//正常的背景颜色
#define WA_TASK_PICKERCELL_NORMAL_BACKGROUNDCOLOR [UIColor colorWithRed:105/255.0f green:200/255.0f blue:245.0/255.0f alpha:1.0f]
//高亮时的背景颜色
#define WA_TASK_PICKERCELL_HILIGHTED_BACKGROUNDCOLOR [UIColor colorWithRed:70/255.0f  green:170/255.0f  blue:245/255.0f  alpha:1.0f]

@implementation CWAPickerViewCell
@synthesize iIsSelected;
@synthesize iRepresentedObject;

//工厂方法创建一个对象
+ (CWAPickerViewCell *)createACWAPickerViewCellWithString:(NSString *)aString representObject:(id)aObject
{
  CWAPickerViewCell *pickerViewCell = [CWAPickerViewCell buttonWithType:UIButtonTypeCustom];
  [pickerViewCell commonSetUpWithString:aString representObject:aObject];
  [pickerViewCell setIsSelected:NO];
  
  return pickerViewCell;
}

//设置是否被选择
- (void)setIsSelected:(BOOL)aIsSelected
{
  iIsSelected = aIsSelected;
  if (iIsSelected) 
  {
    [self setBackgroundColor:WA_TASK_COLOR_104_143_223];
		[self setTitleColor:WA_TASK_COLOR_253 forState:UIControlStateNormal];
  }
  else 
  {
    [self setBackgroundColor:WA_TASK_COLOR_176_208_255];
		[self setTitleColor:WA_TASK_COLOR_31 forState:UIControlStateNormal];
  }
}

#pragma mark -
#pragma mark CWAPickerViewCell(Private) methods
//通用设置
- (void)commonSetUpWithString:(NSString *)aString representObject:(id)aObject
{
  [self setAdjustsImageWhenDisabled:NO];
  [self setBackgroundColor:[UIColor redColor]];
  [self setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
  [[self titleLabel] setFont:WA_TASK_FONT_KAKU_W3_14];
  [[self titleLabel] setLineBreakMode:NSLineBreakByTruncatingTail];
  [self setTitleEdgeInsets:UIEdgeInsetsMake(2, 10, 0, 10)];
  [self setTitle:aString forState:UIControlStateNormal];
  [self sizeToFit];
  self.layer.cornerRadius = 13;
  
  CGRect frame = self.frame;
  frame.size.width += 20;
  frame.size.height = 25;
  [self setFrame:frame];
  
  self.iRepresentedObject = aObject;
}
@end
