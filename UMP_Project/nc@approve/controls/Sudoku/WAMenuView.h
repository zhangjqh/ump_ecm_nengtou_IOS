#import "WAMenuItem.h"
typedef enum
{
  EDEFULATSTYLE = 0,
  EAUTOLAYSTYLE
}TWAMENUSTYLE;
@class CWAMenuView;
@protocol WAMenuViewDelegate <NSObject>
- (NSUInteger)menuViewNumberOfItems:(CWAMenuView *)menuView;
- (CWAMenuItem *)menuView:(CWAMenuView *)menuView itemForIndex:(NSUInteger)index;
@optional
- (void)menuView:(CWAMenuView *)menuView didSelectItemAtIndex:(NSUInteger)index;
@end

@interface CWAMenuView : UIScrollView
{
  TWAMENUSTYLE iMenuStyle;
  NSDate *iLastTapDate;
}
//上一次点击的时间值
@property (atomic, retain)NSDate *iLastTapDate;
@property (nonatomic, assign) id<WAMenuViewDelegate>iMenuDelegate;

/**
 * You can use these properties if you would like a different number of columns or
 * different-sized menu items.
 */
@property (nonatomic) NSUInteger iColumnCountPortrait; // default is 3
@property (nonatomic) NSUInteger iColumnCountLandscape; // default is 4
@property (nonatomic) CGSize iItemSize; // default is 100x100.
@property (nonatomic,assign)TWAMENUSTYLE iMenuStyle;
@property (nonatomic) CGFloat yHeighyOff;

@end
