//
//  WACTDownloadCell.m
//  CollaborationTask
//
//  Created by Lemon on 13-4-22.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WACTDownloadCell.h"
#import "WAStringUtil.h"


@implementation CWACTDownloadCell
@synthesize iLeftLabel;
@synthesize iRightLabel;
@synthesize iTypeImg;

#define WA_CTIMAGENAME_DEFAULT @"default_ico"
#define WA_CTSTRING_EMPTY @""
#define WA_CTIMAGENAME_END1 @"_ico"
#define WA_CTIMAGENAME_END2 @"_icon"

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTypeImage:(NSString *)aTypeStr
{
  NSString *typeStr = [CWAStringUtil lowercaseWAString:aTypeStr];
  NSString *imageNameStr = WA_CTIMAGENAME_DEFAULT;
  if (typeStr && ![typeStr isEqualToString:WA_CTSTRING_EMPTY])
  {
    imageNameStr = [typeStr stringByAppendingString:WA_CTIMAGENAME_END1];
  }
  UIImage *aImage = [UIImage imageNamed:imageNameStr];
  if (!aImage)
  {
    aImage = [UIImage imageNamed:[typeStr stringByAppendingString:WA_CTIMAGENAME_END2]];
  }
  if (!aImage)
  {
    aImage = [UIImage imageNamed:WA_CTIMAGENAME_DEFAULT];
  }
  self.iTypeImg.image = aImage;
}
@end
