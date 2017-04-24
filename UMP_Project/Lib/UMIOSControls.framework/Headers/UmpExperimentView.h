//
//  UmpExperimentView.h
//  AnimationDemo
//
//  Created by dingheng on 13-7-18.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UmpExperimentView : UIView

@property (nonatomic,strong) UIImage *image;
@property (nonatomic,assign) int time;

-(void)showAnimation;
@end
