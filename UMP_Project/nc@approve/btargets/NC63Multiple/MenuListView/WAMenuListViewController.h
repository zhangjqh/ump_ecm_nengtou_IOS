/*TaskAcListViewController.h
 @abstract 任务动作请求视图
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */


#import <UIKit/UIKit.h>
#import "WAMenuListController.h"
#import "WAUFTool.h"

@protocol WMMenuListDelegate <NSObject>

- (void)didSelectWithIndexPath:(NSIndexPath *)aIndexPath;

@end
@interface CWAMenuListViewController : UIViewController<UITextViewDelegate>
{
  CWAMenuListController *iRightController;
}

@property (nonatomic,readonly)CWAMenuListController *iRightController;
@property (nonatomic,assign) id<WMMenuListDelegate> iDelegate;

@end
