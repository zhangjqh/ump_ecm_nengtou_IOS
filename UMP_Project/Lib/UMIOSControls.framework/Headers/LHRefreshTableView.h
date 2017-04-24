//
//  LHRefreshTableView.h
//  test
//
//  Created by helly on 14-2-20.
//  Copyright (c) 2014年 helly. All rights reserved.
//

#import "LHTableView.h"
#import "LHTableViewCell.h"
//#import "MJRefreshHeaderView.h"
@class MJRefreshHeaderView;

@protocol LHRefreshTableViewDelegate<NSObject>

- (NSMutableArray *)getMoreData;
- (NSMutableArray *)refreshData;

@end

typedef enum {
    LHFootLoadingMoreStyle,
    LHFootCompleteStyle,
    LHFootNoneStyle
}LHLoadMoreFootStyle;

@interface LHRefreshTableView : LHTableView<UIScrollViewDelegate>

@property (nonatomic, strong) MJRefreshHeaderView *refreshHeaderView;
@property (nonatomic, assign) BOOL shouldAutoGetMoreData;
@property (nonatomic, assign) BOOL hasNoDataToGet;
@property (nonatomic, assign) BOOL shouldAutoRefreshData;
@property (nonatomic, assign) BOOL gettingMoreData;
@property (nonatomic, assign) BOOL gettingRefreshData;
@property(nonatomic,strong) UIView *loadMoreLoadingView;//正在loading的view
@property(nonatomic,strong) UIView *loadMoreCompleteView;//load完成的view

@property(nonatomic,assign)NSInteger startLine;//开始请求的索引

@property(nonatomic,assign)NSInteger headCount;//已有的section


//下拉 上拉事件 在getproperty中赋值
@property(nonatomic,strong)NSString *onDownRefersh;
@property(nonatomic,strong)NSString *onUpRefersh;

@property(nonatomic,assign) id<LHRefreshTableViewDelegate> delegateGetData;



- (void)showFooter:(LHLoadMoreFootStyle)showStyle;
- (void)doneLoadingTableViewData;

- (id)initWithFrame:(CGRect)frame andShouldAutoRefreshData:(BOOL)shouldAutoRefreshData andShouldAutoGetMoreData:(BOOL)shouldAutoGetMoreData;

@end
