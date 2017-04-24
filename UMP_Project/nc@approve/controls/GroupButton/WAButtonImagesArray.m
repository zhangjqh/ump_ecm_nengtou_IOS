
#import "WAButtonImagesArray.h"
#define WA_GROUPBUTTON_HIGHTLIGHT_COLOR [UIColor colorWithRed:104.0f/255.0f green:143.0f/255.0f blue:223.0f/255.0f alpha:1.0f]
#define WA_YONYOU_RED_COLOE [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
static const int WA_GROUPBUTTON_TWO_WIDTH = 144;
static const int WA_GROUPBUTTON_THIRD_WIDTH = 96;
static const int WA_GROUPBUTTON_FOURTH_WIDTH = 72;

@implementation CWAButtonImagesArray

@synthesize iButtonImages;

- (id)init
{
  self = [super init];
  if (self)
    {
    iButtonImages = [[NSMutableArray alloc] init];
    }
  return self;
}

- (NSUInteger)count
{
  return [iButtonImages count];
}

- (CWAButton *)objectAtIndex:(NSUInteger)aIndex
{
  return [iButtonImages objectAtIndex:aIndex];
}

- (void)addButtonImage:(CWAButton *)aButtonImage
{
  [iButtonImages addObject:aButtonImage];
}

+ (CWAButtonImagesArray *)getButtonWithButtonCount:(int)aButtonCount
                                         withTitle:(NSArray *)aTitles
                                    withStatusCode:(NSArray *)aStatusCode
                                   withServiceCode:(NSArray *)aServiceCode
                                        withStatus:(NSString *)aStatus
                              withBundleNameOrPath:(NSString *)aBundleNameOrPath
{
  NSString *resourceComponents =@"";
  if (aBundleNameOrPath)
  {
    resourceComponents = [aBundleNameOrPath hasSuffix:@"/"]?aBundleNameOrPath :[aBundleNameOrPath stringByAppendingString:@"/"];
  }
  if([aTitles count] != aButtonCount || aButtonCount <=1)
  {
    return nil;
  }
  
  CWAButtonImagesArray *buttonImagesArray = [[CWAButtonImagesArray alloc] init];
  switch (aButtonCount)
  {
    case 2:
    {
      UIImage *normalImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"2-left.png"]];
      UIImage *highlightImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"2-left-highlight.png"]];
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                        withHighlightImage:highlightImageLeft
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode  objectAtIndex:0]
                                                                withStatus:aStatus];
      
      UIImage *normalImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"2-right.png"]];
      UIImage *highlightImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"2-right-highlight.png"]];
      NSString *textRight = [aTitles objectAtIndex:1];
      CWAButton *buttonImageRight = [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                         withHighlightImage:highlightImageRight
                                                                   withText:textRight
                                                             withStatusCode:[aStatusCode objectAtIndex:1]
                                                            withServiceCode:[aServiceCode objectAtIndex:1]
                                                                 withStatus:aStatus];
      
      
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
    case 3:
    {
      UIImage *normalImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-left.png"]];
      UIImage *highlightImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-left-highlight.png"]];
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                        withHighlightImage:highlightImageLeft
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode objectAtIndex:0]
                                                                withStatus:aStatus];
      
      
      
      UIImage *normalImageMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-midille.png"]];
      UIImage *highlightImageMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-midille-highlight.png"]];
      NSString *textMiddlle = [aTitles objectAtIndex:1];
      CWAButton *buttonImageMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageMiddlle
                                                           withHighlightImage:highlightImageMiddlle
                                                                     withText:textMiddlle
                                                               withStatusCode:[aStatusCode objectAtIndex:1]
                                                              withServiceCode:[aServiceCode objectAtIndex:1]
                                                                   withStatus:aStatus];
      
      UIImage *normalImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-right.png"]];
      UIImage *highlightImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"3-right-highlight.png"]];
      NSString *textRight = [aTitles objectAtIndex:2];
      CWAButton *buttonImageRight =  [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                          withHighlightImage:highlightImageRight
                                                                    withText:textRight
                                                              withStatusCode:[aStatusCode objectAtIndex:2]
                                                             withServiceCode:[aServiceCode objectAtIndex:2]
                                                                  withStatus:aStatus];
      
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
    case 4:
    {
      UIImage *normalImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-left.png"]];
      UIImage *highlightImageLeft = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-left-highlight.png"]];
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                        withHighlightImage:highlightImageLeft
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode objectAtIndex:0]
                                                                withStatus:aStatus];
      
      UIImage *normalImageLeftMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-midille.png"]];
      UIImage *highlightImageLeftMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-midille-highlight.png"]];
      NSString *textLeftMiddlle = [aTitles objectAtIndex:1];
      CWAButton *buttonImageLeftMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageLeftMiddlle
                                                               withHighlightImage:highlightImageLeftMiddlle
                                                                         withText:textLeftMiddlle
                                                                   withStatusCode:[aStatusCode objectAtIndex:1]
                                                                  withServiceCode:[aServiceCode objectAtIndex:1]
                                                                       withStatus:aStatus];
      
      UIImage *normalImageRightMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-midille.png"]];
      UIImage *highlightImageRightMiddlle = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-midille-highlight.png"]];
      NSString *textRightMiddlle = [aTitles objectAtIndex:2];
      CWAButton *buttonImageRightMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageRightMiddlle
                                                                withHighlightImage:highlightImageRightMiddlle
                                                                          withText:textRightMiddlle
                                                                    withStatusCode:[aStatusCode objectAtIndex:2]
                                                                   withServiceCode:[aServiceCode objectAtIndex:2]
                                                                        withStatus:aStatus];
      
      
      UIImage *normalImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-right.png"]];
      UIImage *highlightImageRight = [UIImage imageNamed:[resourceComponents stringByAppendingString:@"4-right-highlight.png"]];
      NSString *textRight = [aTitles objectAtIndex:3];
      CWAButton *buttonImageRight = [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                         withHighlightImage:highlightImageRight
                                                                   withText:textRight
                                                             withStatusCode:[aStatusCode objectAtIndex:3]
                                                            withServiceCode:[aServiceCode objectAtIndex:3]
                                                                 withStatus:aStatus];
      
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageLeftMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRightMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
      
    default:
      break;
  }
  return buttonImagesArray;
  
}

+ (CWAButtonImagesArray *)getButtonWithButtonCount:(int)aButtonCount
                                         withTitle:(NSArray *)aTitles
                                    withStatusCode:(NSArray *)aStatusCode
                                   withServiceCode:(NSArray *)aServiceCode
                                        withStatus:(NSString *)aStatus
{
  if([aTitles count] != aButtonCount || aButtonCount <=1)
    {
    return nil;
    }
  
  CWAButtonImagesArray *buttonImagesArray = [[CWAButtonImagesArray alloc] init];
  switch (aButtonCount)
  {
    case 2:
    {
    UIImage *normalImageLeft = [UIImage imageNamed:@"2-left.png"];
    UIImage *highlightImageLeft = [UIImage imageNamed:@"2-left-highlight.png"];
    NSString *textLeft = [aTitles objectAtIndex:0];
    CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                      withHighlightImage:highlightImageLeft
                                                                withText:textLeft
                                                          withStatusCode:[aStatusCode objectAtIndex:0]
                                                         withServiceCode:[aServiceCode  objectAtIndex:0]
                                                              withStatus:aStatus];
    
    UIImage *normalImageRight = [UIImage imageNamed:@"2-right.png"];
    UIImage *highlightImageRight = [UIImage imageNamed:@"2-right-highlight.png"];
    NSString *textRight = [aTitles objectAtIndex:1];
    CWAButton *buttonImageRight = [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                       withHighlightImage:highlightImageRight
                                                                 withText:textRight
                                                           withStatusCode:[aStatusCode objectAtIndex:1]
                                                          withServiceCode:[aServiceCode objectAtIndex:1]
                                                               withStatus:aStatus];
    
    
    [buttonImagesArray addButtonImage:buttonImageLeft];
    [buttonImagesArray addButtonImage:buttonImageRight];
    }
    break;
    case 3:
    {
    UIImage *normalImageLeft = [UIImage imageNamed:@"3-left.png"];
    UIImage *highlightImageLeft = [UIImage imageNamed:@"3-left-highlight.png"];
    NSString *textLeft = [aTitles objectAtIndex:0];
    CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                      withHighlightImage:highlightImageLeft
                                                                withText:textLeft
                                                          withStatusCode:[aStatusCode objectAtIndex:0]
                                                         withServiceCode:[aServiceCode objectAtIndex:0]
                                                              withStatus:aStatus];
    
    
    
    UIImage *normalImageMiddlle = [UIImage imageNamed:@"3-midille.png"];
    UIImage *highlightImageMiddlle = [UIImage imageNamed:@"3-midille-highlight.png"];
    NSString *textMiddlle = [aTitles objectAtIndex:1];
    CWAButton *buttonImageMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageMiddlle
                                                         withHighlightImage:highlightImageMiddlle
                                                                   withText:textMiddlle
                                                             withStatusCode:[aStatusCode objectAtIndex:1]
                                                            withServiceCode:[aServiceCode objectAtIndex:1]
                                                                 withStatus:aStatus];
    
    UIImage *normalImageRight = [UIImage imageNamed:@"3-right.png"];
    UIImage *highlightImageRight = [UIImage imageNamed:@"3-right-highlight.png"];
    NSString *textRight = [aTitles objectAtIndex:2];
    CWAButton *buttonImageRight =  [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                        withHighlightImage:highlightImageRight
                                                                  withText:textRight
                                                            withStatusCode:[aStatusCode objectAtIndex:2]
                                                           withServiceCode:[aServiceCode objectAtIndex:2]
                                                                withStatus:aStatus];
    
    [buttonImagesArray addButtonImage:buttonImageLeft];
    [buttonImagesArray addButtonImage:buttonImageMiddlle];
    [buttonImagesArray addButtonImage:buttonImageRight];
    }
    break;
    case 4:
    {
    UIImage *normalImageLeft = [UIImage imageNamed:@"4-left.png"];
    UIImage *highlightImageLeft = [UIImage imageNamed:@"4-left-highlight.png"];
    NSString *textLeft = [aTitles objectAtIndex:0];
    CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalImage:normalImageLeft
                                                      withHighlightImage:highlightImageLeft
                                                                withText:textLeft
                                                          withStatusCode:[aStatusCode objectAtIndex:0]
                                                         withServiceCode:[aServiceCode objectAtIndex:0]
                                                              withStatus:aStatus];
    
    UIImage *normalImageLeftMiddlle = [UIImage imageNamed:@"4-midille.png"];
    UIImage *highlightImageLeftMiddlle = [UIImage imageNamed:@"4-midille-highlight.png"];
    NSString *textLeftMiddlle = [aTitles objectAtIndex:1];
    CWAButton *buttonImageLeftMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageLeftMiddlle
                                                             withHighlightImage:highlightImageLeftMiddlle
                                                                       withText:textLeftMiddlle
                                                                 withStatusCode:[aStatusCode objectAtIndex:1]
                                                                withServiceCode:[aServiceCode objectAtIndex:1]
                                                                     withStatus:aStatus];
    
    UIImage *normalImageRightMiddlle = [UIImage imageNamed:@"4-midille.png"];
    UIImage *highlightImageRightMiddlle = [UIImage imageNamed:@"4-midille-highlight.png"];
    NSString *textRightMiddlle = [aTitles objectAtIndex:2];
    CWAButton *buttonImageRightMiddlle = [[CWAButton alloc] initWithNormalImage:normalImageRightMiddlle
                                                              withHighlightImage:highlightImageRightMiddlle
                                                                        withText:textRightMiddlle
                                                                  withStatusCode:[aStatusCode objectAtIndex:2]
                                                                 withServiceCode:[aServiceCode objectAtIndex:2]
                                                                      withStatus:aStatus];
    
    
    UIImage *normalImageRight = [UIImage imageNamed:@"4-right.png"];
    UIImage *highlightImageRight = [UIImage imageNamed:@"4-right-highlight.png"];
    NSString *textRight = [aTitles objectAtIndex:3];
    CWAButton *buttonImageRight = [[CWAButton alloc] initWithNormalImage:normalImageRight
                                                       withHighlightImage:highlightImageRight
                                                                 withText:textRight
                                                           withStatusCode:[aStatusCode objectAtIndex:3]
                                                          withServiceCode:[aServiceCode objectAtIndex:3]
                                                               withStatus:aStatus];
    
    [buttonImagesArray addButtonImage:buttonImageLeft];
    [buttonImagesArray addButtonImage:buttonImageLeftMiddlle];
    [buttonImagesArray addButtonImage:buttonImageRightMiddlle];
    [buttonImagesArray addButtonImage:buttonImageRight];
    }
    break;
    
    default:
    break;
  }
  return buttonImagesArray;
}


+ (CWAButtonImagesArray *)getButtonWithButtonCountIOS7:(int)aButtonCount
                                             withTitle:(NSArray *)aTitles
                                        withStatusCode:(NSArray *)aStatusCode
                                       withServiceCode:(NSArray *)aServiceCode
                                            withStatus:(NSString *)aStatus
{
  if([aTitles count] != aButtonCount || aButtonCount <=1)
  {
    return nil;
  }
  if (aStatusCode && aServiceCode) {
    if ( [aStatusCode count] < aButtonCount || [aServiceCode count] < aButtonCount) {
      return nil;
    }
  }

  CWAButtonImagesArray *buttonImagesArray = [[CWAButtonImagesArray alloc] init];
  switch (aButtonCount)
  {
    case 2:
    {
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                        withHighlightColor:[UIColor clearColor]
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode objectAtIndex:0]
                                                                withStatus:aStatus withWidth:WA_GROUPBUTTON_TWO_WIDTH];
//      [buttonImageLeft.layer setCornerRadius:2.0f];
//      [buttonImageLeft.layer setBorderWidth:0.5];
//      [buttonImageLeft.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];

            UIImage* leftUnselected = [UIImage imageNamed:@"label_2_left.png"];
            [buttonImageLeft setBackgroundImage:leftUnselected forState:UIControlStateNormal];
            buttonImageLeft.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
            buttonImageLeft.contentEdgeInsets = UIEdgeInsetsMake(0, 64, 0, 0);
            UIImage* leftSelected = [UIImage imageNamed:@"label_2_left_touch.png"];
            [buttonImageLeft setBackgroundImage:leftSelected forState:UIControlStateSelected];
            [buttonImageLeft setBackgroundImage:leftSelected forState:aStatus];

      NSString *textRight = [aTitles objectAtIndex:1];
      
      CWAButton *buttonImageRight =  [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                          withHighlightColor:[UIColor clearColor]
                                                                    withText:textRight
                                                              withStatusCode:[aStatusCode objectAtIndex:1]
                                                             withServiceCode:[aServiceCode objectAtIndex:1]
                                                                  withStatus:aStatus withWidth:WA_GROUPBUTTON_TWO_WIDTH];
        UIImage* rightUnselected = [UIImage imageNamed:@"label_2_right.png"];
        [buttonImageRight setBackgroundImage:rightUnselected forState:UIControlStateNormal];
        buttonImageRight.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        buttonImageRight.contentEdgeInsets = UIEdgeInsetsMake(0, 54, 0, 0);
        
        UIImage* rightSelected = [UIImage imageNamed:@"label_2_right_touch.png"];
        [buttonImageRight setBackgroundImage:rightSelected forState:UIControlStateSelected];
        [buttonImageRight setBackgroundImage:rightSelected forState:aStatus];
//      [buttonImageRight.layer setCornerRadius:2.0f];
//      [buttonImageRight.layer setBorderWidth:0.5];
//      [buttonImageRight.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
      
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
    case 3:
    {
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                        withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode objectAtIndex:0]
                                                                withStatus:aStatus withWidth:WA_GROUPBUTTON_THIRD_WIDTH];
//      [buttonImageLeft.layer setCornerRadius:2.0f];
//      [buttonImageLeft.layer setBorderWidth:0.5];
//      [buttonImageLeft.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
        UIImage* leftUnselected = [UIImage imageNamed:@"label_3_left.png"];
        [buttonImageLeft setBackgroundImage:leftUnselected forState:UIControlStateNormal];
        buttonImageLeft.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        buttonImageLeft.contentEdgeInsets = UIEdgeInsetsMake(0, 40, 0, 0);
        
        UIImage* leftSelected = [UIImage imageNamed:@"label_3_left_touch.png"];
        [buttonImageLeft setBackgroundImage:leftSelected forState:UIControlStateSelected];
        [buttonImageLeft setBackgroundImage:leftSelected forState:aStatus];
      
      NSString *textMiddlle = [aTitles objectAtIndex:1];
      CWAButton *buttonImageMiddlle = [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                           withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                     withText:textMiddlle
                                                               withStatusCode:[aStatusCode objectAtIndex:1]
                                                              withServiceCode:[aServiceCode objectAtIndex:1]
                                                                   withStatus:aStatus withWidth:WA_GROUPBUTTON_THIRD_WIDTH];
//      [buttonImageMiddlle.layer setBorderWidth:0.5];
//      [buttonImageMiddlle.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
        UIImage* MiddlleUnselected = [UIImage imageNamed:@"label_3_middle.png"];
        [buttonImageMiddlle setBackgroundImage:MiddlleUnselected forState:UIControlStateNormal];
        
        
        UIImage* MiddlleSelected = [UIImage imageNamed:@"label_3_middle_touch.png"];
        [buttonImageMiddlle setBackgroundImage:MiddlleSelected forState:UIControlStateSelected];
        [buttonImageMiddlle setBackgroundImage:MiddlleSelected forState:aStatus];
      NSString *textRight = [aTitles objectAtIndex:2];
      CWAButton *buttonImageRight =  [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                          withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                    withText:textRight
                                                              withStatusCode:[aStatusCode objectAtIndex:2]
                                                             withServiceCode:[aServiceCode objectAtIndex:2]
                                                                  withStatus:aStatus withWidth:WA_GROUPBUTTON_THIRD_WIDTH];
//      [buttonImageRight.layer setCornerRadius:2.0f];
//      [buttonImageRight.layer setBorderWidth:0.5];
//      [buttonImageRight.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
        UIImage* rightUnselected = [UIImage imageNamed:@"label_3_right.png"];
        [buttonImageRight setBackgroundImage:rightUnselected forState:UIControlStateNormal];
        buttonImageRight.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        buttonImageRight.contentEdgeInsets = UIEdgeInsetsMake(0, 30, 0, 0);
        
        UIImage* rightSelected = [UIImage imageNamed:@"label_3_right_touch.png"];
        [buttonImageRight setBackgroundImage:rightSelected forState:UIControlStateSelected];
        [buttonImageRight setBackgroundImage:rightSelected forState:aStatus];
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
    case 4:
    {
      NSString *textLeft = [aTitles objectAtIndex:0];
      CWAButton *buttonImageLeft = [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                        withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                  withText:textLeft
                                                            withStatusCode:[aStatusCode objectAtIndex:0]
                                                           withServiceCode:[aServiceCode objectAtIndex:0]
                                                                withStatus:aStatus withWidth:WA_GROUPBUTTON_FOURTH_WIDTH];
      [buttonImageLeft.layer setCornerRadius:2.0f];
      [buttonImageLeft.layer setBorderWidth:0.5];
      [buttonImageLeft.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
      
      NSString *textLeftMiddlle = [aTitles objectAtIndex:1];
      
      CWAButton *buttonImageLeftMiddlle =   [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                                 withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                           withText:textLeftMiddlle
                                                                     withStatusCode:[aStatusCode objectAtIndex:1]
                                                                    withServiceCode:[aServiceCode objectAtIndex:1]
                                                                         withStatus:aStatus withWidth:WA_GROUPBUTTON_FOURTH_WIDTH];
      [buttonImageLeftMiddlle.layer setBorderWidth:0.5];
      [buttonImageLeftMiddlle.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
      
      NSString *textRightMiddlle = [aTitles objectAtIndex:2];
      
      CWAButton *buttonImageRightMiddlle =  [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                                 withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                           withText:textRightMiddlle
                                                                     withStatusCode:[aStatusCode objectAtIndex:2]
                                                                    withServiceCode:[aServiceCode objectAtIndex:2]
                                                                         withStatus:aStatus withWidth:WA_GROUPBUTTON_FOURTH_WIDTH];
      [buttonImageRightMiddlle.layer setBorderWidth:0.5];
      [buttonImageRightMiddlle.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
      
      
      NSString *textRight = [aTitles objectAtIndex:3];
      
      CWAButton *buttonImageRight =  [[CWAButton alloc] initWithNormalColor:[UIColor whiteColor]
                                                          withHighlightColor:WA_GROUPBUTTON_HIGHTLIGHT_COLOR
                                                                    withText:textRight
                                                              withStatusCode:[aStatusCode objectAtIndex:3]
                                                             withServiceCode:[aServiceCode objectAtIndex:3]
                                                                  withStatus:aStatus withWidth:WA_GROUPBUTTON_FOURTH_WIDTH];
      [buttonImageRight.layer setCornerRadius:2.0f];
      [buttonImageRight.layer setBorderWidth:0.5];
      [buttonImageRight.layer setBorderColor:WA_YONYOU_RED_COLOE.CGColor];
      
      
      [buttonImagesArray addButtonImage:buttonImageLeft];
      [buttonImagesArray addButtonImage:buttonImageLeftMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRightMiddlle];
      [buttonImagesArray addButtonImage:buttonImageRight];
    }
      break;
      
    default:
      break;
  }
  return buttonImagesArray;
}


@end
