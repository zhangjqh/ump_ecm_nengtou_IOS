
#import "WALinkManViewController.h"
#import "WALinkManNC63VO.h"
#import "TaskDef.h"

@protocol MWALinkManNC63ViewControllerDelegate <NSObject>

- (void)saveSelectedLists:(NSMutableArray *)aSelectedLists
         andLinkManNC63VO:(CWALinkManNC63VO *)aLinkManNC63VO;

@end

@interface CWALinkManNC63ViewController : CWALinkManViewController
{
  BOOL isSingle;
	NSString *iActionCode;
  CWALinkManNC63VO *iLinkManNC63VO;
  IBOutlet UIButton *iSaveBtn;
  NSMutableArray *iSelectIndexPath;
}

@property (nonatomic,assign)id <MWALinkManNC63ViewControllerDelegate> iNc63Delegate;
@property (nonatomic,retain)CWALinkManNC63VO *iLinkManNC63VO;
- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
             isSingle:(BOOL)aIsSingle
			 withActionCode:(NSString *)aActionCode;
@end
