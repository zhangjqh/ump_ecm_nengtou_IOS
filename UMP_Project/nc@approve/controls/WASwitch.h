/*!
 @header CWASwitch.h
 @abstract 自定义开关按钮
 @author huych 
 @copyright ufida
 @version 1.00 2012/04/18 Creation 
 */
#import <UIKit/UIKit.h>

@interface CWASwitch : UISlider
{
  @private
  UIImage *iLeftImage;
  UIImage *iRightImage;
  UIImage *iSilderImage;
  CGPoint iOrigin;
  BOOL on;
  
}
/*!
 @property
 @abstract 开关状态
 */
@property(nonatomic,assign) BOOL on;

/*!
 @property
 @abstract 控件的原点位置
 */
@property(nonatomic,assign)CGPoint iOrigin;

/*!
 @property
 @abstract 控件左边图片
 */
@property(nonatomic,retain)UIImage *iLeftImage;

/*!
 @property
 @abstract 控件右边图片
 */
@property(nonatomic,retain)UIImage *iRightImage;

/*!
 @property
 @abstract 控件滑块图片
 */
@property(nonatomic,retain)UIImage *iSilderImage;


/*!
 @method
 @abstract 初始化方法
 @discussion  
 @param aRightImage 左边图片
 @param aLeftImage 右边图片
 @param aSilderImage 滑块图片
 @param aOrigin 初始位置
 @param isOn 初始状态
 @result 需要释放,not owned
 */
- (id)initWithRightImage:(UIImage *)aRightImage
           WithLeftImage:(UIImage *)aLeftImage
         WithSilderImage:(UIImage *)aSilderImage
             withiOrigin:(CGPoint) aOrigin
                  WithOn:(BOOL)isOn;

/*!
 @method
 @abstract 更新状态
 @discussion  
 @param on 界面的是否开启
 */
- (void)updateStatusWithOn:(BOOL)on;
@end
