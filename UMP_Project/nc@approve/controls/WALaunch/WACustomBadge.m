/*
 CustomBadge.m
 
 *** Description: ***
 With this class you can draw a typical iOS badge indicator with a custom text on any view.
 Please use the allocator customBadgeWithString the create a new badge.
 In this version you can modfiy the color inside the badge (insetColor),
 the color of the frame (frameColor), the color of the text and you can
 tell the class if you want a frame around the badge.
 
 *** License & Copyright ***
 Created by Sascha Marc Paulus www.spaulus.com on 04/2011. Version 2.0
 This tiny class can be used for free in private and commercial applications.
 Please feel free to modify, extend or distribution this class. 
 If you modify it: Please send me your modified version of the class.
 A commercial distribution of this class is not allowed.
 
 If you have any questions please feel free to contact me (open@spaulus.com).
 */


#import "WACustomBadge.h"

@interface CWACustomBadge()
- (void) drawRoundedRectWithContext:(CGContextRef)context withRect:(CGRect)rect;
- (void) drawFrameWithContext:(CGContextRef)context withRect:(CGRect)rect;
@end

@implementation CWACustomBadge

@synthesize iBadgeText;
@synthesize iBadgeTextColor;
@synthesize iBadgeInsetColor;
@synthesize iBadgeFrameColor;
@synthesize iBadgeFrame;
@synthesize iBadgeCornerRoundness;
@synthesize iBadgeScaleFactor;
@synthesize iBadgeShining;
@synthesize iBadgeHeight;

// I recommend to use the allocator customBadgeWithString
- (id) initWithString:(NSString *)aBadgeString
            withScale:(CGFloat)aScale
          withShining:(BOOL)aShining
{
	self = [super initWithFrame:CGRectMake(0, 0, 25, 25)];
	if(self!=nil)
  {
		self.contentScaleFactor = [[UIScreen mainScreen] scale];
		self.backgroundColor = [UIColor clearColor];
		self.iBadgeText = aBadgeString;
		self.iBadgeTextColor = [UIColor whiteColor];
		self.iBadgeFrame = YES;
		self.iBadgeFrameColor = [UIColor whiteColor];
		self.iBadgeInsetColor = [UIColor redColor];
		self.iBadgeCornerRoundness = 0.4;
		self.iBadgeScaleFactor = aScale;
		self.iBadgeShining = aShining;
    self.iBadgeHeight = 25;
		[self autoBadgeSizeWithString:aBadgeString];
	}
	return self;
}

// I recommend to use the allocator customBadgeWithString
- (id) initWithString:(NSString *)aBadgeString
      withStringColor:(UIColor*)aStringColor
       withInsetColor:(UIColor*)aInsetColor
       withBadgeFrame:(BOOL)aBadgeFrameYesNo
  withBadgeFrameColor:(UIColor*)aFrameColor
            withScale:(CGFloat)aScale
          withShining:(BOOL)aShining
      withBadgeHeight:(CGFloat)aHeight
{
	self = [super initWithFrame:CGRectMake(0, 0, iBadgeHeight, iBadgeHeight)];
	if(self!=nil)
  {
		self.contentScaleFactor = [[UIScreen mainScreen] scale];
		self.backgroundColor = [UIColor clearColor];
		self.iBadgeText = aBadgeString;
		self.iBadgeTextColor = aStringColor;
		self.iBadgeFrame = aBadgeFrameYesNo;
		self.iBadgeFrameColor = aFrameColor;
		self.iBadgeInsetColor = aInsetColor;
		self.iBadgeCornerRoundness = 0.40;
		self.iBadgeScaleFactor = aScale;
		self.iBadgeShining = aShining;
    if (aHeight <= 0)
    {
      self.iBadgeHeight = 25;
    }
    else
    {
      self.iBadgeHeight = aHeight;
    }
		[self autoBadgeSizeWithString:aBadgeString];
	}
	return self;
}


// Use this method if you want to change the badge text after the first rendering 
- (void) autoBadgeSizeWithString:(NSString *)badgeString
{
	CGSize retValue;
	CGFloat rectWidth, rectHeight;
	CGSize stringSize = [badgeString sizeWithFont:[UIFont boldSystemFontOfSize:12]];
	CGFloat flexSpace;
	if ([badgeString length]>=2)
  {
		flexSpace = [badgeString length];
		rectWidth = iBadgeHeight + (stringSize.width + flexSpace);
    rectHeight = iBadgeHeight;
		retValue = CGSizeMake(rectWidth*iBadgeScaleFactor, rectHeight*iBadgeScaleFactor);
	}
  else
  {
		retValue = CGSizeMake(iBadgeHeight*iBadgeScaleFactor, iBadgeHeight*iBadgeScaleFactor);
	}
	self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, retValue.width, retValue.height);
	self.iBadgeText = badgeString;
	[self setNeedsDisplay];
}


// Creates a Badge with a given Text 
+ (CWACustomBadge*) customBadgeWithString:(NSString *)badgeString
{
	return [[self alloc] initWithString:badgeString withScale:1.0 withShining:YES];
}


// Creates a Badge with a given Text, Text Color, Inset Color, Frame (YES/NO) and Frame Color 
+ (CWACustomBadge*) customBadgeWithString:(NSString *)badgeString
                       withStringColor:(UIColor*)stringColor
                        withInsetColor:(UIColor*)insetColor
                        withBadgeFrame:(BOOL)badgeFrameYesNo
                   withBadgeFrameColor:(UIColor*)frameColor
                             withScale:(CGFloat)scale
                           withShining:(BOOL)shining
                       withBadgeHeight:(CGFloat)aHeight
{
	return [[self alloc] initWithString:badgeString withStringColor:stringColor withInsetColor:insetColor withBadgeFrame:badgeFrameYesNo withBadgeFrameColor:frameColor withScale:scale withShining:shining withBadgeHeight:aHeight] ;
}



 

// Draws the Badge with Quartz
-(void) drawRoundedRectWithContext:(CGContextRef)context withRect:(CGRect)rect
{
	CGContextSaveGState(context);
	
	CGFloat radius = CGRectGetMaxY(rect)*self.iBadgeCornerRoundness;
	CGFloat puffer = CGRectGetMaxY(rect)*0.10;
	CGFloat maxX = CGRectGetMaxX(rect) - puffer;
	CGFloat maxY = CGRectGetMaxY(rect) - puffer;
	CGFloat minX = CGRectGetMinX(rect) + puffer;
	CGFloat minY = CGRectGetMinY(rect) + puffer;
		
  CGContextBeginPath(context);
	CGContextSetFillColorWithColor(context, [self.iBadgeInsetColor CGColor]);
	CGContextAddArc(context, maxX-radius, minY+radius, radius, M_PI+(M_PI/2), 0, 0);
	CGContextAddArc(context, maxX-radius, maxY-radius, radius, 0, M_PI/2, 0);
	CGContextAddArc(context, minX+radius, maxY-radius, radius, M_PI/2, M_PI, 0);
	CGContextAddArc(context, minX+radius, minY+radius, radius, M_PI, M_PI+M_PI/2, 0);
	CGContextSetShadowWithColor(context, CGSizeMake(1.0,1.0), 3, [[UIColor blackColor] CGColor]);
	CGContextClosePath(context);
  CGContextFillPath(context);

	CGContextRestoreGState(context);

}

// Draws the Badge Shine with Quartz
-(void) drawShineWithContext:(CGContextRef)context withRect:(CGRect)rect
{
	CGContextSaveGState(context);
 
	CGFloat radius = CGRectGetMaxY(rect)*self.iBadgeCornerRoundness;
	CGFloat puffer = CGRectGetMaxY(rect)*0.10;
	CGFloat maxX = CGRectGetMaxX(rect) - puffer;
	CGFloat maxY = CGRectGetMaxY(rect) - puffer;
	CGFloat minX = CGRectGetMinX(rect) + puffer;
	CGFloat minY = CGRectGetMinY(rect) + puffer;
	CGContextBeginPath(context);
	CGContextAddArc(context, maxX-radius, minY+radius, radius, M_PI+(M_PI/2), 0, 0);
	CGContextAddArc(context, maxX-radius, maxY-radius, radius, 0, M_PI/2, 0);
	CGContextAddArc(context, minX+radius, maxY-radius, radius, M_PI/2, M_PI, 0);
	CGContextAddArc(context, minX+radius, minY+radius, radius, M_PI, M_PI+M_PI/2, 0);
	CGContextClip(context);
	//CGContextClosePath(context);
	
	
	size_t num_locations = 2;
	CGFloat locations[2] = { 0.0, 0.4 };
	CGFloat components[8] = {  0.92, 0.92, 0.92, 1.0, 0.82, 0.82, 0.82, 0.4 };

	CGColorSpaceRef cspace;
	CGGradientRef gradient;
	cspace = CGColorSpaceCreateDeviceRGB();
	gradient = CGGradientCreateWithColorComponents (cspace, components, locations, num_locations);
	
	CGPoint sPoint, ePoint;
	sPoint.x = 0;
	sPoint.y = 0;
	ePoint.x = 0;
	ePoint.y = maxY;
	CGContextDrawLinearGradient (context, gradient, sPoint, ePoint, 0);
	
	CGColorSpaceRelease(cspace);
	CGGradientRelease(gradient);
	
	CGContextRestoreGState(context);	
}


// Draws the Badge Frame with Quartz
-(void) drawFrameWithContext:(CGContextRef)context withRect:(CGRect)rect
{
	CGFloat radius = CGRectGetMaxY(rect)*self.iBadgeCornerRoundness;
	CGFloat puffer = CGRectGetMaxY(rect)*0.10;
	
	CGFloat maxX = CGRectGetMaxX(rect) - puffer;
	CGFloat maxY = CGRectGetMaxY(rect) - puffer;
	CGFloat minX = CGRectGetMinX(rect) + puffer;
	CGFloat minY = CGRectGetMinY(rect) + puffer;
	
	
  CGContextBeginPath(context);
	CGFloat lineSize = 2;
	if(self.iBadgeScaleFactor>1)
  {
		lineSize += self.iBadgeScaleFactor*0.25;
	}
	CGContextSetLineWidth(context, lineSize);
	CGContextSetStrokeColorWithColor(context, [self.iBadgeFrameColor CGColor]);
	CGContextAddArc(context, maxX-radius, minY+radius, radius, M_PI+(M_PI/2), 0, 0);
	CGContextAddArc(context, maxX-radius, maxY-radius, radius, 0, M_PI/2, 0);
	CGContextAddArc(context, minX+radius, maxY-radius, radius, M_PI/2, M_PI, 0);
	CGContextAddArc(context, minX+radius, minY+radius, radius, M_PI, M_PI+M_PI/2, 0);
	CGContextClosePath(context);
	CGContextStrokePath(context);
}


- (void)drawRect:(CGRect)rect
{
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	[self drawRoundedRectWithContext:context withRect:rect];
	
	if(self.iBadgeShining)
  {
		[self drawShineWithContext:context withRect:rect];
	}
	
	if (self.iBadgeFrame)
  {
		[self drawFrameWithContext:context withRect:rect];
	}
	
	if ([self.iBadgeText length]>0)
  {
		[iBadgeTextColor set];
		CGFloat sizeOfFont = 13.5*iBadgeScaleFactor;
		if ([self.iBadgeText length]<2)
    {
			sizeOfFont += sizeOfFont*0.20;
		}
		UIFont *textFont = [UIFont boldSystemFontOfSize:sizeOfFont];
		CGSize textSize = [self.iBadgeText sizeWithFont:textFont];
		[self.iBadgeText drawAtPoint:CGPointMake((rect.size.width/2-textSize.width/2), (rect.size.height/2-textSize.height/2)) withFont:textFont];
	}
	
}

@end
