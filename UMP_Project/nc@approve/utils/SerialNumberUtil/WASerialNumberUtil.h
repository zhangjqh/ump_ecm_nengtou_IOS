#import <UIKit/UIKit.h>

@interface CWASerialNumberUtil : NSObject


/*!
 	@method
 	@abstract	获取流水号
 	@discussion	根据用户userid和时间生成流水号
 	@result	流水号
 */
+ (NSString *)getSerialNumber;


+ (BOOL)removeData;

@end
