//
//  UIImage+UMExtension.h
//  UMP_Project
//
//  Created by zhangnan on 13-5-16.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (UMExtension)
+ (UIImage*)imageWithContentsOfFileExtensionUM:(NSString*)filePath;

- (UIImage *)centerInView:(UIView *) view;
- (UIImage *)fillView:(UIView *) view;
- (UIImage *)fitInView:(UIView *) view;
+ (UIImage *) createImageWithColor:(UIColor *)color rect:(CGRect)rect;
+ (UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2;
+ (NSArray*)CropImage:(UIImage*)photoimage;
+ (UIImage*)drawImageOnViewForAndroidPointNineImage:(UIImage*)originImg dis:(int)dis;
+ (UIImage *)addSwitchImage:(UIImage *)switchimage1 toSwitchImage:(UIImage *)switchimage2;
@end
