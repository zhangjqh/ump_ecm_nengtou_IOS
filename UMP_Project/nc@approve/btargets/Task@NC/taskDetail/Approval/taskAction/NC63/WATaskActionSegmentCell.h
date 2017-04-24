//  tionSegmentCell.h
//  SSTASK120521A
//
//  Created by evan on 14-6-12.
//
//

#import <UIKit/UIKit.h>

@interface CWATaskActionSegmentCell : UITableViewCell
{
  UILabel *iTaskActionName;
  UISegmentedControl *iTaskActionSegment;
}

/*!
 @property
 @abstract	iTaskActionName 名称
 */
@property (nonatomic,retain) IBOutlet UILabel *iTaskActionName;

/*!
 @property
 @abstract	iAttachSize	附件大小
 */
@property (nonatomic,retain) IBOutlet UISegmentedControl *iTaskActionSegment;


@end
