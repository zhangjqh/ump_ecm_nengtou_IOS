#import <Foundation/Foundation.h>
#import "WAButton.h"
@interface CWAButtonImagesArray : NSObject
{
  NSMutableArray *iButtonImages;
}
@property (nonatomic,retain) NSMutableArray *iButtonImages;
/*!
 *	@method
 *	@abstract	初始化
 *	@discussion
 *	@result
 */
- (id)init;

/*!
 *	@method
 *	@abstract	添加按钮图片
 *	@discussion
 *	@param 	aButtonImage 	需要添加的按钮的图片
 */
- (void)addButtonImage:(CWAButton *)aButtonImage;

/*!
 *	@method
 *	@abstract	获取按钮个数
 *	@discussion
 *	@result
 */
- (NSUInteger)count;

/*!
 *	@method
 *	@abstract	根据索引获取按钮
 *	@discussion
 *	@param 	aIndex 	索引
 *	@result	获取按钮，不需释放,owened
 */
- (CWAButton *)objectAtIndex:(NSUInteger)aIndex;

/*!
 *	@method
 *	@abstract	获取默认wabutonArray
 *	@discussion
 *	@param 	bottonCount 	按钮数
 *	@param 	aTitles 	所有的按钮的标题数组
 *	@param 	aStatusCode 	状态编码数组
 *	@param 	aServiceCode 	服务器编码数组
 *	@param 	aStatus 	状态
 *	@result	wabuton数组
 */
+ (CWAButtonImagesArray *)getButtonWithButtonCount:(int)aButtonCount
                                         withTitle:(NSArray *)aTitles
                                    withStatusCode:(NSArray *)aStatusCode
                                   withServiceCode:(NSArray *)aServiceCode
                                        withStatus:(NSString *)aStatus;
/*!
 *	@method
 *	@abstract	获取默认wabutonArray ios7 背景色
 *	@discussion
 *	@param 	bottonCount 	按钮数
 *	@param 	aTitles 	所有的按钮的标题数组
 *	@param 	aStatusCode 	状态编码数组
 *	@param 	aServiceCode 	服务器编码数组
 *	@param 	aStatus 	状态
 *	@result	wabuton数组
 */
+ (CWAButtonImagesArray *)getButtonWithButtonCountIOS7:(int)aButtonCount
                                         withTitle:(NSArray *)aTitles
                                    withStatusCode:(NSArray *)aStatusCode
                                   withServiceCode:(NSArray *)aServiceCode
                                        withStatus:(NSString *)aStatus;

/*!
 *	@method
 *	@abstract	获取默认wabutonArray
 *	@discussion
 *	@param 	bottonCount 	按钮数
 *	@param 	aTitles 	所有的按钮的标题数组
 *	@param 	aStatusCode 	状态编码数组
 *	@param 	aServiceCode 	服务器编码数组
 *	@param 	aStatus 	状态
 *  @param  aBundleNameOrPath 资源所在bundle的全名 或者 资源所在的文件夹路径
 *	@result	wabuton数组
 */
+ (CWAButtonImagesArray *)getButtonWithButtonCount:(int)aButtonCount
                                         withTitle:(NSArray *)aTitles
                                    withStatusCode:(NSArray *)aStatusCode
                                   withServiceCode:(NSArray *)aServiceCode
                                        withStatus:(NSString *)aStatus
                              withBundleNameOrPath:(NSString *)aBundleNameOrPath;
@end
