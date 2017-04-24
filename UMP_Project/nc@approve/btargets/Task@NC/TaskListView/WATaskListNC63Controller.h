/*
    WATaskListNC63Controller 任务列表控制类
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-08 08:44:35 Creation
 */
#import "WATaskListController.h"
#import "WAButton.h"
#import "WATaskListNC63BnsHandler.h"

@protocol MWANC63TaskListControllerDelegate <NSObject>
@optional
- (void) updateTastKey;
- (void)beforeSentHttp;

- (void)updateStatusVOs:(NSMutableArray *)aStatusVOs;

@end

@interface CWATaskListNC63Controller : CWATaskListController
{
  CWATaskListNC63BnsHandler *iListBnsHandler;
}

@property (nonatomic,assign)id<MWANC63TaskListControllerDelegate> iNC63TaskListControllerDelegate;

- (void)settingBtnClick:(id)sender;
@end
