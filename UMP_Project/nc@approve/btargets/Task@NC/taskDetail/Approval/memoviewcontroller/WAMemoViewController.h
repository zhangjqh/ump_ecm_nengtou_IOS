
#import <UIKit/UIKit.h>
#import "WAMemoController.h"
@interface CWAMemoViewController : UIViewController
{
  IBOutlet UINavigationBar *iNarBar;
  IBOutlet UIButton *iLeftBtn;
  IBOutlet UIButton *iRightBtn;
  IBOutlet UIView *iShowContentView;
  NSString *iMemo;
  NSString *iNextMemo;
  CWAMemoController *iMemoController;
  BOOL isCanEdit;
}

@property (nonatomic,copy)NSString *iMemo;
@property (nonatomic,copy)NSString *iNextMemo;
@property (nonatomic,assign)BOOL isCanEdit;

- (id)initWithNibName:(NSString *)nibNameOrNil
           Withbundle:(NSBundle *)nibBundleOrNil
             WithMemo:(NSString *)aMemo
             WithNextMemo:(NSString *)aNextMemo
         WithDelegate:(id <MEAMemoControllerDelegate>) aMemoControllerDelegate;

- (NSString *)getMemo;
@end
