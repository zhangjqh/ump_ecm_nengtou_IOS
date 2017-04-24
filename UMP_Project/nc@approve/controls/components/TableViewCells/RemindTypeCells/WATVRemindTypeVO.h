//
//  WARemindTypeVO.h
//  CollaborationTask
//
//  Created by Lemon on 13-3-14.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "WACommonInfoVO.h"

#define WA_REMINDTYPE_REMINDNAME_RES @"remindname"
#define WA_REMINDTYPE_REMINDID_RES @"remindid"

@interface CWATVRemindTypeVO : CWABaseVO
{
  NSString *iRemindName;
  NSString *iRemindID;
  BOOL iIsCheck;
}

@property (nonatomic ,copy) NSString *iRemindName;
@property (nonatomic ,copy) NSString *iRemindID;
@property (nonatomic ,assign) BOOL iIsCheck;

-(void)setSelfWithVO:(CWATVRemindTypeVO *)aVO;

@end
