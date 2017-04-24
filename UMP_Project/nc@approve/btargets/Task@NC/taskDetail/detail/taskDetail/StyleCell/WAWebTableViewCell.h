//
//  WAWebTableViewCell.h
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-3-24.
//
//

#import <UIKit/UIKit.h>

@interface CWAWebTableViewCell : UITableViewCell
@property (nonatomic,retain)IBOutlet UIWebView *iWebView;
@property (nonatomic,retain)NSURL *iURL;

@end
