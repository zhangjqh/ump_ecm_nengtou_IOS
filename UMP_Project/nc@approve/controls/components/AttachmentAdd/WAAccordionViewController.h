#import <UIKit/UIKit.h>
#import "WAAccordionController.h"
#import "WAAccordionViewDelegate.h"



@interface CWAAccordionViewController : UIViewController 
{
	IBOutlet UITableView *iTableView;
  UINavigationController *iNavCtrl;
  NSString *iTitle;
  NSString *iLeftBtnTitle;

  @private
  NSString *iRootPath;
  CWAAccordionController *iAccordionController;
  IBOutlet UINavigationBar *iNavBar;
	IBOutlet UIToolbar *iToolBar;

}

@property (nonatomic,assign) id <MWAFileSelectedDelegate> iSelectedDelegate;
@property (nonatomic, retain) UITableView *iTableView;
@property (nonatomic, retain) UINavigationController *iNavCtrl;
@property (nonatomic, copy) NSString *iTitle;
@property (nonatomic, copy) NSString *iLeftBtnTitle;


- (id)initWithNibName:(NSString *)nibNameOrNil
          WithNavCtrl:(UINavigationController *)aNavCtrl
           WithBundle:(NSBundle *)nibBundleOrNil
         WithRootPath:(NSString *)aRootPath
            WithTitle:(NSString *)aTitle
     withLeftBtnTitle:(NSString *)aLeftBtnTitle;

@end
