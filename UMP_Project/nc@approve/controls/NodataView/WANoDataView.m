//  WANoDataView.m
//  MobileCRM
//
//  Created by crh on 14-4-21.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WANoDataView.h"

@implementation CWANoDataView
@synthesize iNodataLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
      [self setNodataValue];
    }
    return self;
}
-(void)awakeFromNib
{
  [super awakeFromNib];
  [self setNodataValue];
}


-(void)setNodataValue
{
  [self.iNodataLabel setText:NSLocalizedStringFromTable(@"noData", @"control_NoDataView", nil)];
}
@end
