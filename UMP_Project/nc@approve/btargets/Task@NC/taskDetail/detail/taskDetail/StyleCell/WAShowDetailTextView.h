//
//  WAShowDetailTextView.h
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-5-16.
//
//

#import <UIKit/UIKit.h>

@interface CWAShowDetailTextView : UIView
{
	UITextView *iTextView;
	UIWindow *iPreWindow;
	UIWindow *iShowWindow;
}

- (id)initWithText:(NSString *)aText
		 withShowFrame:(CGRect)aShowFrame
				 withFrame:(CGRect)aFrame;

- (void)show;

@end
