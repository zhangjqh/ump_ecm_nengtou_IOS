//
//  WARowVO.h
//  CustomerProj
//
//  Created by Xiaopeng Li on 12-9-14.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWARowVO : CWABaseVO<NSCoding>
{
  NSString* iStyle;
  NSMutableArray* iItemVOArray;
}

@property(nonatomic,retain) NSString* iStyle;

@property(nonatomic,retain) NSMutableArray* iItemVOArray;;

@end
