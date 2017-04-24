//
//  WAIOSSevenUIPickerView.m
//  MobileCRM
//
//  Created by crh on 14-1-13.
//  Copyright (c) 2014年 yonyou. All rights reserved.
//

#import "WAIOSSevenUIPickerView.h"
#import "WAUFTool.h"
@implementation CWAIOSSevenUIPickerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
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
