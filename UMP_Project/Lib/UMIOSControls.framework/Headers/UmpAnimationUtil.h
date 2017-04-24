//
//  UmpAnimationUtil.h
//  UMIOSCommon
//
//  Created by dingheng on 13-4-26.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface UmpAnimationUtil : NSObject

/*
 *  页面过渡动画 
 
 *       //动画使用
 
 *       [id.navigationController pushViewController:id animated:NO];//屏蔽系统动画
 *       CATransition * animation =  [UmpAnimationUtil getAnimation:type subtype:subtype];
 *       [id.navigationController.view.layer addAnimation:animation forKey:nil];//添加自定义动画
 
 type://动画效果
 
 case 1: kCATransitionFade;//淡淡消失
 case 2: kCATransitionPush;//推挤
 case 3: kCATransitionReveal;//揭开
 case 4: kCATransitionMoveIn;//覆盖
 case 5: @"cube";//立方体
 case 6: @"suckEffect";//吸收
 case 7: @"oglFlip";//翻转
 case 8: @"rippleEffect";//波纹
 case 9: @"pageCurl";//上翻页
 case 10: @"pageUnCurl";//下翻页
 case 11: @"cameraIrisHollowOpen";//相机开
 case 12: @"cameraIrisHollowClose";//相机关
 
 subtype://动画执行方式 
 
 case 0: kCATransitionFromLeft;//从左
 case 1: kCATransitionFromBottom;//从下
 case 2: kCATransitionFromRight;//从右
 case 3: kCATransitionFromTop;//从上


 
 */

+(CATransition *)getAnimation:(NSInteger)type subtype:(NSInteger)subtype duration:(CFTimeInterval)duration;

@end
