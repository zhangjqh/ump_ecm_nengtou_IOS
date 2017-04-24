
/*!

 	@header	含有间隔的组

 	@abstract

 	@discussion

 	@author	huych

 	@copyright	ufida

 	@version	1.0 2013-05-07 16:45:44 Creation

 */

#import <UIKit/UIKit.h>
#import "WAGroupButtonView.h"

@interface CWAGroupButtonIntervalView : CWAGroupButtonView
{
  CGFloat iEdgeDistance;
  CGFloat iInterval;
}

- (id)initWithButtonImages:(CWAButtonImagesArray *)aButtonImageArray
          WithEdgeDistance:(CGFloat)aEdgeDistance
              WithInterval:(CGFloat)aInterval;

@end
