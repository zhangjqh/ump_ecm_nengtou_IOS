//
//  WAItemStyleVO.h
//  CustomerProj
//
//  Created by YHL on 13-06-03.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WAItemStylishDef.h"
#import "UILabel+WALabelCategory.h"

@interface CWAItemStyleVO : CWABaseVO<NSCoding>
{
  NSString* iStyle;
  
  NSString* iAction;
}

@property (nonatomic,retain) NSString* iStyle;

@property (nonatomic,retain) NSString* iAction;

@end
