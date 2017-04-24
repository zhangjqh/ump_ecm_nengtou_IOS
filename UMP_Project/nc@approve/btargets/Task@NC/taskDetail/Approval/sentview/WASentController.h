#import <Foundation/Foundation.h>
#import "WALinkManNC63ViewController.h"
#import "WASentViewVO.h"


@protocol MWASentViewController <NSObject>

- (void)savedPnsList:(NSArray *)aPnsList;

@end
@class CWASentViewController;
@interface CWASentController : NSObject<MWALinkManViewControllerDelegate,UIAlertViewDelegate>
@property (nonatomic,assign)id <MWASentViewController> iDelegate;
@property (nonatomic,assign)CWASentViewController *iSentViewController;
@property (nonatomic,retain)CWASentViewVO *iSentViewVO;
- (void)leftBtnClick:(id)sender;
- (void)showPnsList:(id)sender;
- (void)rightBtnClick:(id)sender;
@end
