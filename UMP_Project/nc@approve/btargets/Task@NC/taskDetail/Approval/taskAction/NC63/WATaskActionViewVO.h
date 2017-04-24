
/*!

 	@header	动作界面默认值界面VO

 	@abstract

 	@discussion	

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-16 18:25:33 Creation

 */

#import "WABaseVO.h"
#import "WADefaultValueRequsetVO.h"

@interface CWATaskActionViewVO : CWADefaultValueRequsetVO

{
  NSString *iIsassign;
  NSString *iIsassignsigle;
  NSString *iAssigntype;
  NSString *iIsupload;
  NSString *iIsbassign;
  NSString *iIsaassign;
  NSString *iIssend;
  NSString *iIshasmemo;
  NSString *iMemo;
  NSString *iIshasnote;
  UIImage *iHandWriteImage;
  NSString *iNextMemno;
  NSArray *iSenters;
  NSString *iBsignaltype;
  NSString *iAsignaltype;
  NSString *iOpinion;
  NSInteger iActFlag;
}
@property (nonatomic,assign) NSInteger iActFlag;
@property (nonatomic,copy)  NSString *iOpinion;
@property (nonatomic,copy)  NSString *iBsignaltype;
@property (nonatomic,copy)  NSString *iAsignaltype;
@property (nonatomic,retain)  NSArray *iSenters;
@property (nonatomic,retain)  UIImage *iHandWriteImage;
@property (nonatomic,copy)  NSString *iNextMemno;
@property (nonatomic,copy)  NSString *iIsassign;
@property (nonatomic,copy)  NSString *iIsassignsigle;
@property (nonatomic,copy)  NSString *iAssigntype;
@property (nonatomic,copy)  NSString *iIsupload;
@property (nonatomic,copy)  NSString *iIsbassign;
@property (nonatomic,copy)  NSString *iIsaassign;
@property (nonatomic,copy)  NSString *iIssend;
@property (nonatomic,copy)  NSString *iIshasmemo;
@property (nonatomic,copy)  NSString *iMemo;
@property (nonatomic,copy)  NSString *iIshasnote;

@end
