//  CWAFreeItemStyle1Cell.m
//  WARowItemUtilTest
//
//  Created by Xiaopeng Li on 12-9-5.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import "WAFreeItemStyle1Cell.h"

@implementation CWAFreeItemStyle1Cell
@synthesize iTitle;
@synthesize iScrollView;

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
