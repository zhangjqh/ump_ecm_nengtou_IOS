/*!
 @header MessageContentCell.h
 @abstract 任务中心单行控件  主要用来控制展示上面的元素
 @author huych
 @copyright ufida
 @version 1.00 2012/06/7 Creation 
 */
#import <UIKit/UIKit.h>

@interface CWATaskListContentCell : UITableViewCell
{
    IBOutlet UILabel *iThemeTitle;
    IBOutlet UILabel *iName;
    IBOutlet UILabel *iTime;
    IBOutlet UIImageView *iIcon;
    IBOutlet UILabel *iStatusLabel;

}

/*!
 @property
 @abstract iThemeTitle 标题ren
 */
@property(nonatomic,retain)IBOutlet UILabel *iThemeTitle;

/*!
 @property
 @abstract iName 名称label
 */
@property(nonatomic,retain)IBOutlet UILabel *iName;

/*!
 @property
 @abstract iTime 时间label
 */
@property(nonatomic,retain)IBOutlet UILabel *iTime;

/*!
 @property
 @abstract iIcon 图标容器
 */
@property(nonatomic,retain)IBOutlet UIImageView *iIcon;

/*!
 @property
 @abstract iStatusLabel 状态label
 */
@property(nonatomic,retain)IBOutlet UILabel *iStatusLabel;
@end
