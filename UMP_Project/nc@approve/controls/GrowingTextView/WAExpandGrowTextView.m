/*!
 @header CWAExpandGrowTextView.m
 @abstract 封装的可增长的uitextview
 @author dequan 
 @copyright ufida
 @version 1.00 2012/05/11 Creation 
 */

#import "WAExpandGrowTextView.h"
//self的x方向内缩变量
#define WA_TASK_GROW_TEXTINSETX 2
//self的y内缩变量
#define WA_TASK_GROW_TEXTINSETBOTTOM 0
//textview的最小高度
#define WA_TASK_GROW_TEXTMINHIGH 44

@implementation CWAExpandGrowTextView
@synthesize iGrowTextView;
@synthesize delegate;
@synthesize iText;
@synthesize iFont;
@synthesize iTextColor;
@synthesize iTextAlignment; 
@synthesize iSelectedRange;
@synthesize iEditable;
@synthesize iDataDetectorTypes; 
@synthesize iAnimateHeightChange;
@synthesize iReturnKeyType;
@synthesize iTextViewBackgroundImage;
@synthesize iPlaceholder;

- (id)initWithFrame:(CGRect)frame 
{
  if ((self = [super initWithFrame:frame])) 
  {
    iForceSizeUpdate = NO;
    self.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
		CGRect backgroundFrame = frame;
    backgroundFrame.origin.y = 0;
		backgroundFrame.origin.x = 0;
    CGRect textViewFrame = CGRectInset(backgroundFrame, 0, 0);
    
    /* Internal Text View component */
		iGrowTextView = [[CWAGrowTextView alloc] initWithFrame:textViewFrame];
		iGrowTextView.delegate        = self;
		iGrowTextView.font            = [UIFont systemFontOfSize:16.0f];
		iGrowTextView.contentInset    = UIEdgeInsetsMake(-4,0,4,0);
    iGrowTextView.text            = @"-";
		iGrowTextView.scrollEnabled   = NO;
    iGrowTextView.opaque          = NO;
    iGrowTextView.backgroundColor = [UIColor clearColor];
    iGrowTextView.showsHorizontalScrollIndicator = NO;
    iGrowTextView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    /* set placeholder */
    placeholderLabel = [[UILabel alloc]initWithFrame:CGRectMake(8,3,self.bounds.size.width - 16,self.bounds.size.height)];
    placeholderLabel.text = iPlaceholder;
    placeholderLabel.font = iGrowTextView.font;
    placeholderLabel.backgroundColor = [UIColor clearColor];
    placeholderLabel.textColor = [UIColor colorWithRed:176/255.0 green:176/255.0 blue:176/255.0 alpha:1];
    [iGrowTextView addSubview:placeholderLabel];
    
    /* Custom Background image */
    iTextViewBackgroundImage = [[UIImageView alloc] initWithFrame:backgroundFrame];
    iTextViewBackgroundImage.image  = [UIImage imageNamed:@"task_act_grtxt_bg.png"];
    iTextViewBackgroundImage.contentMode = UIViewContentModeScaleToFill;
    // 替换  iTextViewBackgroundImage.contentStretch = CGRectMake(0.5, 0.5, 0, 0);
   [iTextViewBackgroundImage.image resizableImageWithCapInsets:UIEdgeInsetsMake(0.5, 0.5, 0, 0)];
    [self addSubview:iTextViewBackgroundImage];
    [self addSubview:iGrowTextView];
    /* Calculate the text view height */
		iMinimumHeight = WA_TASK_GROW_TEXTMINHIGH;
		[self setIMinimumNumberOfLines:1];
		iAnimateHeightChange = YES;
		iGrowTextView.text = @"";
		[self setIMaximumNumberOfLines:9];
  }
  return self;
}

#pragma mark - 
#pragma mark - set/get methods
#pragma mark - UITextView properties

- (void)setIPlaceholder:(NSString *)aPlaceholder
{
  iPlaceholder = aPlaceholder;
  placeholderLabel.text = aPlaceholder;
}

- (int)iMinimumNumberOfLines
{
  return iMinimumNumberOfLines;
}

-(void)setIMinimumNumberOfLines:(int)aMinimumNumberOfLines
{
  NSString *saveText = iGrowTextView.text;
  NSString *newText = @"-";
  iGrowTextView.hidden = YES;
  iGrowTextView.delegate = nil;
  for (int i = 1; i < aMinimumNumberOfLines; ++i)
  {
    newText = [newText stringByAppendingString:@"\n|W|"];
  }
  iGrowTextView.text = newText;
  iMinimumHeight  = WA_TASK_GROW_TEXTMINHIGH;
  iGrowTextView.text = saveText;
  iGrowTextView.hidden = NO;
  iGrowTextView.delegate = self;
  iMinimumNumberOfLines = aMinimumNumberOfLines;
}

- (int)iMaximumNumberOfLines
{
  return iMaximumNumberOfLines;
}

-(void)setIMaximumNumberOfLines:(int)aMaximumNumberOfLines
{
  BOOL didChange            = NO;
  NSString *saveText        = iGrowTextView.text;
  NSString *newText         = @"-";
  iGrowTextView.hidden   = YES;
  iGrowTextView.delegate = nil;
  for (int i = 2; i < aMaximumNumberOfLines; ++i)
  {
    newText = [newText stringByAppendingString:@"\n|W|"];
  }
  iGrowTextView.text     = newText;
  didChange = (iMaximumHeight != iGrowTextView.contentSize.height);
  iMaximumHeight = iGrowTextView.contentSize.height;
  iMaximumNumberOfLines = aMaximumNumberOfLines;
  iGrowTextView.text = saveText;
  iGrowTextView.hidden = NO;
  iGrowTextView.delegate = self;
  if (didChange) 
  {
    iForceSizeUpdate = YES;
    [self textViewDidChange:self.iGrowTextView];
  }
}

#pragma mark -
#pragma mark - set/get methods
#pragma mark - UITextView properties

-(void)setIText:(NSString *)aText
{
	iGrowTextView.text = aText;
  [self performSelector:@selector(textViewDidChange:) withObject:iGrowTextView];
}


-(NSString*)iText
{
	return iGrowTextView.text;
}

-(void)setIFont:(UIFont *)aFont
{
	iGrowTextView.font= aFont;
    placeholderLabel.font = aFont;
	[self setIMaximumNumberOfLines:iMaximumNumberOfLines];
	[self setIMinimumNumberOfLines:iMinimumNumberOfLines];
}

-(UIFont *)iFont
{
	return iGrowTextView.font;
}	

-(void)setITextColor:(UIColor *)aTextColor
{
	iGrowTextView.textColor = aTextColor;
}

-(UIColor*)iTextColor
{
	return iGrowTextView.textColor;
}

-(void)setITextAlignment:(NSTextAlignment)aTextAlignment
{
	iGrowTextView.textAlignment = aTextAlignment;
}

-(NSTextAlignment)iTextAlignment
{
	return iGrowTextView.textAlignment;
}

-(void)setISelectedRange:(NSRange)aSelectedRange
{
	iGrowTextView.selectedRange = aSelectedRange;
}

-(NSRange)iSelectedRange
{
	return iGrowTextView.selectedRange;
}

-(void)setIEditable:(BOOL)aEditable
{
	iGrowTextView.editable = aEditable;
}

-(BOOL)isEditable
{
	return iGrowTextView.editable;
}

-(void)setIReturnKeyType:(UIReturnKeyType)aReturnKeyType
{
	iGrowTextView.returnKeyType = aReturnKeyType;
}

-(UIReturnKeyType)iReturnKeyType
{
	return iGrowTextView.returnKeyType;
}

-(void)setIDataDetectorTypes:(UIDataDetectorTypes)aDataDetectorTypes
{
	iGrowTextView.dataDetectorTypes = aDataDetectorTypes;
}

-(UIDataDetectorTypes)iDataDetectorTypes
{
	return iGrowTextView.dataDetectorTypes;
}

#pragma mark -
#pragma mark - uiview methods

-(void)setFrame:(CGRect)aframe
{
  CGRect backgroundFrame   = aframe;
  backgroundFrame.origin.y = 0;
  backgroundFrame.origin.x = 0;
  CGRect textViewFrame = CGRectInset(backgroundFrame, WA_TASK_GROW_TEXTINSETX, 0);
	iGrowTextView.frame   = textViewFrame;
  backgroundFrame.size.height  -= 8;
  iTextViewBackgroundImage.frame = backgroundFrame;
  iForceSizeUpdate = YES;
	[super setFrame:aframe];
}

#pragma mark -
#pragma mark - CWAExpandGrowTextView methods

-(void)clearText
{
  self.iText = @"";
  [self textViewDidChange:self.iGrowTextView];
}

- (BOOL)hasText
{
	return [iGrowTextView hasText];
}

- (void)scrollRangeToVisible:(NSRange)range
{
	[iGrowTextView scrollRangeToVisible:range];
}

-(void)growDidStop
{
	if ([delegate respondsToSelector:@selector(expandingTextView:didChangeHeight:)]) 
  {
		[delegate expandingTextView:self didChangeHeight:self.frame.size.height];
	}
}

-(BOOL)resignFirstResponder
{
	[super resignFirstResponder];
	return [iGrowTextView resignFirstResponder];
}

#pragma mark -
#pragma mark - UITextViewDelegate methods

- (void)textViewDidChange:(UITextView *)textView
{
 // NSLog(@"iGroTextViewFrame is %@",NSStringFromCGRect(iGrowTextView.frame));
  if(textView.text.length == 0)
    placeholderLabel.alpha = 1;
  else
    placeholderLabel.alpha = 0;
  
	NSInteger newHeight = iGrowTextView.contentSize.height;
	if(newHeight < iMinimumHeight || !iGrowTextView.hasText)
  {
    newHeight = iMinimumHeight;
  }
	if (iGrowTextView.frame.size.height != newHeight || iForceSizeUpdate)
	{
    iForceSizeUpdate = NO;
    if (newHeight > iMaximumHeight && iGrowTextView.frame.size.height <= iMaximumHeight)
    {
      newHeight = iMaximumHeight;
    }
		if (newHeight <= iMaximumHeight)
		{
			if(iAnimateHeightChange)
      {
				[UIView beginAnimations:@"" context:nil];
				[UIView setAnimationDelegate:self];
				[UIView setAnimationDidStopSelector:@selector(growDidStop)];
				[UIView setAnimationBeginsFromCurrentState:YES];
			}
			
			if ([delegate respondsToSelector:@selector(expandingTextView:willChangeHeight:)]) 
      {
				[delegate expandingTextView:self willChangeHeight:(newHeight+ WA_TASK_GROW_TEXTINSETBOTTOM)];
			}
			
			/* Resize the frame */
			CGRect r = self.frame;
			r.size.height = newHeight + WA_TASK_GROW_TEXTINSETBOTTOM;
			self.frame = r;
			r.origin.y = 0;
			r.origin.x = 0;
      iGrowTextView.frame = CGRectInset(r, WA_TASK_GROW_TEXTINSETX, 0);
      r.size.height += 2;
      iTextViewBackgroundImage.frame = r;
      
			if(iAnimateHeightChange)
      {
				[UIView commitAnimations];
			}
      else if ([delegate respondsToSelector:@selector(expandingTextView:didChangeHeight:)]) 
      {
        [delegate expandingTextView:self didChangeHeight:(newHeight+ WA_TASK_GROW_TEXTINSETBOTTOM)];
      }
		}
		
		if (newHeight >= iMaximumHeight)
		{
      /* Enable vertical scrolling */
			if(!iGrowTextView.scrollEnabled)
      {
				iGrowTextView.scrollEnabled = YES;
				[iGrowTextView flashScrollIndicators];
			}
		} 
    else 
    {
      /* Disable vertical scrolling */
			iGrowTextView.scrollEnabled = NO;
		}
	}
	
	if ([delegate respondsToSelector:@selector(expandingTextViewDidChange:)]) 
  {
		[delegate expandingTextViewDidChange:self];
	}
  
	
}

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView 
{
	if ([delegate respondsToSelector:@selector(expandingTextViewShouldBeginEditing:)]) 
  {
		return [delegate expandingTextViewShouldBeginEditing:self];
	} 
  else 
  {
		return YES;
	}
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView 
{
	if ([delegate respondsToSelector:@selector(expandingTextViewShouldEndEditing:)]) 
  {
		return [delegate expandingTextViewShouldEndEditing:self];
	} 
  else 
  {
		return YES;
	}
}

- (void)textViewDidBeginEditing:(UITextView *)textView 
{
	if ([delegate respondsToSelector:@selector(expandingTextViewDidBeginEditing:)]) 
  {
		[delegate expandingTextViewDidBeginEditing:self];
	}
}

- (void)textViewDidEndEditing:(UITextView *)textView 
{		
	if ([delegate respondsToSelector:@selector(expandingTextViewDidEndEditing:)]) 
  {
		[delegate expandingTextViewDidEndEditing:self];
	}
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)atext 
{
	if(![textView hasText] && [atext isEqualToString:@""]) 
  {
    return NO;
	}
  
	if ([atext isEqualToString:@"\n"]) 
  {
		if ([delegate respondsToSelector:@selector(expandingTextViewShouldReturn:)]) 
    {
			if (![delegate performSelector:@selector(expandingTextViewShouldReturn:) withObject:self]) 
      {
				return YES;
			} 
      else 
      {
				[textView resignFirstResponder];
				return NO;
			}
		}
	}
	return YES;
}

- (void)textViewDidChangeSelection:(UITextView *)textView 
{
	if ([delegate respondsToSelector:@selector(expandingTextViewDidChangeSelection:)]) 
  {
		[delegate expandingTextViewDidChangeSelection:self];
	}
}


@end
