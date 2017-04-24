//
//  WACTDownloadCell.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-22.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWACTDownloadCell : UITableViewCell
{
  UILabel *iLeftLabel;
  UILabel *iRightLabel;
  UIImageView *iTypeImg;
}

@property (retain, nonatomic) IBOutlet UILabel *iLeftLabel;
@property (retain, nonatomic) IBOutlet UILabel *iRightLabel;
@property (retain, nonatomic) IBOutlet UIImageView *iTypeImg;


- (void)setTypeImage:(NSString *)aTypeStr;
@end
