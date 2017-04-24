//
//  WAGroupTabBarView.m
//  SSTASK120521A
//
//  Created by evan on 14-6-13.
//
//

#import "WAGroupTabBarView.h"
#import "TaskDef.h"

@implementation CWAGroupTabBarView

#define WA_YONYOU_RED_COLOR [UIColor colorWithRed:229.0f/255.0f green:0.0f/255.0f blue:17.0f/255.0f alpha:1]
- (void) addButtons
{
  CGFloat startPointOfX = iEdgeDistance;
  CGFloat startPointOfY = 9.00f;
  for (int i = 0; i < iButtonImageArray.iButtonImages.count ; i++)
  {
    CWAButton *buttonImage = [iButtonImageArray.iButtonImages objectAtIndex:i];
    buttonImage.frame = CGRectMake(startPointOfX,startPointOfY,[buttonImage getWidth],[buttonImage getHeigth]);
    [buttonImage setTag:(200+i)];
    [buttonImage addTarget:self
                    action:@selector(touchHandle:)
          forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:buttonImage];
    NSString *title = buttonImage.iStatusCode;
    //标题
    UILabel *settingLabel = [[UILabel alloc] init];
    CGRect setLabelFrame = CGRectMake(startPointOfX - 12 , 32, 48, 16);
    [settingLabel setFrame:setLabelFrame];
    [settingLabel setText:title];
    [settingLabel setFont:WA_TASK_FONT_HT_W3_10];
    [settingLabel setTextColor:[UIColor grayColor]];
    [settingLabel setTextAlignment:NSTextAlignmentCenter];
    [settingLabel setTag:(2000+i)];
    [self addSubview:settingLabel];

    
    startPointOfX = startPointOfX + [buttonImage getWidth] + iInterval;
  }
}


- (void)touchHandle:(id)sender
{
  if(currentButton && currentButton != sender)
  {
    //点击事件发生以后，上一个被点击的按钮图标变回
    [currentButton setButtonStatus:ENORMAL];
    //原标签 底部标题颜色修改
    UILabel *curentLabel = (UILabel *)[self viewWithTag:currentHighlightIndex + 2000];
    [curentLabel setTextColor:WA_TASK_COLOR_143];
    //点击事件发生以后，被点击的按钮图标变化
    CWAButton *touchedButton = (CWAButton*)sender;
    [touchedButton setButtonStatus:EHIGHLIGHT];
    //原标签 底部标题颜色修改
    NSInteger curentTag = touchedButton.tag - 200;
    UILabel *newLabel = (UILabel *)[self viewWithTag:curentTag + 2000];
    [newLabel setTextColor:WA_YONYOU_RED_COLOR];
    currentButton = (CWAButton *)sender;
  }
  else if (!currentButton)
  {
    //点击事件发生以后，被点击的按钮图标变化
    CWAButton *touchedButton = (CWAButton*)sender;
    [touchedButton setButtonStatus:EHIGHLIGHT];
    currentButton = (CWAButton *)sender;
    //底部标题颜色修改
    NSInteger curentTag = touchedButton.tag - 200;
    UILabel *newLabel = (UILabel *)[self viewWithTag:curentTag + 2000];
    [newLabel setTextColor:WA_YONYOU_RED_COLOR];
  }
  currentHighlightIndex = currentButton.tag - 200;
}


@end
