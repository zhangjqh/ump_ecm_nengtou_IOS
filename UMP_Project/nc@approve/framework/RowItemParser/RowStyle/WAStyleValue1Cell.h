//
//  WAStyleValue1Cell.h
//  WARowItenUtilTest
//
//  Created by Xiaopeng Li on 12-8-29.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWAStyleValue1Cell : UITableViewCell
{
 
}

@property (retain, nonatomic) IBOutlet UILabel *iKey;

@property (retain, nonatomic) IBOutlet UITextField *iValue;

- (IBAction)inputConfirm:(id)sender;

- (IBAction)editingChanged:(id)sender;

@end
