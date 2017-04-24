//
//  WADrawingBoardView.m
//  testInkBrush1
//
//  Created by fan hanning on 13-3-15.
//
//

#import "WADrawingBoardView.h"

@implementation CWADrawingBoardView
@synthesize delagate;
@synthesize pickedImage,screenImage,arrayStrokes,arrayAbandonedStrokes,currentColor,currentSize;
@synthesize toolBar;
@synthesize owner;


-(BOOL)isMultipleTouchEnabled {
	return NO;
}

-(void) viewJustLoaded {
	
	self.arrayStrokes = [NSMutableArray array];
	self.arrayAbandonedStrokes = [NSMutableArray array];
	self.currentSize = 3.0;
  if(self.pickedImage)
  {
    int width = [[UIScreen mainScreen] applicationFrame].size.width;
    int height =  [[UIScreen mainScreen] applicationFrame].size.height - 64.00f;
    CGRect frame = self.frame;
    frame.size.height = height;
    frame.size.width = width;
    self.frame = frame;
  }
	[self setColor:[UIColor blackColor]];
	
}


-(void) setColor:(UIColor*)theColor {
	self.currentColor = theColor;
}


// Start new dictionary for each touch, with points and color
- (void) touchesBegan:(NSSet *) touches withEvent:(UIEvent *) event
{
	
	NSMutableArray *arrayPointsInStroke = [NSMutableArray array];
	NSMutableDictionary *dictStroke = [NSMutableDictionary dictionary];
	[dictStroke setObject:arrayPointsInStroke forKey:@"points"];
	[dictStroke setObject:self.currentColor forKey:@"color"];
	[dictStroke setObject:[NSNumber numberWithFloat:self.currentSize] forKey:@"size"];
	
	CGPoint point = [[touches anyObject] locationInView:self];
	[arrayPointsInStroke addObject:NSStringFromCGPoint(point)];
	
	[self.arrayStrokes addObject:dictStroke];
}

// Add each point to points array
- (void) touchesMoved:(NSSet *) touches withEvent:(UIEvent *) event
{
	CGPoint point = [[touches anyObject] locationInView:self];
	CGPoint prevPoint = [[touches anyObject] previousLocationInView:self];
	NSMutableArray *arrayPointsInStroke = [[self.arrayStrokes lastObject] objectForKey:@"points"];
	[arrayPointsInStroke addObject:NSStringFromCGPoint(point)];
	
	CGRect rectToRedraw = CGRectMake(\
									 ((prevPoint.x>point.x)?point.x:prevPoint.x)-currentSize,\
									 ((prevPoint.y>point.y)?point.y:prevPoint.y)-currentSize,\
									 fabs(point.x-prevPoint.x)+2*currentSize,\
									 fabs(point.y-prevPoint.y)+2*currentSize\
									 );
	[self setNeedsDisplayInRect:rectToRedraw];
	//[self setNeedsDisplay];
}

// Send over new trace when the touch ends
- (void) touchesEnded:(NSSet *) touches withEvent:(UIEvent *) event
{
	[self.arrayAbandonedStrokes removeAllObjects];
}

// Draw all points, foreign and domestic, to the screen
- (void) drawRect: (CGRect) rect
{
	int width = self.pickedImage.size.width;
	int height = self.pickedImage.size.height;
	CGRect rectForImage = CGRectMake(0, 0, width, height);
	[self.pickedImage drawInRect:rectForImage];
	
	if (self.arrayStrokes)
	{
		int arraynum = 0;
		// each iteration draw a stroke
		// line segments within a single stroke (path) has the same color and line width
		for (NSDictionary *dictStroke in self.arrayStrokes)
		{
			NSArray *arrayPointsInstroke = [dictStroke objectForKey:@"points"];
			UIColor *color = [dictStroke objectForKey:@"color"];
			float size = [[dictStroke objectForKey:@"size"] floatValue];
			[color set];		// equivalent to both setFill and setStroke
			
            //			// won't draw a line which is too short
            //			if (arrayPointsInstroke.count < 3)	{
            //				arraynum++;
            //				continue;		// if continue is executed, the program jumps to the next dictStroke
            //			}
			
			// draw the stroke, line by line, with rounded joints
			UIBezierPath* pathLines = [UIBezierPath bezierPath];
			CGPoint pointStart = CGPointFromString([arrayPointsInstroke objectAtIndex:0]);
			[pathLines moveToPoint:pointStart];
			for (int i = 0; i < (arrayPointsInstroke.count - 1); i++)
			{
				CGPoint pointNext = CGPointFromString([arrayPointsInstroke objectAtIndex:i+1]);
				[pathLines addLineToPoint:pointNext];
			}
			pathLines.lineWidth = size;
			pathLines.lineJoinStyle = kCGLineJoinRound;
			pathLines.lineCapStyle = kCGLineCapRound;
			[pathLines stroke];
			
			arraynum++;
		}
	}
}

- (void)drawArrayStrokes
{
  if (self.arrayStrokes)
  {
		int arraynum = 0;
		// each iteration draw a stroke
		// line segments within a single stroke (path) has the same color and line width
		for (NSDictionary *dictStroke in self.arrayStrokes)
    {
			NSArray *arrayPointsInstroke = [dictStroke objectForKey:@"points"];
			UIColor *color = [dictStroke objectForKey:@"color"];
			float size = [[dictStroke objectForKey:@"size"] floatValue];
			[color set];		// equivalent to both setFill and setStroke
			
      //			// won't draw a line which is too short
      //			if (arrayPointsInstroke.count < 3)	{
      //				arraynum++;
      //				continue;		// if continue is executed, the program jumps to the next dictStroke
      //			}
			
			// draw the stroke, line by line, with rounded joints
			UIBezierPath* pathLines = [UIBezierPath bezierPath];
			CGPoint pointStart = CGPointFromString([arrayPointsInstroke objectAtIndex:0]);
			[pathLines moveToPoint:pointStart];
			for (int i = 0; i < (arrayPointsInstroke.count - 1); i++)
        {
				CGPoint pointNext = CGPointFromString([arrayPointsInstroke objectAtIndex:i+1]);
				[pathLines addLineToPoint:pointNext];
        }
			pathLines.lineWidth = size;
			pathLines.lineJoinStyle = kCGLineJoinRound;
			pathLines.lineCapStyle = kCGLineCapRound;
			[pathLines stroke];
			
			arraynum++;
    }
  }
}

-(IBAction) undo {
	if ([arrayStrokes count]>0) {
		NSMutableDictionary* dictAbandonedStroke = [arrayStrokes lastObject];
		[self.arrayAbandonedStrokes addObject:dictAbandonedStroke];
		[self.arrayStrokes removeLastObject];
		[self setNeedsDisplay];
	}
}

-(IBAction) redo {
	if ([arrayAbandonedStrokes count]>0) {
		NSMutableDictionary* dictReusedStroke = [arrayAbandonedStrokes lastObject];
		[self.arrayStrokes addObject:dictReusedStroke];
		[self.arrayAbandonedStrokes removeLastObject];
		[self setNeedsDisplay];
	}
}

-(IBAction) clearCanvas {
	self.pickedImage = nil;
	[self.arrayStrokes removeAllObjects];
	[self.arrayAbandonedStrokes removeAllObjects];
	[self setNeedsDisplay];
}


-(IBAction) savePic {
	// remove toolbar temporarily
	[self.toolBar removeFromSuperview];
	
	UIGraphicsBeginImageContext(self.bounds.size);
	[self.layer renderInContext:UIGraphicsGetCurrentContext()];
	self.screenImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	// add toolbar back
	[self addSubview:toolBar];
	
	// add activityIndicator
//	[self addSubview:activityIndicator];
//	[activityIndicator startAnimating];
	
	[self performSelector:@selector(saveToPhoto) withObject:nil afterDelay:0.0];
}

-(void) saveToPhoto {
	// save to photo album
//	UIImageWriteToSavedPhotosAlbum(self.screenImage, nil, nil, nil);
    
	[self.delagate saveCurrentScreenImage:self.screenImage];
	// stop activityIndicator
//	[activityIndicator stopAnimating];
//	[activityIndicator removeFromSuperview];
	
}

@end
