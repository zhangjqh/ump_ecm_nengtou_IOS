/*
 @CWAContactCell
 @abstract	联系人基类cell
 @discussion	
 @author	rui.yang 
 @copyright ufida	
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import "WAContactCell.h"

@implementation CWAContactCell
@synthesize iContactName;
@synthesize iContactValue;
@synthesize iContactIcon;
@synthesize iContactMobileIcon;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{ 
  self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
  if (self) 
  {
  }
  return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
}

@end
