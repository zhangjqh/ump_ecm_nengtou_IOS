
/*!

 	@header	常用审批意见列表界面控制类

 	@abstract

 	@discussion	

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-23 16:14:33 Creation

 */

#import <Foundation/Foundation.h>
#import "WANormallyNoteListBnsHandler.h"
#import "WANormallyNoteListRequestVO.h"
#import "WANormalNoteListViewVO.h"

@protocol MWANoteListViewControllerDelegate <NSObject>

- (void)selectedNote:(CWANormalNoteListViewVO *)iNormalNoteListViewVO;

@end

@class CWANormallyNoteListViewController;
@interface CWANormallyNoteListController : NSObject <UITableViewDataSource,UITableViewDelegate>
{
  CWANormallyNoteListBnsHandler *iNormallyNoteListBnsHandler;
  NSArray *iNoteList;
}
@property (nonatomic,assign)id <MWANoteListViewControllerDelegate> delegate;
@property (nonatomic,retain)NSArray *iNoteList;
@property (nonatomic,assign)CWANormallyNoteListViewController *iNormallyNoteListViewController;

- (void)getNoteListWithTaskID:(NSString *)aTaskID
                WithStatusKey:(NSString *)aStatusKey
              WithStatusValue:(NSString *)aStatusValue
							 WithActionCode:(NSString *)aActionCode
              WithServiceCode:(NSString *)aServiceCode;

- (void)leftBtnClick:(id)sender;
@end
