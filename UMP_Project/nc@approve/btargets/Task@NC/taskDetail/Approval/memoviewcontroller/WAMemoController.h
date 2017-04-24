#import <Foundation/Foundation.h>

@class CWAMemoViewController;

@protocol MEAMemoControllerDelegate <NSObject>

- (void)saveMemo:(NSString *)aMemo;

@end
@interface CWAMemoController : NSObject
@property (nonatomic,assign) id <MEAMemoControllerDelegate> iMemoControllerDelegate;
@property (nonatomic,assign) CWAMemoViewController *iMemoViewController;
- (void)LeftBtnClick:(id)sender;
- (void)RightBtnClick:(id)sender;
@end
