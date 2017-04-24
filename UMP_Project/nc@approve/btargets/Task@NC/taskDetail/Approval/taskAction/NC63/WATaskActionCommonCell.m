//  WATaskActionCommonCell
//  SSTASK120521A
//
//  Created by evan on 14-6-25.
//
//

#import "WATaskActionCommonCell.h"

@implementation CWATaskActionCommonCell
@synthesize iKeyLabel;
@synthesize iValueLabel;
@synthesize iNextViewImgView;

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

@end
