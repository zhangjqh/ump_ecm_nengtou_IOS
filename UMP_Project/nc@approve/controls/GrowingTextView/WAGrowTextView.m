/*!
 @header CWAGrowTextView.m
 @abstract uitextview的子类
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WAGrowTextView.h"
#define WA_TOPCONTENT_INSET -4
#define WA_BOTTONCONTENT_INSET 12

@implementation CWAGrowTextView

 //设置contentoffset
-(void)setContentOffset:(CGPoint)aOffset
{
	if(self.tracking || self.decelerating)
  {
		self.contentInset = UIEdgeInsetsMake(WA_TOPCONTENT_INSET, 0, 0, 0);
	} 
  else 
  {
		float bottomContentOffset = (self.contentSize.height - self.frame.size.height + self.contentInset.bottom);
		if(aOffset.y < bottomContentOffset && self.scrollEnabled) 
    {
			self.contentInset = UIEdgeInsetsMake(WA_TOPCONTENT_INSET, 0, WA_BOTTONCONTENT_INSET, 0);
		}
	}
	[super setContentOffset:aOffset];
}

//设置ContentInset
-(void)setContentInset:(UIEdgeInsets)aInset
{
	UIEdgeInsets edgeInsets = aInset;
	edgeInsets.top = WA_TOPCONTENT_INSET;
	if(aInset.bottom > - WA_TOPCONTENT_INSET) 
  {
    edgeInsets.bottom = - WA_TOPCONTENT_INSET;
  }
	[super setContentInset:edgeInsets];
}

@end
