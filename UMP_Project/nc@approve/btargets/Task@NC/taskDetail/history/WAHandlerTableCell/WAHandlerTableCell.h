/*!
 @header WAHandlerTableCell.h 
 @abstract 任务历史处理人表格单元
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import <UIKit/UIKit.h>

/*!
 @class
 @abstract 处理人表格单元
 */
@interface CWAHandlerTableCell : UITableViewCell
{
  IBOutlet UILabel *iHandlerName;
  IBOutlet UILabel *iHandlerIdea;
  IBOutlet UILabel *iHandlerDetail;
  IBOutlet UILabel *iHandlerDate;
  
}

/*!
 @property
 @abstract 处理人名字
 */
@property (retain, nonatomic) IBOutlet UILabel *iHandlerName;

/*!
 @property
 @abstract 处理人意见
 */
@property (retain, nonatomic) IBOutlet UILabel *iHandlerIdea;

/*!
 @property
 @abstract 处理详情
 */
@property (retain, nonatomic) IBOutlet UILabel *iHandlerDetail;

/*!
 @property
 @abstract 处理时间
 */
@property (retain, nonatomic) IBOutlet UILabel *iHandlerDate;

@end
