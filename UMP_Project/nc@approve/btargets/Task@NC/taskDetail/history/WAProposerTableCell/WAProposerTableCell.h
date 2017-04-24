/*!
 @header WAProposerTableCell.h 
 @abstract 任务历史提交人表格单元
 @author Created by Li Xiaopeng
 @copyright ufida
 @version 1.00 2012/5/22 Creation
 */

#import <UIKit/UIKit.h>

/*!
 @class
 @abstract 提交人表格单元
 */
@interface CWAProposerTableCell : UITableViewCell
{
  IBOutlet UILabel *iProposerName;
  IBOutlet UILabel *iProposeDate;
  
}

/*!
 @property
 @abstract 提交人名字
 */
@property (retain, nonatomic) IBOutlet UILabel *iProposerName;

/*!
 @property
 @abstract 提交时间
 */
@property (retain, nonatomic) IBOutlet UILabel *iProposeDate;

@end
