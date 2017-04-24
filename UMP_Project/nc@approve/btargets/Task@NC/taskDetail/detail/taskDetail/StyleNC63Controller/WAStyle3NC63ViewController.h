/*!
 @header CWAStyle3ViewController.h
 @abstract style3 样式《data(row(item,child))》但child小于2行
 @author dequan
 @copyright ufida
 @version 1.00 2012/06/01 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAStyleDef.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WATaskMacro.h"
#import "WAMainBodyContenController.h"
#import "WATaskDetailNC63ViewController.h"
#import "WABaseTableViewController.h"

@interface CWAStyle3NC63ViewController : CWABaseTableViewController <MWATaskBnsHandlerDelegate>
{
  //数据源
  CWATaskDetailNC63ViewVO *iFeedVieVO;
  //附件下载控制类
  CWAMainBodyContenController *iAttachmentController;
  CWATaskDetailController *iTaskDetailController;
  
  NSMutableArray *iSectiontitles;
  int indextOfMainbody ;
  int indextOfAttachment ;
  int indextOfApproveHistory;
}

/*!
 @property
 @abstract 
 */
@property (nonatomic, retain) CWATaskDetailController *iTaskDetailController;

/*!
 @property
 @abstract uitableview的数据显示内容
 */
@property (nonatomic, retain) CWATaskDetailViewVO *iFeedVieVO;

@end
