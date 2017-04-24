//
//  WACheckboxStyle2Cell.h
//  WARowItenUtilTest
//
//  Created by Xiaopeng Li on 12-8-29.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CWACheckboxStyle2Cell : UITableViewCell
{

}

@property (retain, nonatomic) IBOutlet UILabel *iText;

@property (retain, nonatomic) IBOutlet UISwitch *iSwitch;

- (IBAction)valueChanged:(id)sender;


@end
