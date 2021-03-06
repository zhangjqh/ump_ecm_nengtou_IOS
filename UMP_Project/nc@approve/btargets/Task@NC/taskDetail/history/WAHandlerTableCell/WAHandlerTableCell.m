/*!
 @header WAHandlerTableCell.h 
 @abstract 任务历史处理人表格单元
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import "WAHandlerTableCell.h"
#import "WAShowDetailTextView.h"

/*!
 @class
 @abstract 处理人表格单元
 */
@implementation CWAHandlerTableCell

@synthesize iHandlerName;

@synthesize iHandlerIdea;

@synthesize iHandlerDetail;

@synthesize iHandlerDate;

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

-(void)awakeFromNib
{
	[super awakeFromNib];
}

/*!
 @method 
 @abstract 表格单元销毁时发送的消息
 @discussion 
 @result 
 */
- (void)dealloc 
{
  self.iHandlerName = nil; 
  self.iHandlerIdea = nil;
  self.iHandlerDetail = nil;
  self.iHandlerDate = nil;
}
@end
