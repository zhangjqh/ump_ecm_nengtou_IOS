
#import <UIKit/UIKit.h>
#import "WALinkManVO.h"
#import "WAIosVersionAdaptor.h"
#import "TaskDef.h"
@interface CWAUserListNC63Cell : UITableViewCell
{
  UIImageView *iImageView;
  UIImage *iSelectImage;
  UIImage *iDeSelectImage;
  UILabel *iNameLabel;
  UILabel *iCodeLabel;
  CWALinkManVO *iLinkManVO;
  BOOL isSelected;
}
@property (nonatomic,assign)BOOL isSelected;
@property (nonatomic,retain)UIImage *iSelectImage;
@property (nonatomic,retain)UIImage *iDeSelectImage;
@property (nonatomic,retain)CWALinkManVO *iLinkManVO;

- (void)setLinkMan:(CWALinkManVO *)aLinkMan
         WithIsSel:(BOOL)aIsSel;

- (id)initWithStyle:(UITableViewCellStyle)style
WithReuseIdentifier:(NSString *)reuseIdentifier
WithSelectImage:(UIImage *)aSelectImage
WithDeSelectImage:(UIImage *)aDeSelectImage;


/*!
 	@method
 	@abstract	单选设置frame
 	@discussion
 	@param 	aLinkMan
 	@param 	aIsSel 	
 */
- (void)setLinkManSingle:(CWALinkManVO *)aLinkMan
               WithIsSel:(BOOL)aIsSel;


/*!
 	@method
 	@abstract	单选的样式
 	@discussion
 	@param 	style
 	@param 	reuseIdentifier 	
 	@param 	aSelectImage 	选中时的图片
 	@param 	aDeSelectImage 	高亮的图片
 	@result	返回值不释放
 */
- (id)initWithStyleSingle:(UITableViewCellStyle)style
      WithReuseIdentifier:(NSString *)reuseIdentifier
          WithSelectImage:(UIImage *)aSelectImage
        WithDeSelectImage:(UIImage *)aDeSelectImage;


- (void)reSetLableFrame;
@end
