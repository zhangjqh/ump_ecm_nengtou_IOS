//
//  WAIOSSevenUIDatePiker.m
//  MobileCRM
//
//  Created by crh on 14-1-22.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WAIOSSevenUIDatePiker.h"
#import "WAUFTool.h"
@implementation CWAIOSSevenUIDatePiker

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = WACOLOR(227, 227, 227);
    }
    return self;
}

- (id)init
{
  self = [super init];
  if (self)
  {
    self.backgroundColor = WACOLOR(227, 227, 227);
  }
  return self;
}

-(void)awakeFromNib
{
  [super awakeFromNib];
  self.backgroundColor = WACOLOR(227, 227, 227);
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
