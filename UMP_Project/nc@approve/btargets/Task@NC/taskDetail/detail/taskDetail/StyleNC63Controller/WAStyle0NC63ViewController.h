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
#import "WAMainBodyContenController.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WATaskDetailNC63ViewController.h"
#import "WABaseTableViewController.h"

@interface CWAStyle0NC63ViewController : CWABaseTableViewController
{
  //数据源
  CWATaskDetailNC63ViewVO *iFeedVieVO;
  //附件下载控制类
  CWAMainBodyContenController *iAttachmentController;
  NSMutableArray *iSectiontitles;
  CWATaskDetailController *iTaskDetailController;
  int indextOfMainbody ;
  int indextOfAttachment ;
  int indextOfApproveHistory;
}
/*!
 @property
 @abstract uitableview的数据显示内容
 */
@property (nonatomic, retain) CWATaskDetailViewVO *iFeedVieVO;
@property (nonatomic, retain) CWATaskDetailController *iTaskDetailController;


@end
