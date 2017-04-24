//
//  DrawingBoardDelegate.h
//  testInkBrush1
//
//  Created by fan hanning on 13-3-18.
//
//

#import <Foundation/Foundation.h>

@protocol DrawingBoardDelegate <NSObject>

@required
//关闭页面
-(void)cancelViewController;
//保存图片
-(void)saveCurrentScreenImage:(UIImage *)image;

@end
