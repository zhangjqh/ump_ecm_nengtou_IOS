/*!
 @header UILabel+WALabelCategory.h
 @abstract UILabel Category
 @author 
 @version Copyright (c) 2013 __ma__. All rights reserved.1.00 on 13-4-9
 */


#import "UILabel+WALabelCategory.h"
#import "WAUFTool.h"

@implementation UILabel (WALabelCategory)

- (void)adjustFontSizeToFit
{
  UIFont *font = self.font;
  CGSize size = self.frame.size;
  
  //ios7适配（文本大小自适应、字体动态改变，考虑行间距）
  if (WA_CURENT_OS_V >= 7.0f) {
    //文本分段样式
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
    //折行方式
    paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
    //显示设置行间距
    paragraphStyle.lineSpacing = 4.0f;
    //受限尺寸（宽度给定、高度有上限）
    CGSize constraintSize = CGSizeMake(size.width, MAXFLOAT);
    //由当前font大小逐次递减size大小。
    for (CGFloat maxSize = self.font.pointSize; maxSize >= self.minimumScaleFactor; maxSize -= 1.f)
    {
      font = [font fontWithSize:maxSize];
      //设置字体、段落 自动匹配属性
      NSDictionary *attributes = [[NSDictionary alloc] initWithObjectsAndKeys:font, NSFontAttributeName, paragraphStyle, NSParagraphStyleAttributeName, nil];
      //To correctly draw and size multi-line text, pass NSStringDrawingUsesLineFragmentOrigin in the options parameter.
      //多行文本要引入NSStringDrawingUsesLineFragmentOrigin
      //考虑行间距要引入NSStringDrawingUsesFontLeading
      //CGRect labelRect = [self.text boundingRectWithSize:constraintSize
      //                                           options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin
      //                                        attributes:attributes context:nil];
      //CGSize labelSize = labelRect.size;
      //向上取整
      //NSInteger height = ceil(labelSize.height);
      //判断所需尺寸大小的高度与当前size的高度对比。
      //if(height <= size.height)
      //{
      //  self.font = font;
       // [self setNeedsLayout];
       // break;
     // }
    }
  }
  else
  {
    for (CGFloat maxSize = self.font.pointSize; maxSize >= self.minimumScaleFactor; maxSize -= 1.f)
    {
      font = [font fontWithSize:maxSize];
      CGSize constraintSize = CGSizeMake(size.width, MAXFLOAT);
      CGSize labelSize = [self.text sizeWithFont:font constrainedToSize:constraintSize lineBreakMode:NSLineBreakByWordWrapping];
      if(labelSize.height <= size.height )
      {
        self.font = font;
        [self setNeedsLayout];
        break;
      }
    }
  }
 
    // set the font to the minimum size anyway
  self.font = font;
  [self setNeedsLayout];
}

- (CGPoint)theLastPoint
{
  CGSize sz = [self.text sizeWithFont:self.font
                    constrainedToSize:CGSizeMake(MAXFLOAT, self.frame.size.height)];
  CGSize linesSz = [self.text sizeWithFont:self.font
                         constrainedToSize:CGSizeMake(self.frame.size.width, MAXFLOAT)
                             lineBreakMode:NSLineBreakByWordWrapping];
  
  CGPoint lastPoint;
  if(sz.width <= linesSz.width) //判断是否折行
  {
    lastPoint = CGPointMake(self.frame.origin.x + sz.width, self.frame.origin.y);
  }
  else
  {
    lastPoint = CGPointMake(self.frame.origin.x + (int)sz.width % (int)linesSz.width,linesSz.height - sz.height);
  }
  return lastPoint;
}

- (void)lastLineWrapithLastLineWidth:(CGFloat)aLastLineWidth
                  WithIsOnlyWhenWrap:(BOOL)aisOnlyWhenWrap
{
  if(aLastLineWidth >= self.frame.size.width && aLastLineWidth > 0)
  {
    return;
  }
  
  CGPoint lastPoint = [self theLastPoint];
  if(lastPoint.y <= self.frame.origin.y && aisOnlyWhenWrap)
  {
    return;
  }
  NSString *oldeStr = self.text;
  NSLog(@"%f",(lastPoint.x - self.frame.origin.x));
   NSLog(@"%f",aLastLineWidth);
  while(lastPoint.x - self.frame.origin.x > aLastLineWidth)
  {
    if(self.text.length >= 1)
    {
    
      NSString *subStr = [self.text substringToIndex:(oldeStr.length - 1)];
      NSString *addTail =[NSString stringWithFormat:@"%@...",subStr];
      self.text = addTail;
      lastPoint = [self theLastPoint];
      oldeStr = subStr;
      NSLog(@"%f",(lastPoint.x - self.frame.origin.x));
    }
    else
    {
      break;
    }
    
  }
//  [self setNeedsLayout];
}

- (CGSize)getIOS7SizebyFont:(UIFont *)font
                       size:(CGSize)aSize
                       text:(NSString *)aText
{
  //文本分段样式
  NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc]init];
  //折行方式
  paragraphStyle.lineBreakMode = NSLineBreakByWordWrapping;
  //显示设置行间距
  paragraphStyle.lineSpacing = 1.0f;
  
  //受限尺寸（宽度给定、高度有上限）
  CGSize constraintSize = CGSizeMake(aSize.width, MAXFLOAT);
  //设置字体、段落 自动匹配属性
  NSDictionary *attributes = [[NSDictionary alloc] initWithObjectsAndKeys:font, NSFontAttributeName, paragraphStyle, NSParagraphStyleAttributeName, nil];

  //To correctly draw and size multi-line text, pass NSStringDrawingUsesLineFragmentOrigin in the options parameter.
  //多行文本要引入NSStringDrawingUsesLineFragmentOrigin
  //考虑行间距要引入NSStringDrawingUsesFontLeading
 // CGRect labelRect = [aText boundingRectWithSize:constraintSize
  //                                       options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin
   //                                   attributes:attributes context:nil];

  
    CGSize labelSize = CGSizeMake(0, 0);
  //向上取整
  //判断所需尺寸大小的高度与当前size的高度对比。
  return labelSize;
  
}

- (void)adjustFontSizeToFitLineWrapWithLableWidth:(float) alableWidth andLablePointX:(float)x andLablePointY:(float)y;

{
  CGSize titleLabelSize = CGSizeZero;
  if(WA_CURENT_OS_V < 7.0)
  {
    titleLabelSize = [self.text sizeWithFont:self.font
                           constrainedToSize:CGSizeMake(alableWidth, MAXFLOAT)
                               lineBreakMode:NSLineBreakByWordWrapping];
    [self setNumberOfLines:0];
  }
  else
  {
    titleLabelSize = [self getIOS7SizebyFont:self.font
                                        size:CGSizeMake(alableWidth, MAXFLOAT)
                                        text:self.text];
    [self setNumberOfLines:0];
  }
 
  CGRect titleRect = CGRectMake(x, y, alableWidth, titleLabelSize.height);
  
  
  [self setFrame:titleRect];
}

- (NSInteger)adjustTextSizeToFitALineLabel:(NSString *)textString
{
    NSString *temp = @"";
    if (textString) {
        for (int i = 1; i <= textString.length; i++) {
            temp = [[textString substringFromIndex:0] substringToIndex:i];
            CGSize size = [temp sizeWithFont:self.font constrainedToSize:CGSizeMake(self.frame.size.width+(self.font.pointSize),self.frame.size.height)];
            if (size.width > self.frame.size.width) {
                return i - 1;
            }
        }
    }
    return temp.length;
}
@end
