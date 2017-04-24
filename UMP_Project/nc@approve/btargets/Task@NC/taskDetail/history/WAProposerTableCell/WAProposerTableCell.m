/*!
 @header WAProposerTableCell.h 
 @abstract 任务历史提交人表格单元
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import "WAProposerTableCell.h"

/*!
 @class
 @abstract 提交人表格单元
 */
@implementation CWAProposerTableCell

@synthesize iProposerName;

@synthesize iProposeDate;

/*!
 @method 
 @abstract 初始化表格单元
 @discussion
 @param style 表格单元风格 
 @param reuseIdentifier 重用标识
 @result 
 */
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  return self;
}

/*!
 @method 
 @abstract 初始化表格单元
 @discussion
 @param style 设置选中状态 
 @param animated 是否有动画
 @result 
 */
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
}

/*!
 @method 
 @abstract 表格单元销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
  self.iProposerName = nil;
  self.iProposeDate = nil;
}
@end
