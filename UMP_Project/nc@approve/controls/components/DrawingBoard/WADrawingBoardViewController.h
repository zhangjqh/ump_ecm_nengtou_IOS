//
//  WADrawingBoardViewController.h
//  testInkBrush1
//
//  Created by fan hanning on 13-3-15.
//
//

#import <UIKit/UIKit.h>
#import "DrawingBoardDelegate.h"
@interface CWADrawingBoardViewController : UIViewController
@property(nonatomic,retain)NSObject<DrawingBoardDelegate> *delagate;
@end
