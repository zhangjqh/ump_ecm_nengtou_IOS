/*!
 @header	 WAPopMenuBaseView.m
 @abstract	弹出菜单遮罩VIEW
 @discussion
 @author	chenrh1
 @copyright	yonyou
 @version	1.0 2013-11-22 18:14:54 Creation
 */

#import "WAPopMenuBaseView.h"
#import "WAPopupMenuView.h"

@implementation CWAPopMenuBaseView

#pragma mark 初始化 **********************************************
- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;
  }
  return self;
}
/**********************************************************/

#pragma mark 当遮罩View被点击 **********************************************************
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
  UIView *touched = [[touches anyObject] view];
  if (touched == self)
  {
    [touched removeFromSuperview];
  }
}


@end



