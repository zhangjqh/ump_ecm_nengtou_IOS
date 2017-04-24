//
//  WAWebTableViewCell.m
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-3-24.
//
//

#import "WAWebTableViewCell.h"

@implementation CWAWebTableViewCell

@synthesize iWebView;
@synthesize iURL;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)drawRect:(CGRect)rect
{
	[super drawRect:rect];
     NSURLRequest *request = [[NSURLRequest alloc] initWithURL:self.iURL];
    [iWebView loadRequest:request];
}

@end
