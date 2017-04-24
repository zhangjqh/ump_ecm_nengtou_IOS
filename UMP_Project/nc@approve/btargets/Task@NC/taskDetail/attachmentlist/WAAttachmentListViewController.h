#import <UIKit/UIKit.h>
#import "WAAttachmentController.h"
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"
#import "WATaskListDef.h"
@interface CWAAttachmentListViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>
{
  NSArray *iAttachmentList;
  NSString *iServiceCode;
  CWAAttachmentController *iAttachmentController;
  UITableView *iTableView;
  int iTotalLine;
}

@property (nonatomic,retain)NSArray *iAttachmentList;
@property (nonatomic,copy) NSString *iServiceCode;
@property (nonatomic,assign)int iTotalLine;

- (id)initWithAttachmentList:(NSArray *)aAttachmentList
    WithServiceCode:(NSString *)aServiceCode;
@end
