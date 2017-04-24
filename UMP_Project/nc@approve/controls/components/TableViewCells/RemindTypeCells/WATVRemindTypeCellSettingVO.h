//
//  WATVRemindTypeCellSettingVO.h
//  CollaborationTask
//
//  Created by Lemon on 13-4-8.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WABaseVO.h"

@interface CWATVRemindTypeCellSettingVO : CWABaseVO
{
  CGSize iTextSize;
  CGSize iCheckBoxSize;
  CGSize iRowSize;
  
  CGFloat iTextPreSpace;
  CGFloat iRowSpace;
  CGFloat iColumnSpace;
  
  NSString *iCheckedImgName;
  NSString *iUncheckedImgName;
  
  UIFont *iTextFont;
}

@property (assign, nonatomic) CGSize iTextSize;
@property (assign, nonatomic) CGSize iCheckBoxSize;
@property (assign, nonatomic) CGSize iRowSize;
@property (assign, nonatomic) CGFloat iTextPreSpace;
@property (assign, nonatomic) CGFloat iRowSpace;
@property (assign, nonatomic) CGFloat iColumnSpace;
@property (copy, nonatomic) NSString *iCheckedImgName;
@property (copy, nonatomic) NSString *iUncheckedImgName;
@property (retain, nonatomic) UIFont *iTextFont;


@end
