//
//  WAItemVO.h
//  CustomerProj
//
//  Created by Xiaopeng Li on 12-9-14.
//  Copyright (c) 2012年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWAItemVO : CWABaseVO<NSCoding>
{
	 NSString* iId;
	
	 NSString* iName;
	
	 NSString* iValueDesc;
	
	 NSString* iMode;
  
   NSString* iCheckStatus;
	
	 NSString* iReferId;
	
	 NSString* iReferType;
	
	 NSString* iReadOnly;
  
   NSString* iValue;
}

@property (nonatomic,retain) NSString* iId;

@property (nonatomic,retain) NSString* iName;

@property (nonatomic,retain) NSString* iValueDesc;

@property (nonatomic,retain) NSString* iMode;

@property (nonatomic,retain) NSString* iCheckStatus;

@property (nonatomic,retain) NSString* iReferId;

@property (nonatomic,retain) NSString* iReferType;

@property (nonatomic,retain) NSString* iReadOnly;

@property (nonatomic,retain) NSString* iValue;

@end
