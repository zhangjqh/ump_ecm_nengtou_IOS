//
//  UmpMenuView.h
//  NAMenu
//
//  Created by dingheng on 13-5-15.
//
//

#import <UIKit/UIKit.h>

/*
 * 九宫格
 * 根据 行数*列数 自动匹配button大小
 */
@interface UmpMenuView : UIView

@property (nonatomic, strong) NSMutableArray *itemViews;//button数组
@property (nonatomic, assign) NSUInteger columnCountPortrait; // 列数
@property (nonatomic, assign) NSUInteger columnCountLandscape; // 行数
/**
 *	@brief	点击 触发
 *	@param 	control 操作对象
 
 action 触发方法
 @selector(clickAction:)
 传递参数:[NSNumber numberWithInt:sender.tag] //button.tag
 
 */
-(void)addTarget:(id)control clickAction:(SEL)clickAction;
@end
