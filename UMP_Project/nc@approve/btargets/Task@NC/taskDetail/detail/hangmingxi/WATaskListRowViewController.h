/*!
 @header CWATaskListRowViewController.h
 @abstract 消息动作列表的界面
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <UIKit/UIKit.h>
#import "WATaskListRowController.h"

@interface CWATaskListRowViewController : UIViewController<UITableViewDataSource,UITabBarDelegate>
{
  IBOutlet UITableView *iTableView;
  IBOutlet UIButton *iLeftBtn;
  NSArray *iDataArray;
  IBOutlet CWATaskListRowController *iTaskRowController;
}
/*!
 @property
 @abstract tableveiw要显示的数据
 */
@property (nonatomic, retain) NSArray *iDataArray;
@end
