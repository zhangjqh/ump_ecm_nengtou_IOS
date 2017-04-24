//
//  WAStyleValue3Cell.h
//  WARowItemUtilTest
//
//  Created by Xiaopeng Li on 12-9-3.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CWAStyleValue3Cell : UITableViewCell<UITextViewDelegate>

@property (retain, nonatomic) IBOutlet UITextView *iTextView;

-(void)registDelegate;


@end
