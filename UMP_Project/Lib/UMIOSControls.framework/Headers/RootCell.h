//
//  RootCell.h
//  UMIOSControls
//
//  Created by dingheng on 13-4-16.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootCell : UITableViewCell{
    
    UIImageView *  _mSelectedIndicator; //show the selected mark
    CGRect indicatorFrame;
}
@property(nonatomic,strong) NSString * unSelectImage;
@property(nonatomic,strong) NSString * selctImage;

@property(nonatomic,assign) int listview_divider_height; /*分割线高度*/
@property (nonatomic,strong) UIColor *listview_divider_color; /*分割线颜色*/
@property (nonatomic,strong) NSString *listview_divider_image; /*分割线背景图  设置了背景图，则分割线高和分割线颜色失效*/

@property (nonatomic,strong) NSIndexPath* listview_indexPath;
@end
