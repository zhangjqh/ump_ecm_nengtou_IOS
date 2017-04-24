//
//  WAStyleValue3Cell.m
//  WARowItemUtilTest
//
//  Created by Xiaopeng Li on 12-9-3.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import "WAStyleValue3Cell.h"

@implementation CWAStyleValue3Cell
@synthesize iTextView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) 
    {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)registDelegate
{
  iTextView.delegate = self;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString*)text 
{ 
  if ([text isEqualToString:@"\n"]) { 
    [textView resignFirstResponder];  
    return NO; 
  } 
  return YES; 
} 

@end
