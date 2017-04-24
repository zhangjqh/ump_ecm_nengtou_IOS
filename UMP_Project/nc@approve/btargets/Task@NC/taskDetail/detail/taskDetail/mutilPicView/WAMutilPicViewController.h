#import <UIKit/UIKit.h>
#import "WAMutilPicController.h"
@interface CWAMutilPicViewController : UIViewController
{
  IBOutlet UINavigationBar *iNavBar;
  IBOutlet UIView *iTopView;
  IBOutlet UIScrollView *iSCrollView;
  IBOutlet UIImageView *iImageView;
  IBOutlet UILabel *iTopLabel;
  IBOutlet UITextView *iBtmLabel;
  IBOutlet UIButton *iLeftBtn;
  CWAMutilPicController *iMutilPicController;
  NSString *iTaskID;
  NSString *iID;
  NSString *iServiceCode;
}

@property (nonatomic,readonly)  IBOutlet UIScrollView *iSCrollView;
@property (nonatomic,copy) NSString *iTaskID;
@property (nonatomic,copy) NSString *iID;
@property (nonatomic,copy) NSString *iServiceCode;

- (void)showOtherPicView:(CWAOherPicViewVO *)aOherPicViewVO;

- (void)showFirstPicView:(CWAFirstPicViewVO *)aFirstPicViewVO;
@end
