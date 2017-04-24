//
//  ReminderAndTipsHeadViewBuilder.m
//  SSTASK120521A
//
//  Created by HUYCH on 13-8-12.
//
//

#import "ReminderAndTipsHeadViewBuilder.h"
#import "WAUFTool.h"
#import "TaskDef.h"
@implementation ReminderAndTipsHeadViewBuilder

static float startFrameOfX = 16.0f;
static float startFrameOfY = 0.0f;
static float startFrameOfWidth = 46.0f;
static float startFrameOfHeight = 24.0f;

static float headerViewFrameOfX = 0.00f;
static float headerViewFrameOfY = 0.00f;
static float headerViewFrameOfWidth = 320.00f;
static float headerViewFrameOfHeight = 24.00f;

+ (UIView *)getHeadViewWithReminder:(NSString *)aReminder
                           WithTips:(NSString *)aTips
{
  UIView *headerView = [[UIView alloc] init];
  [headerView setBackgroundColor:[UIColor clearColor]];
  
  CGRect startFrame = CGRectMake(startFrameOfX, startFrameOfY, startFrameOfWidth, startFrameOfHeight);
  CGRect headerViewFrame = CGRectMake(headerViewFrameOfX, headerViewFrameOfY, headerViewFrameOfWidth, headerViewFrameOfHeight);
  UIFont *font;
  if (WA_CURENT_OS_V>=7.0)
  {
    font = WA_TASK_FONT_KAKU_W3_12;
  }
  else
  {
    font = WA_TASK_FONT_HT_W3_12;
  }
  
  if(aTips && ![@"" isEqualToString:aTips])
  {
    UILabel *reminderLabel1 = [[UILabel alloc] init];
    reminderLabel1.frame = startFrame;
    NSString *tips = NSLocalizedStringFromTable(@"tips", @"btarget_task", nil);
    NSString *reminder1 = tips;
    reminderLabel1.text = reminder1;
    [reminderLabel1 setBackgroundColor:[UIColor clearColor]];
   
    reminderLabel1.font =font;
    reminderLabel1.textColor = WACOLOR(255, 80, 01);
    [headerView addSubview:reminderLabel1];
    
    
    UILabel *reminderContentLabel2 = [[UILabel alloc] init];
    startFrame.origin.x = startFrame.origin.x + startFrame.size.width;
    startFrame.size.width = 300 - startFrame.origin.x;
    reminderContentLabel2.frame = startFrame;
    reminderContentLabel2.text = aTips;
    reminderContentLabel2.numberOfLines = 2;
    reminderContentLabel2.minimumScaleFactor = 12.0f;
    reminderContentLabel2.font = font;
    reminderContentLabel2.textColor = WACOLOR(255, 80, 01);
    reminderContentLabel2.lineBreakMode = NSLineBreakByTruncatingTail;
    [reminderContentLabel2 setBackgroundColor:[UIColor clearColor]];
    [headerView addSubview:reminderContentLabel2];
    startFrame.origin.y = startFrame.origin.y + startFrame.size.height;
  }
  
  if(aReminder && ![@"" isEqualToString:aReminder])
  {
    UILabel *reminderLabel = [[UILabel alloc] init];
    startFrame.origin.x = startFrameOfX;
    startFrame.size.width = startFrameOfWidth;
    reminderLabel.frame = startFrame;
    NSString *reminder = NSLocalizedStringFromTable(@"reminder", @"btarget_task", nil);
    reminderLabel.text = reminder;
    reminderLabel.textColor = WACOLOR(255, 80, 01);
    [reminderLabel setBackgroundColor:[UIColor clearColor]];
    reminderLabel.font = font;
    [reminderLabel setBackgroundColor:[UIColor clearColor]];
    [headerView addSubview:reminderLabel];
    
    UILabel *reminderContentLabel = [[UILabel alloc] init];
    startFrame.origin.x = startFrame.origin.x + startFrame.size.width;
    startFrame.size.width = 300 - startFrame.origin.x;
    reminderContentLabel.frame = startFrame;
    reminderContentLabel.text = aReminder;
    reminderContentLabel.numberOfLines = 2;
    [reminderContentLabel setBackgroundColor:[UIColor clearColor]];
    reminderContentLabel.font = font;
     reminderContentLabel.textColor = WACOLOR(255, 80, 01);
    reminderContentLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    [reminderContentLabel setBackgroundColor:[UIColor clearColor]];
    [headerView addSubview:reminderContentLabel];

  }
  
  if(aTips && ![@"" isEqualToString:aTips] && aReminder && ![@"" isEqualToString:aReminder])
  {
    headerViewFrame.size.height = headerViewFrame.size.height + startFrame.size.height;
  }
  
  headerView.frame = headerViewFrame;
  return headerView;
}

@end
