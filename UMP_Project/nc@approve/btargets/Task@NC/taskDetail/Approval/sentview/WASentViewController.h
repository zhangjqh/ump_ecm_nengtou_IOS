/*!
 	@header	抄送界面
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-27 16:41:13 Creation
 */
#import <UIKit/UIKit.h>
#import "WASentController.h"
#import "WAPickerNC63TextFieldCell.h"
#import "WASentViewVO.h"

@interface CWASentViewController : UIViewController<MWAPickerNC63TextFieldCellDelegate>
{
	IBOutlet UINavigationBar *iNavBar;
	IBOutlet UIButton *iLeftBtn;
	IBOutlet UIButton *iRightBtn;
	CWASentController *iSentController;
  CWAPickerNC63TextFieldCell *iPickerNC63TextFieldCell;
}


@property (nonatomic,retain)CWAPickerNC63TextFieldCell *iPickerNC63TextFieldCell;

- (id)initWithNibName:(NSString *)nibNameOrNil
           WithBundle:(NSBundle *)nibBundleOrNil
       WithSentViewVO:(CWASentViewVO *)aSentViewVO
         WithDelegate:(id <MWASentViewController>)aDelegate;
@end
