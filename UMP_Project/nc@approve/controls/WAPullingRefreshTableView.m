/*!
 @class
 @abstract 刷新控件
 */
#import "WAPullingRefreshTableView.h"
#import <QuartzCore/QuartzCore.h>
#import "WAUFTool.h"


#define kPROffsetY 60.f
#define kPRMargin 5.f
#define kPRLabelHeight 20.f
#define kPRLabelWidth 100.f
#define kPRArrowWidth 20.f
#define kPRArrowHeight 40.f
#define kTextColor [UIColor colorWithRed:87.0/255.0 green:108.0/255.0 blue:137.0/ 255.0 alpha:1.0]
#define kPRAnimationDuration .18f
#define kTextFont [UIFont systemFontOfSize:12.f]
#define kBgColor [UIColor colorWithRed:226.0/255.0 green:231.0/255.0 blue:237.0/255.0 alpha:1.0]
static NSString *const UPIMG = @"pull_blueArrow_up";
static NSString *const DOWNIMG = @"pull_blueArrow_Down";

#define kPROffsetY_IOS7 68.f
#define kPRMargin_IOS7 48.f
#define kPRLabelHeight_IOS7 24.f
#define kPRLabelWidth_IOS7 192.f
#define kPRArrowWidth_IOS7 32.f
#define kPRArrowHeight_IOS7 32.f
#define kTextColor_IOS7 [UIColor colorWithRed:143.0/255.0 green:143.0/255.0 blue:143.0/ 255.0 alpha:1.0]
#define kTextFont_IOS7 [UIFont fontWithName:@"HiraKakuProN-W3" size:12.0f]
#define kBgColor_IOS7 [UIColor colorWithRed:240.0/255.0 green:240.0/255.0 blue:240.0/255.0 alpha:1.0]
static NSString *const UPIMG_IOS7 = @"pull_Arrow_up";
static NSString *const DOWNIMG_IOS7 = @"pull_Arrow_Down";

@interface LoadingView ()
- (void)updateRefreshDate :(NSDate *)date;
- (void)layouts;
@end

@implementation LoadingView
@synthesize atTop = _atTop;
@synthesize state = _state;
@synthesize loading = _loading;

//Default is at top
- (id)initWithFrame:(CGRect)frame atTop:(BOOL)top
{
  self = [super initWithFrame:frame];
  if (self)
  {
    BOOL isIOS7 = WA_CURENT_OS_V >= 7.0;
    self.atTop = top;
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    UIFont *ft;
    UIColor *textColor;
    NSString *downImg;
     NSString *upImg;
    if (isIOS7)
    {
      self.backgroundColor = kBgColor_IOS7;
      ft = kTextFont_IOS7;
      textColor = kTextColor_IOS7;
      downImg =DOWNIMG_IOS7;
      upImg = UPIMG_IOS7;
    }
    else
    {
      self.backgroundColor = kBgColor;
      ft = kTextFont;
      textColor = kTextColor;
      downImg = DOWNIMG;
      upImg = UPIMG;
    }
	  
    _stateLabel = [[UILabel alloc] init ];
    _stateLabel.font = ft;
    _stateLabel.textColor = textColor;
    
    _stateLabel.textAlignment = NSTextAlignmentCenter;
    _stateLabel.backgroundColor = [UIColor clearColor];
    if (!isIOS7)
    {
      _stateLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    
    //下拉刷新
    _stateLabel.text = NSLocalizedStringFromTable(@"PullToRefresh", @"component_PullingRefreshTV", nil);
    [self addSubview:_stateLabel];
    
    _dateLabel = [[UILabel alloc] init ];
    _dateLabel.font = ft;
    _dateLabel.textColor = textColor;
    _dateLabel.textAlignment = NSTextAlignmentCenter;
    _dateLabel.backgroundColor = [UIColor clearColor];
    if (!isIOS7)
    {
      _dateLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    }
    
    // 最后更新
    _dateLabel.text = NSLocalizedStringFromTable(@"LastRefresh", @"component_PullingRefreshTV", nil);
    [self addSubview:_dateLabel];
    
    _arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 20, 20) ];
    
    _arrow = [CALayer layer];
    _arrow.frame = CGRectMake(0, 0, 20, 20);
    _arrow.contentsGravity = kCAGravityResizeAspect;
    NSString *img;
    if (top) 
    {
      img = downImg;
    }
    else
    {
      img = upImg;
    }
    _arrow.contents = (id)[UIImage imageWithCGImage:
                           [UIImage imageNamed:img].CGImage scale:1
                                        orientation:UIImageOrientationDown].CGImage;
    [self.layer addSublayer:_arrow];
    
    _activityView = [[UIActivityIndicatorView alloc]
                     initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    [self addSubview:_activityView];
    
    [self layouts];
    
    
  }
  return self;
}

- (void)layouts
{
  CGSize size = self.frame.size;
  CGRect stateFrame,dateFrame,arrowFrame;
  CGFloat sysversion = WA_CURENT_OS_V;
  BOOL isIOS7 = sysversion >= 7.0;
  
  //label:显示刷新时间
  
  CGFloat viewHeight;//header 或者footer View的高度
  CGFloat lableHeight;//label的宽度
  CGFloat img_frameX;//图片-frame-x;x坐标
  CGFloat lable_frameX;//label-frame-x; x
  CGFloat lable_frameWidth;//label-frmae-width; 宽
  CGFloat arrowwidth;//箭头宽度（刷新或加载图片 imageview的宽度）
  CGFloat arrowheigth;//箭头高度（刷新或加载图片 imageview的高度）
  NSString *downImg;//刷新图片
  NSString *upImg;//加载图片
  
  if (isIOS7)
  {
    viewHeight = kPROffsetY_IOS7;
    lableHeight= kPRLabelHeight_IOS7;
    img_frameX = kPRMargin_IOS7;
    lable_frameWidth =kPRLabelWidth_IOS7;
    lable_frameX = kPRMargin_IOS7 +kPRArrowWidth_IOS7;
    arrowwidth = kPRArrowWidth_IOS7;
    arrowheigth = kPRArrowHeight_IOS7;
    downImg = DOWNIMG_IOS7;
    upImg = UPIMG_IOS7;
  }
  else
  {
    viewHeight = kPROffsetY;
    lableHeight= kPRLabelHeight;
    img_frameX = 4*kPRMargin;
    lable_frameWidth = size.width;
    lable_frameX = 0;
    arrowwidth = kPRArrowWidth;
    arrowheigth = kPRArrowHeight;
    downImg = DOWNIMG;
    upImg = UPIMG;
  }
  
  float y,margin;
  margin = (viewHeight - 2*lableHeight)/2;
  if (self.isAtTop)
  {
    y = size.height - margin - lableHeight;
    dateFrame = CGRectMake(lable_frameX,y,lable_frameWidth,lableHeight);
    
    y = y - lableHeight;
    stateFrame = CGRectMake(lable_frameX, y, lable_frameWidth, lableHeight);
    
    if (isIOS7)
    {
      margin = (viewHeight - arrowheigth)/2;
    }
    y = size.height - margin - arrowheigth;
    arrowFrame = CGRectMake(img_frameX, y, arrowwidth, arrowheigth);
    
    UIImage *arrow = [UIImage imageNamed:downImg];
    _arrow.contents = (id)arrow.CGImage;
    
  }
  else
  {    //at bottom
    y = margin;
    stateFrame = CGRectMake(lable_frameX, y, lable_frameWidth, lableHeight );
    
    y = y + lableHeight;
    dateFrame = CGRectMake(lable_frameX, y, lable_frameWidth, lableHeight);
    
    if (isIOS7)
    {
      margin = (viewHeight - arrowheigth)/2;
    }
    y = margin;
    arrowFrame = CGRectMake(img_frameX, y, arrowwidth,arrowheigth);
    
    UIImage *arrow = [UIImage imageNamed:upImg];
    _arrow.contents = (id)arrow.CGImage;
    // 上拉加载
    _stateLabel.text = NSLocalizedStringFromTable(@"ScrollUpToLoad", @"component_PullingRefreshTV", nil);
  }
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  stateFrame.origin.x = maxWidth/2 - stateFrame.size.width/2;
  _stateLabel.frame = stateFrame;
  dateFrame.origin.x = maxWidth/2 - dateFrame.size.width/2;
  _dateLabel.frame = dateFrame;
  _arrowView.frame = arrowFrame;
  _activityView.center = _arrowView.center;
  _arrow.frame = arrowFrame;
  _arrow.transform = CATransform3DIdentity;
}

- (void)setState:(PRState)state
{
  if (_state != state)
  {
    _state = state;
    if (_state == kPRStateLoading)
    {
      _arrow.hidden = YES;
      _activityView.hidden = NO;
      [_activityView startAnimating];
      
      _loading = YES;
      if (self.isAtTop)
      {
        // 正在刷新
        _stateLabel.text = NSLocalizedStringFromTable(@"Refreshing", @"component_PullingRefreshTV", nil);
      } else
      {
        // 正在加载
        _stateLabel.text = NSLocalizedStringFromTable(@"Loading", @"component_PullingRefreshTV", nil);
      }
      
    }
    else if (_state == kPRStatePulling && !_loading)
    {
      _arrow.hidden = NO;
      _activityView.hidden = YES;
      [_activityView stopAnimating];
      
      [CATransaction begin];
      [CATransaction setAnimationDuration:kPRAnimationDuration];
      _arrow.transform = CATransform3DMakeRotation(M_PI, 0, 0, 1);
      [CATransaction commit];
      
      if (self.isAtTop)
      {
        // 释放刷新
        _stateLabel.text = NSLocalizedStringFromTable(@"ReleaseToRefresh", @"component_PullingRefreshTV", nil);
      } else {
        // 释放加载更多
        _stateLabel.text = NSLocalizedStringFromTable(@"ReleaseToLoad", @"component_PullingRefreshTV", nil);
      }
      
    }
    else if (_state == kPRStateNormal && !_loading)
    {    //kPRStateNormal
      
      _arrow.hidden = NO;
      _activityView.hidden = YES;
      [_activityView stopAnimating];
      
      [CATransaction begin];
      [CATransaction setAnimationDuration:kPRAnimationDuration];
      _arrow.transform = CATransform3DIdentity;
      [CATransaction commit];
      
      if (self.isAtTop)
      {
        // 下拉刷新
        _stateLabel.text = NSLocalizedStringFromTable(@"PullToRefresh", @"component_PullingRefreshTV", nil);
      } else
      {
        // 上拉加载更多
        _stateLabel.text = NSLocalizedStringFromTable(@"ScrollUpToLoadMore", @"component_PullingRefreshTV", nil);
      }
    }
    else if (_state == kPRStateHitTheEnd)
    {
      if (!self.isAtTop)
      {    //footer
        _arrow.hidden = YES;
        
        // 已为最新数据
        _stateLabel.text = NSLocalizedStringFromTable(@"LatestData", @"component_PullingRefreshTV", nil);
      }
      
    }
  }
}

- (void)setLoading:(BOOL)loading
{
  if (_loading == YES && loading == NO)
  {
    [self updateRefreshDate:[NSDate date]];
  }
  _loading = loading;
}

- (void)updateRefreshDate :(NSDate *)date
{
  NSDateFormatter *df = [[NSDateFormatter alloc] init];
  df.dateFormat = @"yyyy-MM-dd HH:mm:ss";
  NSString *dateString = [df stringFromDate:date];
  [NSString stringWithFormat:@"%@",date];
  // 最后更新
  _dateLabel.text = [NSString stringWithFormat:@"%@: %@",
                     NSLocalizedStringFromTable(@"LastRefresh", @"component_PullingRefreshTV", nil),
                     dateString];

}

@end


@interface CWAPullingRefreshTableView ()
- (void)scrollToNextPage;

@end

@implementation CWAPullingRefreshTableView
@synthesize pullingDelegate = _pullingDelegate;
@synthesize autoScrollToNextPage;
@synthesize reachedTheEnd = _reachedTheEnd;
@synthesize headerOnly = _headerOnly;


//根据fram，style来初始化
- (id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
  self = [super initWithFrame:frame style:style];
  if (self)
  {
    // 初始化代码
    iISNormalStatus = NO;
    CGRect rect = CGRectMake(0, 0 - frame.size.height, frame.size.width,
                             frame.size.height);
    _headerView = [[LoadingView alloc] initWithFrame:rect atTop:YES];
    _headerView.atTop = YES;
    [self addSubview:_headerView];
    
    rect = CGRectMake(0, frame.size.height, frame.size.width,
                      frame.size.height);
    _footerView = [[LoadingView alloc] initWithFrame:rect atTop:NO];
    _footerView.atTop = NO;
    [self addSubview:_footerView];
    
    [self addObserver:self forKeyPath:@"contentSize"
              options:NSKeyValueObservingOptionNew context:nil];
  }
  return self;
}

//根据一个nib文件来初始化
- (id)initWithCoder:(NSCoder *)aDecoder
{
  if ((self = [super initWithCoder:aDecoder]))
  {
    iISNormalStatus = NO;
    CGRect rect = CGRectMake(0, 0 - self.frame.size.height,
                             self.frame.size.width, self.frame.size.height);
    _headerView = [[LoadingView alloc] initWithFrame:rect atTop:YES];
    _headerView.atTop = YES;
    [self addSubview:_headerView];
    
    rect = CGRectMake(0, self.frame.size.height,
                      self.frame.size.width, self.frame.size.height);
    _footerView = [[LoadingView alloc] initWithFrame:rect atTop:NO];
    _footerView.atTop = NO;
    [self addSubview:_footerView];
    
    [self addObserver:self forKeyPath:@"contentSize"
              options:NSKeyValueObservingOptionNew context:nil];
  }
  return self;
}

- (id)initWithFrame:(CGRect)frame
    pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate
{
  self = [self initWithFrame:frame style:UITableViewStylePlain];
  if (self)
  {
    self.pullingDelegate = aPullingDelegate;
  }
  return self;
}


- (id)initWithFrame:(CGRect)frame
    pullingDelegate:(id<PullingRefreshTableViewDelegate>)aPullingDelegate
          withStyle:(UITableViewStyle)aStyle
{
  self = [self initWithFrame:frame style:aStyle];
  if (self)
  {
    self.pullingDelegate = aPullingDelegate;
  }
  return self;
}


- (void)setNormalTableview:(BOOL)aIsPulling
{
  _headerView.hidden = aIsPulling;
  _footerView.hidden = aIsPulling;
  _msgLabel.hidden = aIsPulling;
  iISNormalStatus = aIsPulling;
}

- (void)setReachedTheEnd:(BOOL)reachedTheEnd
{
  _reachedTheEnd = reachedTheEnd;
  if (_reachedTheEnd)
  {
    _footerView.state = kPRStateHitTheEnd;
  } else
  {
    _footerView.state = kPRStateNormal;
  }
}

- (void)setHeaderOnly:(BOOL)headerOnly
{
  _headerOnly = headerOnly;
  _footerView.hidden = _headerOnly;
}

//重新调整tableview
- (void)scrollToNextPage
{
  float h = self.frame.size.height;
  float y = self.contentOffset.y + h;
  y = y > self.contentSize.height ? self.contentSize.height : y;
  [UIView animateWithDuration:.7f
                        delay:0
                      options:UIViewAnimationOptionCurveEaseOut
                   animations:^{
                     self.contentOffset = CGPointMake(0, y);}
                   completion:^(BOOL bl){
                   }];
}

#pragma mark - tableview 滚动函数
- (void)tableViewDidScroll:(UIScrollView *)scrollView
{
  if (_loading)
  {
    return;
  }
  
  CGPoint offset = scrollView.contentOffset;
  CGSize size = scrollView.frame.size;
  CGSize contentSize = scrollView.contentSize;
  
  float yMargin = offset.y + size.height -
  (contentSize.height < size.height ?size.height: contentSize.height);
  if (offset.y < -kPROffsetY)
  {
    //完全展示
    _headerView.state = kPRStatePulling;
  }
  else if (offset.y > -kPROffsetY && offset.y < 0)
  {
    //部分展示
    _headerView.state = kPRStateNormal;
  }
  else if ( yMargin > kPROffsetY)
  {
    //完全展示
    if (_footerView.state != kPRStateHitTheEnd)
    {
      _footerView.state = kPRStatePulling;
    }
    
  }
  else if ( yMargin < kPROffsetY && yMargin > 0)
  {
    //footer part appeared
    if (_footerView.state != kPRStateHitTheEnd)
    {
      _footerView.state = kPRStateNormal;
    }
  }
}

- (void)tableViewDidEndDragging:(UIScrollView *)scrollView
{
  if (iISNormalStatus)
  {
    return;
  }
  
  if (_headerView.state == kPRStatePulling)
  {
    _headerView.state = kPRStateLoading;
    
    [UIView animateWithDuration:kPRAnimationDuration animations:^{
      self.contentInset = UIEdgeInsetsMake(kPROffsetY, 0, 0, 0);}];
    if (_pullingDelegate && [_pullingDelegate
                             respondsToSelector:@selector(pullingTableViewDidStartRefreshing:)])
    {
      [_pullingDelegate pullingTableViewDidStartRefreshing:self];
    }
  }
  else if (_footerView.state == kPRStatePulling)
  {
    if (self.reachedTheEnd || self.headerOnly)
    {
      return;
    }
    _isFooterInAction = YES;
    _footerView.state = kPRStateLoading;
    [UIView animateWithDuration:kPRAnimationDuration animations:^{
      self.contentInset = UIEdgeInsetsMake(0, 0, kPROffsetY, 0);}];
    if (_pullingDelegate && [_pullingDelegate
                             respondsToSelector:@selector(pullingTableViewDidStartLoading:)])
    {
      [_pullingDelegate pullingTableViewDidStartLoading:self];
    }
  }
}

- (void)tableViewDidFinishedLoading
{
  [self tableViewDidFinishedLoadingWithMessage:nil];
}

//显示提示信息
- (void)flashMessage:(NSString *)msg
{
  //显示信息
  __block CGRect rect =
  CGRectMake(0, self.contentOffset.y - 20, self.bounds.size.width, 20);
  if (_msgLabel == nil)
  {
    _msgLabel = [[UILabel alloc] init];
    _msgLabel.frame = rect;
    _msgLabel.font = [UIFont systemFontOfSize:14.f];
    _msgLabel.textColor = [UIColor whiteColor];
    _msgLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _msgLabel.backgroundColor = [UIColor colorWithRed:0.0/255.0
                                                green:150.0/255.0
                                                 blue:70.0/255.0
                                                alpha:1.0];;
    _msgLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_msgLabel];
  }
  _msgLabel.text = msg;
  
  rect.origin.y += 20;
  [UIView animateWithDuration:.4f animations:^{
    _msgLabel.frame = rect;
  }
                   completion:^(BOOL finished)
   {
     rect.origin.y -= 20;
     [UIView animateWithDuration:.4f delay:.4f
                         options:UIViewAnimationOptionCurveLinear animations:^{
                           _msgLabel.frame = rect;
                         } completion:^(BOOL finished)
      {
        [_msgLabel removeFromSuperview];
        _msgLabel = nil;
      }];
   }];
}

//刷新结束，显示提示信息
- (void)tableViewDidFinishedLoadingWithMessage:(NSString *)msg
{
  if (_headerView.loading)
  {
    _headerView.loading = NO;
    _headerView.state = kPRStateNormal;
    
    [UIView animateWithDuration:kPRAnimationDuration animations:^{
      self.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    } completion:^(BOOL bl)
     {
       if (msg != nil && ![msg isEqualToString:@""])
       {
         //[self flashMessage:msg];
       }
     }];
  }
  else if (_footerView.loading)
  {
    _footerView.loading = NO;
    _footerView.state = kPRStateNormal;
    
    [UIView animateWithDuration:kPRAnimationDuration animations:^{
      self.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    } completion:^(BOOL bl)
     {
       if (msg != nil && ![msg isEqualToString:@""])
       {
         //[self flashMessage:msg];
       }
     }];
  }
}

// 刷新tableview
- (void)launchRefreshing
{
  [self setContentOffset:CGPointMake(0, -kPROffsetY-5) animated:NO];
  [self tableViewDidEndDragging:self];
}

//观察者模式，观察tableview尺寸的变化，调整控件坐标
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
  CGRect frame = _footerView.frame;
  CGSize contentSize = self.contentSize;
  frame.origin.y = contentSize.height < self.frame.size.height ?
  self.frame.size.height : contentSize.height;
  _footerView.frame = frame;
  
  if (self.autoScrollToNextPage && _isFooterInAction)
  {
    [self scrollToNextPage];
    _isFooterInAction = NO;
  }
}

- (void)dealloc {
    [self removeObserver:self forKeyPath:@"contentSize"];//如果注册了kvo的话。
}

@end
