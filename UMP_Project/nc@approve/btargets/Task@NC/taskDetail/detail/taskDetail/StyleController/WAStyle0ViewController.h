/*!
 @header WAStyle0ViewController.h
 @abstract style0 样式只有content和只有表头的样式
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import <UIKit/UIKit.h>
#import "WATaskDetailViewVO.h"
#import "WATaskMacro.h"
#import "WAAttachmentController.h"
#import "WABaseTableViewController.h"

@interface CWAStyle0ViewController : CWABaseTableViewController
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


@end
