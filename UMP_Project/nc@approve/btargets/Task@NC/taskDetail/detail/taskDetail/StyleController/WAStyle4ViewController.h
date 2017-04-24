/*!
 @header CWAStyle1ViewController.h
 @abstract style1 样式《data(row(item))》
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAStyleDef.h"
#import "WATaskDetailViewVO.h"
#import "WATaskMacro.h"
#import "WAAttachmentController.h"
#import "WAWebTableViewCell.h"
#import "WABaseTableViewController.h"

@interface CWAStyle4ViewController : CWABaseTableViewController
{
  //数据源
  CWATaskDetailViewVO *iFeedVieVO;
  //附件下载控制类
  CWAAttachmentController *iAttachmentController;
}
/*!
 @property
 @abstract uitableview的数据显示内容
 */
@property (nonatomic, retain) CWATaskDetailViewVO *iFeedVieVO;
@property (nonatomic,retain)NSURL *iURL;
@end
