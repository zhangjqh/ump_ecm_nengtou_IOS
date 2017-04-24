/*!
 @header WAImgCompressUtil.h
 @abstract 图片压缩工具
 @author Lemon
 @copyright ufida
 @version 1.00 2013/07/11 Creation
 */

#import <Foundation/Foundation.h>

#define WA_CWAIMGCOMPRESS_MAXFILEKB 200
#define WA_CWAIMGCOMPRESS_IMGWIDTH 640
#define WA_CWAIMGCOMPRESS_ISSCALE YES
#define WA_CWAIMGCOMPRESS_ROUCHWID 1280.0f

/*!
 @class
 @abstract 图片压缩：按照指定要求压缩图片
 */
@interface CWAImgCompressUtil : NSObject

#pragma mark -
#pragma mark - 位图压缩

/*!
 @method
 @abstract 将图片按照指定清晰度压缩到指定大小
 @discussion  返回压缩处理后的图片
 @param aImage 将要被压缩的图片
 @param aSize 压缩目标大小
 @param aRate 清晰度比率，越大越清晰。最大有效值为1.0，最小有效值为0
 @result 返回结果不需要释放
 */
+ (UIImage *)compressImageSize:(UIImage *)aImage
                      toCGSize:(CGSize)aSize
                      withRate:(float)aRate;

/*!
 @method
 @abstract 将图片按照指定清晰度截取原图片指定位置的图片
 @discussion  返回截取处理后的图片
 @param aImage 将要被截取的图片
 @param aFrame 目标截取位置和大小,
               aFrame.origin表示截取区域的左上角，
               aFrame.size表示截取区域的尺寸
 @param aRate 清晰度比率，越大越清晰。最大有效值为1.0，最小有效值为0
 @result 返回结果不需要释放
 */
+ (UIImage *)clippingImageSize:(UIImage *)aImage
                     withFrame:(CGRect)aFrame
                      withRate:(float)aRate;

#pragma mark -
#pragma mark - 数据压缩

/*!
 @method
 @abstract 压缩图片存储空间大小，并返回NSData
 @discussion  返回值类型为NSData
 @param aImage 图片数据
 @param aQuality 压缩参数，参数越小，返回的NSData越小。有效范围为0.0～1.0
 @result 返回结果不需要释放
 */
+ (NSData *)compressImageToData:(UIImage *)aImage
                    withQuality:(float)aQuality;

#pragma mark -
#pragma mark - WA-规格压缩

/*!
 @method
 @abstract 以WA的通用标准和方法压缩图片尺寸和存储空间，此压缩为有损压缩
 @discussion  返回压缩后的NSData，
              此NSData为UIImage的单向压缩，如果将此NSData还原为UIImage格式，
              不能由还原出的UIImage得到与返回的NSData同样大小的NSData。
 @param aImage 需要被压缩的图片
 @result 返回结果不需要释放
 */
+ (NSData *)compressImageWAStyle:(UIImage *)aImage;

@end
