//
//  WATaskActionSegmentCell.m
//  SSTASK120521A
//
//  Created by evan on 14-6-12.
//
//

#import "WATaskActionSegmentCell.h"

@implementation CWATaskActionSegmentCell
@synthesize iTaskActionName;
@synthesize iTaskActionSegment;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
          }
    return self;
}

- (void)awakeFromNib
{
  [super awakeFromNib];
//  [self.iTaskActionSegment setBackgroundImage:[UIImage imageNamed:WA_TASKCENTER_SEGMENT_NOR] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//  [self.iTaskActionSegment setBackgroundImage:[UIImage imageNamed:WA_TASKCENTER_SEGMENT_SELECTED] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
