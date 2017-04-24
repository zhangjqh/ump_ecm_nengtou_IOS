#import <Foundation/Foundation.h>

@class CWAHandWriteViewController;
@interface CWAHandWriteController : NSObject

@property (nonatomic,assign)CWAHandWriteViewController *iHandWriteViewController;

- (void)leftBtnClick:(id)sender;
- (void)revokeBtnClick:(id)sender;
- (void)saveBtnClick:(id)sender;

@end
