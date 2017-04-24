//  CWATaskActionCommonCell.h
//  SSTASK120521A
//
//  Created by evan on 14-6-25.
//
//

#import <UIKit/UIKit.h>

@interface CWATaskActionCommonCell : UITableViewCell
{
  UILabel *iKeyLabel;
  UILabel *iValueLabel;
  UIImageView *iNextViewImgView;
}

/*!
 @property
 @abstract	iKeyLabel 名称
 */
@property (nonatomic,retain) IBOutlet UILabel *iKeyLabel;

/*!
 @property
 @abstract	iKeyLabel 名称
 */
@property (nonatomic,retain) IBOutlet UILabel *iValueLabel;
/*!
 @property
 @abstract	iNextViewImgView 名称
 */
@property (nonatomic, retain)IBOutlet UIImageView *iNextViewImgView;


@end
