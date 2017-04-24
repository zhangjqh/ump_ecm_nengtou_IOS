/*!
 	@header	NC63任务明细界面VO
 	@abstract	
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-11 09:18:44 Creation
 */

#import "WATaskDetailViewVO.h"
#import "WAMainBodyViewVO.h"
@interface CWATaskDetailNC63ViewVO : CWATaskDetailViewVO
{
  NSString *iReminderContent;
  NSString *iStatuscode;
  NSString *iStatuskey;
  CWAMainBodyViewVO *iMainBodyViewVO;
  NSString *iAttachmentCount;
}

/*!
 	@property
 	@abstract	iReminderContent	提示
 */
@property (nonatomic,copy)NSString *iReminderContent;

/*!
 	@property
 	@abstract	iStatuscode	状态编码
 */
@property (nonatomic,copy)NSString *iStatuscode;

@property (nonatomic,copy)NSString *iStatuskey;
@property (nonatomic,copy)NSString *iAttachmentCount;
@property (nonatomic,retain)CWAMainBodyViewVO *iMainBodyViewVO;


@end
