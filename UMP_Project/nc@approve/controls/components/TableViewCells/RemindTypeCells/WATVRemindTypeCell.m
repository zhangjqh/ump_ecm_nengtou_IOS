//
//  WACTRemindTypeCell.m
//  CollaborationTask
//
//  Created by Lemon on 13-4-1.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WATVRemindTypeCell.h"
#import "WAStringUtil.h"

@implementation CWATVRemindTypeCell
@synthesize iDataAry;
@synthesize iFont;
@synthesize iRemindView;
@synthesize iTextWidth;
@synthesize iTextHeight;
@synthesize iTextPreSpace;
@synthesize iMaxTextWidth;
@synthesize iMaxRowWidth;
@synthesize iMaxRowIndexCount;
@synthesize iRowHeight;
@synthesize iRowSpace;
@synthesize iColumnSpace;
@synthesize iCheckBoxWidth;
@synthesize iCheckBoxHeight;
@synthesize iGapSize;
@synthesize iRowCount;
@synthesize iRowIndexCount;
@synthesize iCheckImg;
@synthesize iUncheckImg;
@synthesize iDelegate;



- (id)initInNC63RemindStyle:(NSMutableArray *)aDataAry
                   withFont:(UIFont *)aFont
               withDelegate:(id<CWATVRemindTypeCellDelegate>)aDelegate
{
  CGSize aTextSize = CGSizeMake(80, 17);
  CGSize aCheckBoxSize = CGSizeMake(29, 29);
  CGSize aRowSize = CGSizeMake(29+4+201, 29);
  
  CWATVRemindTypeCellSettingVO *aSettingVO = [[CWATVRemindTypeCellSettingVO alloc]init];
  aSettingVO.iTextSize = aTextSize;
  aSettingVO.iCheckBoxSize = aCheckBoxSize;
  aSettingVO.iRowSize = aRowSize;
  aSettingVO.iTextPreSpace = 4;
  aSettingVO.iRowSpace = 16;
  aSettingVO.iColumnSpace = 4;
  aSettingVO.iTextFont = aFont;
  aSettingVO.iCheckedImgName = @"rTCell_checkbox_checked";
  aSettingVO.iUncheckedImgName = @"rTCell_checkbox_unchecked";
  
  self = [self init:aDataAry
      withSettingVO:aSettingVO
       withDelegate:aDelegate];
  
  return self;
}

- (id)   init:(NSMutableArray *)aDataAry
withSettingVO:(CWATVRemindTypeCellSettingVO *)aSettingVO
 withDelegate:(id<CWATVRemindTypeCellDelegate>)aDelegate
{
  self = [super initWithStyle:UITableViewCellStyleDefault
              reuseIdentifier:WA_TABLEVIEWCELLID_WATVREMINDTYPECELL];
  if (self)
  {
    iRemindView = [[UIView alloc]initWithFrame:self.frame];
    iRemindView.backgroundColor = [UIColor clearColor];
    [self addSubview:iRemindView];
    
    self.iDelegate = aDelegate;
    
    self.iDataAry = aDataAry;
    self.iFont = aSettingVO.iTextFont;
    
    iCheckImg = aSettingVO.iCheckedImgName;
    iUncheckImg = aSettingVO.iUncheckedImgName;
    
    iTextHeight = aSettingVO.iTextSize.height;
    iTextWidth = aSettingVO.iTextSize.width;
    
    iCheckBoxHeight = aSettingVO.iCheckBoxSize.height;
    iCheckBoxWidth = aSettingVO.iCheckBoxSize.width;
    
    iRowHeight = aSettingVO.iRowSize.height;
    iMaxRowWidth = aSettingVO.iRowSize.width;
    
    iTextPreSpace = aSettingVO.iTextPreSpace;
    iRowSpace = aSettingVO.iRowSpace;
    iColumnSpace = aSettingVO.iColumnSpace;
    
    iRowCount = 0;
    iRowIndexCount = 0;
    
    iGapSize = iCheckBoxWidth+iTextPreSpace+iTextWidth+iColumnSpace;
    iMaxTextWidth = iMaxRowWidth - iCheckBoxWidth - iTextPreSpace;
    
    if (iGapSize!=0)
    {
      iMaxRowIndexCount =(NSInteger)((iMaxRowWidth+iColumnSpace)/iGapSize);
    }
    else
    {
      iMaxRowIndexCount = 1;
    }
    
    [self layoutView];
    
    if (iDelegate && [iDelegate respondsToSelector:@selector(tableViewCell:layoutDoneWithLayoutview:)])
    {
      [iDelegate tableViewCell:self layoutDoneWithLayoutview:self.iRemindView];
    }
  }
  
  return self ;
}

- (void)setEditable:(BOOL)isEditable
{
  for (id aview in self.iRemindView.subviews) {
    if ([aview isKindOfClass:[UIButton class]])
    {
      [((UIButton *)aview) setEnabled:isEditable];
    }
  }
}

- (void)layoutView
{
  iRowCount = 0;
  iRowIndexCount = 0;
  
  for (NSInteger i=0; i<[self.iDataAry count]; i++)
  {
    CWATVRemindTypeVO *aVO = [self.iDataAry objectAtIndex:i];
    if ([aVO isKindOfClass:[CWATVRemindTypeVO class]])
    {
      //计算label应该的大小
      NSString *aTextStr = aVO.iRemindName;
      CGSize labelSize = [aTextStr sizeWithFont:self.iFont];
      labelSize.height = self.iTextHeight;
      //设置label
      UILabel *aLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 0, 0)];
      aLabel.backgroundColor = [UIColor clearColor];
      aLabel.font = self.iFont;
      
      NSInteger thisLenth = 0;
      NSInteger thisRowIndexAdd = 1;
      
      if (labelSize.width > self.iMaxTextWidth)
      {
        if (iRowIndexCount!=0)
        {
          iRowIndexCount = 0;
          iRowCount ++;
        }
        thisRowIndexAdd = self.iMaxRowIndexCount;
        thisLenth = self.iMaxTextWidth;
        labelSize.width = thisLenth;
      }
      else
      {
        for (thisLenth = self.iTextWidth,thisRowIndexAdd = 1; labelSize.width > thisLenth; thisRowIndexAdd++)
        {
          thisLenth += self.iGapSize;
          if (self.iRowIndexCount+thisRowIndexAdd+1 > iMaxRowIndexCount)
          {
            iRowIndexCount = 0;
            iRowCount ++;
          }
        }
        labelSize.width = thisLenth;
      }
      
      CGFloat markTextGap = (self.iCheckBoxHeight - self.iTextHeight)/2.0f;
      BOOL isCheck = aVO.iIsCheck;
      
      if (markTextGap > 0)
      {
        //添加checkbox
        CWACheckBox *aCheckBox = [[CWACheckBox alloc]initWithFrame:CGRectMake(iGapSize*iRowIndexCount,
                                                                              (iRowHeight+iRowSpace)*iRowCount,
                                                                              iCheckBoxWidth,
                                                                              iCheckBoxHeight)
                                              withCheckedImageName:self.iCheckImg
                                            withUnCheckedImageName:self.iUncheckImg
                                                       withChecked:isCheck];
        [aCheckBox setTag:WA_TABLEVIEWREMINDCELL_TAGBASE+i];
        [self.iRemindView addSubview:aCheckBox];
        [aCheckBox addTarget:self
                      action:@selector(checkBoxChecked:)
            forControlEvents:UIControlEventTouchUpInside];

        //添加label
        aLabel.frame = CGRectMake(iGapSize*iRowIndexCount+iCheckBoxWidth+iTextPreSpace,
                                  (iRowHeight+iRowSpace)*iRowCount+markTextGap,
                                  labelSize.width,
                                  labelSize.height);
        
        aLabel.text = aTextStr;
        [self.iRemindView addSubview:aLabel];

      }
      else
      {
        //添加checkbox
        CWACheckBox *aCheckBox = [[CWACheckBox alloc]initWithFrame:CGRectMake(iGapSize*iRowIndexCount,
                                                                              (iRowHeight+iRowSpace)*iRowCount-markTextGap,
                                                                              iCheckBoxWidth,
                                                                              iCheckBoxHeight)
                                              withCheckedImageName:self.iCheckImg
                                            withUnCheckedImageName:self.iUncheckImg
                                                       withChecked:isCheck];
        [aCheckBox setTag:WA_TABLEVIEWREMINDCELL_TAGBASE+i];
        [self.iRemindView addSubview:aCheckBox];

        //添加label
        aLabel.frame = CGRectMake(iGapSize*iRowIndexCount+iCheckBoxWidth+iTextPreSpace,
                                  (iRowHeight+iRowSpace)*iRowCount,
                                  labelSize.width,
                                  labelSize.height);
        
        aLabel.text = aTextStr;
        [self addSubview:aLabel];

      }
      
      //计算下次添加的位置
      iRowIndexCount += thisRowIndexAdd;
      if (iRowIndexCount >= iMaxRowIndexCount)
      {
        iRowIndexCount = 0;
        iRowCount ++;
      }

    }
  }
  if (iRowIndexCount!=0) {
    iRowIndexCount = 0;
    iRowCount ++;
  }
  
  CGRect frame = self.iRemindView.frame;
  frame.size.width = iMaxRowWidth;
  frame.size.height = (iRowHeight + iRowSpace)*iRowCount-iRowSpace;
  [self.iRemindView setFrame:frame];
  
  CGRect frameCell = self.frame;
  frameCell.size.height = self.iRemindView.frame.size.height;
  [self setFrame:frameCell];
}

- (void)checkBoxChecked:(id)sender
{
  
  if ([sender isKindOfClass:[CWACheckBox class]])
  {
    NSInteger tag = ((CWACheckBox *)sender).tag;
    NSInteger index = tag - WA_TABLEVIEWREMINDCELL_TAGBASE;
    
    ((CWATVRemindTypeVO *)
     [self.iDataAry objectAtIndex:index]).iIsCheck = ((CWACheckBox *)sender).isChecked;
    
    if (iDelegate && [iDelegate respondsToSelector:@selector(waCheckBox:didCheckedAtIndex:ofDataAry:)])
    {
      [iDelegate waCheckBox:(CWACheckBox *)sender
          didCheckedAtIndex:index
                  ofDataAry:self.iDataAry];
    }
  }
}

- (void)reloadCheckState
{
  for (id aSubView in self.iRemindView.subviews) {
    if ([aSubView isKindOfClass:[CWACheckBox class]])
    {
      NSInteger tag = [((CWACheckBox *)aSubView) tag];
      NSInteger index = tag-WA_TABLEVIEWREMINDCELL_TAGBASE;
      
      BOOL isCheck = ((CWATVRemindTypeVO *)[self.iDataAry objectAtIndex:index]).iIsCheck;
      
      [((CWACheckBox *)aSubView) setIsChecked:isCheck];
    }
  }
}

@end
