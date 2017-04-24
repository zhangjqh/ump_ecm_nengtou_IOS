/*!
 @header PullingRefreshTableView.h
 @abstract 刷新控件
 @author Berry  yu 
 @copyright ufida
 @version 1.00 2012/04/7 Creation 
 */
#import <UIKit/UIKit.h>

typedef enum 
{
  kPRStateNormal = 0,
  kPRStatePulling = 1,
  kPRStateLoading = 2,
  kPRStateHitTheEnd = 3
} PRState;

@interface LoadingView : UIView 
{
  UILabel *_stateLabel;
  UILabel *_dateLabel;
  UIImageView *_arrowView;
  UIActivityIndicatorView *_activityView;
  CALayer *_arrow;
  BOOL _loading;
}
@property (nonatomic,getter = isLoading) BOOL loading;    
@property (nonatomic,getter = isAtTop) BOOL atTop;
@property (nonatomic) PRState state;

- (id)initWithFrame:(CGRect)frame atTop:(BOOL)top;

@end

@protocol PullingRefreshTableViewDelegate;

@interface CWAPullingRefreshTableView : UITableView <UIScrollViewDelegate>
{
  LoadingView *_headerView;
  LoadingView *_footerView;
  UILabel *_msgLabel;
  BOOL _loading;
  BOOL _isFooterInAction;
  NSInteger _bottomRow;
  BOOL iISNormalStatus;
}
@property (assign,nonatomic) id <PullingRefreshTableViewDelegate> pullingDelegate;
@property (nonatomic) BOOL autoScrollToNextPage;
@property (nonatomic) BOOL reachedTheEnd;
@property (nonatomic,getter = isHeaderOnly) BOOL headerOnly;

- (id)initWithFrame:(CGRect)frame pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate;

- (id)initWithFrame:(CGRect)frame
    pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate
          withStyle:(UITableViewStyle)aStyle;

- (void)tableViewDidScroll:(UIScrollView *)scrollView;

- (void)tableViewDidEndDragging:(UIScrollView *)scrollView;

- (void)tableViewDidFinishedLoading;

- (void)tableViewDidFinishedLoadingWithMessage:(NSString *)msg;

- (void)launchRefreshing;

- (void)setNormalTableview:(BOOL)aIsPulling;

@end



@protocol PullingRefreshTableViewDelegate <NSObject>

@required
- (void)pullingTableViewDidStartRefreshing:(CWAPullingRefreshTableView *)tableView;

@optional
- (void)pullingTableViewDidStartLoading:(CWAPullingRefreshTableView *)tableView;

@end
