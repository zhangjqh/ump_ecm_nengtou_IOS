
#import <UIKit/UIKit.h>

@interface CWAMenuItemView : UIView
{
  IBOutlet UILabel *iLabel;
  IBOutlet UIButton *iButton;
	NSInteger tag;
}
@property (retain, nonatomic) IBOutlet UILabel *iLabel;
@property (retain, nonatomic) IBOutlet UIButton *iButton;

/**
 * Supports UIButton-style adding targets
 */
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

@end
