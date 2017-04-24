//
//  WACheckboxStyle1Cell.m
//  WARowItenUtilTest
//
//  Created by Xiaopeng Li on 12-8-29.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import "WACheckboxStyle1Cell.h"

@implementation CWACheckboxStyle1Cell

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
