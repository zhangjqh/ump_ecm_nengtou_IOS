/*TaskAcListController.h
 @abstract menucontrolelr的右边视图控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import <Foundation/Foundation.h>

@class CWAMenuListViewController;
@interface CWAMenuListController : NSObject<UITableViewDelegate,UITableViewDataSource>
{
  NSMutableArray *iMenuArray;
}

/*!
 @property
 @abstract 动作列表数组
 */
@property (nonatomic, retain)  NSMutableArray *iMenuArray;

@property (nonatomic, assign) CWAMenuListViewController *iMenuListViewController;

@end