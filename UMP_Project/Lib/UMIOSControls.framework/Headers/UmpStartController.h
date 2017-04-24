//
//  UmpStartController.h
//  AnimationSamples
//
//  Created by dingheng on 13-5-16.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "UmpExperimentView.h"
typedef enum {
    kUmpMoveTypeLeft = 1, //从左
    kUmpMoveTypeRight,//从右
    kUmpMoveTypeTop,//从上
    kUmpMoveTypeBottom,//从下
    KUmpMoviewTypeJagged,//锯齿撕裂
    
} UmpMoveType;

/*
 *  开机 Default.png停留动画
 */

@interface UmpStartController : UIViewController{

     UIImageView * backImageView;//背景图片
     NSTimer * timer;
}
+ (UmpStartController *)sharedStartAnimation;
/*
 *  加载图片动画 
    type: 消失模式
    time: 图片停留时间
 */
-(void)show:(UmpMoveType)type time:(NSTimeInterval)duration;
@end
