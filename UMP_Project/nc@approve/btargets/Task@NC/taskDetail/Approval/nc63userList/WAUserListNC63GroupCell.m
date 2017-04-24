#import "WAUserListNC63GroupCell.h"

@implementation CWAUserListNC63GroupCell

static CGFloat Height = 45;

- (void)setLinkMan:(CWALinkManVO *)aLinkMan
         WithIsSel:(BOOL)aIsSel
{
  self.iLinkManVO = aLinkMan;
  
  CGRect frame = CGRectZero;
  if(aIsSel)
  {
    frame.size.height = iSelectImage.size.height;
    frame.size.width = iSelectImage.size.width;
  }
  else
  {
    frame.size.height = iDeSelectImage.size.height;
    frame.size.width = iDeSelectImage.size.width;
  }
  
  
  if(aIsSel)
  {
    iImageView.image = self.iSelectImage;
  }
  else
  {
    iImageView.image = self.iDeSelectImage;
  }
  frame.origin.y = (Height - frame.size.height)/2;
  frame.origin.x = 10.0;
  iImageView.frame = frame;
  [self reSetLableFrame];
  
  iNameLabel.text = iLinkManVO.iName;
  iCodeLabel.text = iLinkManVO.iMark;
  
}

@end
