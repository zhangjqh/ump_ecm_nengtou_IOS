
#import <Foundation/Foundation.h>
#import "WAMutilPicBnsHandler.h"
#import "WAFirstPicViewVO.h"
#import "WAOherPicViewVO.h"

typedef void (^TWAFirstPicReturnBlock) (CWAFirstPicViewVO *aFirstPicViewVO);
typedef void (^TWAOherReturnBlock) (CWAOherPicViewVO *aFirstPicViewVO);

@class CWAMutilPicViewController;
@interface CWAMutilPicController : NSObject
{
  //当前图片编号
  NSInteger iCurentPageNum;
  NSInteger iPageCountNum;
  NSInteger iDownloadImgCount;
   BOOL iIsLoadingImg;
  CWAFirstPicViewVO *iFirstPicViewVO;
  CWAMutilPicBnsHandler *iMutilPicBnsHandler;
  CWAOherPicViewVO *iOherPicViewVO;
  NSString *iTaskID;
  NSString *iServiceCode;
}
@property (nonatomic,copy) NSString *iServiceCode;
@property (nonatomic,copy) NSString *iTaskID;
@property (nonatomic,assign)CWAMutilPicViewController *iMutilPicViewController;
@property (nonatomic,retain)CWAFirstPicViewVO *iFirstPicViewVO;
@property (nonatomic,retain)CWAOherPicViewVO *iOherPicViewVO;

- (void)getFirstPicWithTaskID:(NSString *)aTaskID
                       WithID:(NSString *)aID
                 WithSizetype:(NSString *)aSizetype
                    WithBlock:(TWAFirstPicReturnBlock)aBlock
              WithServiceCode:(NSString *)aServiceCode;

- (void)getOherPicWithTaskID:(NSString *)aTaskID
                       WithInfopicid:(NSString *)aInfopicid
                 WithSizetype:(NSString *)aSizetype
                    WithBlock:(TWAOherReturnBlock)aBlock
              WithServiceCode:(NSString *)aServiceCode;

- (void)leftBtnClick:(id)sender;

@end
