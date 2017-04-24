/*stract 任务中心单行控件
*/

#import "WATaskListContentCell.h"

@implementation CWATaskListContentCell

@synthesize iName;
@synthesize iTime;
@synthesize iIcon;
@synthesize iStatusLabel;
@synthesize iThemeTitle;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }

    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}
@end
