/*!
 @header	WAContactCell.h
 @abstract	联系人基类cell
 @discussion	
 @author	rui.yang 
 @copyright ufida	
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import <UIKit/UIKit.h>

@interface CWAContactCell : UITableViewCell
{
  IBOutlet UILabel * iContactName;
  IBOutlet UILabel * iContactValue;
  IBOutlet UIImageView * iContactIcon;
  IBOutlet UIImageView * iContactMobileIcon;
}

/*!
 @property
 @abstract 联系方式名称
 */
@property(nonatomic,retain)UILabel * iContactName;

/*!
 @property
 @abstract 联系方式值
 */
@property(nonatomic,retain)UILabel * iContactValue;

/*!
 @property
 @abstract 联系方式图标
 */
@property(nonatomic,retain)UIImageView * iContactIcon;

/*!
 @property
 @abstract 联系方式电话的图标
 */
@property(nonatomic,retain)UIImageView * iContactMobileIcon;

@end
