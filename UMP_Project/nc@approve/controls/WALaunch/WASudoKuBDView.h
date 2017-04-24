

/*!
 	@header	九宫格背景view
 	@abstract 画格子
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2014-04-16 09:33:45 Creation
 */
#import <UIKit/UIKit.h>

@interface CWALineAttribute : NSObject
{
  UIColor *iColor;
  CGFloat iWidth;
}
/*!
 	@property
 	@abstract	iColor	线条颜色
 */
@property (nonatomic,retain) UIColor *iColor;

/*!
 	@property
 	@abstract	iWidth	线条宽度
 */
@property (nonatomic,assign) CGFloat iWidth;


@end
@interface CWASudoKuBDView : UIView

{
  int iRow;
  int iCount;
  CWALineAttribute *iLineAttrubute;
}
/*!
 	@property
 	@abstract	isNeedTopLine	是否需要顶部线条
 */
@property (nonatomic,assign)BOOL isNeedTopLine;

/*!
 	@property
 	@abstract	isNeedBottomTopLine	是否需要尾部线条
 */
@property (nonatomic,assign)BOOL isNeedBottomTopLine;

/*!
 	@property
 	@abstract	iRow	行数
 */
@property (nonatomic,assign)int iRow;

/*!
 	@property
 	@abstract	iCount	列数
 */
@property (nonatomic,assign)int iCount;

/*!
 	@property
 	@abstract	iLineAttrubute	线条属性（线条颜色和宽度）
 */
@property (nonatomic,retain)CWALineAttribute *iLineAttrubute;


@end
