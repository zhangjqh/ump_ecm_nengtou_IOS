/*!
 	@header	手写输入
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-24 12:05:19 Creation
 */
#import <UIKit/UIKit.h>
#import "WAHandWriteController.h"
#import "WADrawingBoardView.h"
#import "TaskDef.h"

@interface CWAHandWriteViewController : UIViewController
{
  IBOutlet UINavigationBar *iNavBar;
  IBOutlet UIButton *iLeftBtn;
  IBOutlet UIView *iBottomView;
  IBOutlet UIScrollView *iSCrollView;
  UIImage *iInitImage;
  CWAHandWriteController *iHandWriteController;
  NSString *iTitle;
  BOOL iCanEdit;
}
@property (nonatomic,copy)  NSString *iTitle;;
@property (nonatomic,retain)  UIImage *iInitImage;
@property (nonatomic,assign) IBOutlet CWADrawingBoardView *iDrawingBoardView;
@property (nonatomic,assign) id <DrawingBoardDelegate> iDrawingBoardDelegate;
@property (nonatomic,assign)  BOOL iCanEdit;

- (id)initWithNibName:(NSString *)nibNameOrNil
           Withbundle:(NSBundle *)nibBundleOrNil
WithDrawingBoardDelegate:( id <DrawingBoardDelegate>)aDrawingBoardDelegate
            WithInmage:(UIImage *)aInmage;

/*!
 	@method
 	@abstract	增加保存按钮
 	@discussion
 */
-(void)addRightBtn;

/*!
 	@method
 	@abstract	添加撤销按钮
 	@discussion	
 */
- (void)addRevokeBtn;

@end
