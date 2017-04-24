//
//  AnimationUtil.h
//  LessonAnimation
//
//  Created by dingh on 14/11/22.
//  Copyright (c) 2014年 Winann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimationUtil : NSObject

//渐隐渐消
+(CAAnimation *)alpha:(float)time fromAlpha:(float)fromAlpha toAlpha:(float)toAlpha repeatCount:(int)repeatCount style:(NSString *)style;

//移动
+(CAAnimation *)translate:(float)time fromX:(float)fromx toX:(float)tox fromY:(float)fromy toY:(float)toy repeatCount:(int)repeatCount  style:(NSString *)style;

//缩放
+(CAAnimation *)scale:(float)time fromWidth:(float)fromwidth toWidth:(float)towidth fromHeight:(float)fromheight toHeight:(float)toheight repeatCount:(int)repeatCount style:(NSString *)style;

//旋转
+(CAAnimation *)rotation:(float)time fromDegrees:(float)fromdegrees toDegrees:(float)todegrees repeatCount:(int)repeatCount style:(NSString *)style;


//颜色变化
+(CAAnimation *)backgroudColor:(float)time fromColor:(UIColor *)fromcolor toColor:(UIColor *)tocolor repeatCount:(int)repeatCount style:(NSString *)style;


//组合动画
+(CAAnimation *)groupAnimation:(NSArray *)animationAry  repeatCount:(int)repeatCount;


@end
