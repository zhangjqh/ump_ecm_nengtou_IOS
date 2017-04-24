//
//  UMPListView.h
//  UMPListController
//
//  Created by heng ding on 13-3-27.
//  Copyright (c) 2013年 Yonyou. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "EGORefreshTableHeaderView.h"
#import "UMPListBaseController.h"

@protocol UMPListViewDelegate;

@interface UMPListViewContent : UITableView <EGORefreshTableHeaderDelegate> {
@private
    EGORefreshTableHeaderView *refreshHeaderViewTop;
    EGORefreshTableHeaderView *refreshHeaderViewBottom;
    
    int  _iReloadingType; //0:not reloading,1:下拉reloading，2:上拉reloading
    BOOL _topLoad;//下拉加载
    BOOL _bottomLoad;//上拉加载
}

@property(nonatomic, strong) NSString   *backgroundImage;
@property(nonatomic,assign) NSObject<UMPListViewDelegate> * RefreshDelegate;
@property(nonatomic,assign) BOOL topLoad;//下拉加载
@property(nonatomic,assign) BOOL bottomLoad;//上拉加载

@property (nonatomic,assign) BOOL alternatingRow;
@property (nonatomic,strong) NSString *listview_oddrow_image; /*奇数行背景图*/
@property (nonatomic,strong) NSString *listview_evenrow_image; /*偶数行背景图*/

@property (nonatomic,strong) UIColor *listview_oddrow_color;  /*奇数行背景色*/
@property (nonatomic,strong) UIColor *listview_evenrow_color;  /*偶数行背景色*/

@property (nonatomic,strong) UIColor *listview_rowtouched_bgColor;  /*行点击背景色*/
@property (nonatomic,strong) NSString *listview_rowtouched_bgImage;  /*行点击背景图*/

@property(nonatomic,assign) int listview_divider_height; /*分割线高度*/
@property (nonatomic,strong) UIColor *listview_divider_color; /*分割线颜色*/
@property (nonatomic,strong) NSString *listview_divider_image; /*分割线背景图  设置了背景图，则分割线高和分割线颜色失效*/
@property (nonatomic,strong) NSString* adaptiveheight;

- (id)initWithStyle:(UITableViewStyle)style;
//
// scrollViewDidScroll:
//
// 向下滚动scrollview的时候，判断是否到底部，如果到底部，加载更多的数据
//
// Parameters:
//    scrollView - 滚动条
//
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;

//
// scrollViewDidEndDragging:
//
// 松手停止拖放的时候触发
//
// Parameters:
//    scrollView - 滚动条
//    decelerate - ---
//
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;


@end



