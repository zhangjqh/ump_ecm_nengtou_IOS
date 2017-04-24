/*!
 @header	WAContactHeadVC.h
 @abstract	联系人componet
 @discussion	
 @author	rui.yang 
 @copyright ufida	
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import <UIKit/UIKit.h>

/*!
 @enum
 @abstract 联系人头类型
 @constant EContactHeadNone 
 @constant EContactHeadComp  
 @constant EContactHeadName        
 */
typedef enum
{
    EContactHeadNone,
    EContactHeadComp,//公司
    EContactHeadName //名称
}TWAContactHeadType;

@interface CWAContactHeadVC : UIViewController
{
    IBOutlet UILabel * iContactName;
    IBOutlet UIImageView * iContactHeadImg;
    IBOutlet UILabel * iContactJob;
    IBOutlet UILabel * iContactDept;
    IBOutlet UILabel * iContactCorp;
}

/*!
 @property
 @abstract 联系人姓名
 */
@property(nonatomic,retain)UILabel * iContactName;

/*!
 @property
 @abstract 联系人头像
 */
@property(nonatomic,retain)UIImageView * iContactHeadImg;

/*!
 @property
 @abstract 联系人职务
 */
@property(nonatomic,retain)UILabel * iContactJob;

/*!
 @property
 @abstract 联系人部门
 */
@property(nonatomic,retain)UILabel * iContactDept;

/*!
 @property
 @abstract 联系人公司
 */
@property(nonatomic,retain)UILabel * iContactCorp;

/*!
 @method
 @abstract 初始化方法
 */
-(id)init:(TWAContactHeadType)aContactHeadType;


@end
