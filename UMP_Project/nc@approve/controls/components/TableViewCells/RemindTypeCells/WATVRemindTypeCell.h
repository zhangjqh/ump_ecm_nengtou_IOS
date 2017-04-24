//
//  WACTRemindTypeCell.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-1.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WATVRemindTypeVO.h"
#import "WATVRemindTypeCellSettingVO.h"
#import "WACheckBox.h"

#define WA_TABLEVIEWREMINDCELL_TAGBASE 10000
#define WA_TABLEVIEWCELLID_WATVREMINDTYPECELL @"WATVRemindTypeCell"

@class CWATVRemindTypeCell;
@protocol CWATVRemindTypeCellDelegate <NSObject>
@optional
- (void)tableViewCell:(CWATVRemindTypeCell *)aCell layoutDoneWithLayoutview:(UIView *)aLayoutView;
- (void)waCheckBox:(CWACheckBox *)aCheckBox didCheckedAtIndex:(NSInteger)aIndex ofDataAry:(NSMutableArray *)aDataAry;
@end


@interface CWATVRemindTypeCell : UITableViewCell
{
  NSMutableArray *iDataAry;
  UIFont *iFont;
  CGFloat iTextWidth;
  CGFloat iTextHeight;
  CGFloat iTextPreSpace;
  CGFloat iMaxTextWidth;
  CGFloat iMaxRowWidth;
  CGFloat iRowHeight;
  CGFloat iRowSpace;
  CGFloat iColumnSpace;
  CGFloat iCheckBoxHeight;
  CGFloat iCheckBoxWidth;
  CGFloat iGapSize;
  NSInteger iMaxRowIndexCount;
  NSInteger iRowCount;
  NSInteger iRowIndexCount;
  UIView *iRemindView;
  NSString *iCheckImg;
  NSString *iUncheckImg;
}

@property (nonatomic, retain)NSMutableArray *iDataAry;
@property (nonatomic, retain) UIFont *iFont;
@property (assign, nonatomic, readonly) CGFloat iTextWidth;
@property (assign, nonatomic, readonly) CGFloat iTextHeight;
@property (assign, nonatomic, readonly) CGFloat iTextPreSpace;
@property (assign, nonatomic, readonly) CGFloat iMaxTextWidth;
@property (assign, nonatomic, readonly) CGFloat iMaxRowWidth;
@property (assign, nonatomic, readonly) CGFloat iRowHeight;
@property (assign, nonatomic, readonly) CGFloat iRowSpace;
@property (assign, nonatomic, readonly) CGFloat iColumnSpace;
@property (assign, nonatomic, readonly) CGFloat iCheckBoxHeight;
@property (assign, nonatomic, readonly) CGFloat iCheckBoxWidth;
@property (assign, nonatomic, readonly) NSInteger iMaxRowIndexCount;
@property (assign, nonatomic, readonly) CGFloat iGapSize;
@property (assign, nonatomic, readonly) NSInteger iRowCount;
@property (assign, nonatomic, readonly) NSInteger iRowIndexCount;
@property (copy, nonatomic, readonly) NSString *iCheckImg;
@property (copy, nonatomic, readonly) NSString *iUncheckImg;
@property (retain, nonatomic) UIView *iRemindView;
@property (assign, nonatomic) id<CWATVRemindTypeCellDelegate> iDelegate;

- (id)initInNC63RemindStyle:(NSMutableArray *)aDataAry
                   withFont:(UIFont *)aFont
               withDelegate:(id<CWATVRemindTypeCellDelegate>)aDelegate;

- (id)   init:(NSMutableArray *)aDataAry
withSettingVO:(CWATVRemindTypeCellSettingVO *)aSettingVO
 withDelegate:(id<CWATVRemindTypeCellDelegate>)aDelegate;

- (void)setEditable:(BOOL)isEditable;
- (void)reloadCheckState;
@end
