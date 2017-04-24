
/*!

 	@header	动作界面

 	@abstract	注意：指派和转发以及加签不能同时出现

 	@discussion	

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-07-10 09:37:49 Creation

 */

#import <Foundation/Foundation.h>
#import "WATaskActionViewVO.h"
#import "WATaskActionNC63BnsHandler.h"
#import "WALinkManNC63ViewController.h"
#import "WAPickerViewCell.h"
#import "WAPickerNC63TextFieldCell.h"
#import "WANormallyNoteListViewController.h"
#import "DrawingBoardDelegate.h"
#import "WAMemoViewController.h"
#import "WASentViewController.h"
#import "WACTAttachmentListViewControll.h"
#import "WAHandWriteViewController.h"
#import "TaskDef.h"
#import "WAPlaceHolderTextView.h"

typedef enum
{
  EWAAUDITCELL,
  EWASSINGCELL,   //指派给人
  EWAATTACHCELL, //附件
  EWASENTCELL,
  EWABEFORESINGCELL,  //前加签
  EWAAFTERSINGCELL,
  EWAMEMOCELL,
  EWAREJECT,
  EWAREASSIGN
}TWACellType;

@class CWATaskActionNC63ViewController;
@interface CWATaskActionNC63Controller : UIViewController <UITableViewDataSource,UITableViewDelegate,MWALinkManViewControllerDelegate,MWAPickerNC63TextFieldCellDelegate,MWANoteListViewControllerDelegate,DrawingBoardDelegate,MEAMemoControllerDelegate,MWASentViewController,MWACTAttachmentListDelegate,MWALinkManNC63ViewControllerDelegate,UIAlertViewDelegate,UITextViewDelegate>
{
  CWATaskActionViewVO *iTaskActionViewVO;
  NSMutableArray *iCellTypes;
	NSMutableArray *iActivities;
  TWACellType iAssginSelelctedType;
  CWAPlaceHolderTextView *iNoteTextField;
  NSMutableArray *iAttachList;
  CWATaskActionNC63BnsHandler *iTaskActionNC63BnsHandler;
  CWAPickerNC63TextFieldCell *iPickerNC63TextFieldCell;
  CWAPickerNC63TextFieldCell *iBeforAssingePickerNC63TextFieldCell;
  CWAPickerNC63TextFieldCell *iReassignPickernc63textfieldcell;
  CWAPickerNC63TextFieldCell *iAfterAssingePickerNC63TextFieldCell;
  CWAPickerNC63TextFieldCell *iRejectPickerNC63TextFieldCell;
  CWAHandWriteViewController *iDrawingBoardViewController;
  NSMutableArray *iArrayStrokes;
}
@property (nonatomic,retain) NSMutableArray *iArrayStrokes;
@property (nonatomic,retain) NSMutableArray *iAttachList;
@property (nonatomic,assign)CWATaskActionNC63ViewController *iTaskActionNC63ViewController;
@property (nonatomic,retain) CWATaskActionViewVO *iTaskActionViewVO;


- (id)initWithTaskActionViewVO:(CWATaskActionViewVO *)aTaskActionViewVO;

- (IBAction)cancleBtnclick:(id)sender;

- (void)submitBtnClick:(id)sender;
@end
