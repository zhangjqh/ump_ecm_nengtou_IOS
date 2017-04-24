//
//  WADrawingBoardView.h
//  testInkBrush1
//
//  Created by fan hanning on 13-3-15.
//
//

#import <UIKit/UIKit.h>
#import "DrawingBoardDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface CWADrawingBoardView : UIView
<UIImagePickerControllerDelegate,UINavigationControllerDelegate> {
	NSMutableArray* arrayStrokes;
	NSMutableArray* arrayAbandonedStrokes;
	UIColor* currentColor;
	float currentSize;
	UIImage* pickedImage;
	UIImage* screenImage;
	
	IBOutlet UIToolbar* toolBar;
	
	
//	UIActivityIndicatorView* activityIndicator;
	
	NSArray* permissions;
}

@property(nonatomic,retain)NSObject<DrawingBoardDelegate> *delagate;
@property (retain) UIImage* pickedImage;
@property (retain) UIImage* screenImage;
@property (retain) NSMutableArray* arrayStrokes;
@property (retain) NSMutableArray* arrayAbandonedStrokes;
@property (retain) UIColor* currentColor;
@property float currentSize;

@property (nonatomic,retain) IBOutlet UIToolbar* toolBar;

@property (assign) id owner;

-(void) viewJustLoaded;

//返回上一笔
-(IBAction) undo;
//撤销返回上一笔
-(IBAction) redo;
//清空
-(IBAction) clearCanvas;
//保存图片
-(IBAction) savePic;

- (void)drawArrayStrokes;
@end
