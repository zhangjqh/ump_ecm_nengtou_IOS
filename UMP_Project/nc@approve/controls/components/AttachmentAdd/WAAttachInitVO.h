//
//  WAAttachInitVO.h
//  CollaborationTask
//
//  Created by Lemon on 13-5-25.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WABaseVO.h"



@interface CWAAttachInitVO : CWABaseVO
{
  BOOL iIsHavePhoto;
  BOOL iIsHaveCamera;
  BOOL iIsHaveDocument;
}

typedef enum
{
  EWAPhotoEvent = 0,
  EWACameraEvent = 1,
  EWADocumentEvent = 2,
  EWADefaultEvent = 3
}TWAAttachmentEvent;


@property (nonatomic, assign, readonly) BOOL iIsHavePhoto;
@property (nonatomic, assign, readonly) BOOL iIsHaveCamera;
@property (nonatomic, assign, readonly) BOOL iIsHaveDocument;
@property (nonatomic, strong) NSMutableArray *iRankAry;

-(id)init;
-(void)setIIsHaveCamera:(BOOL)aIsHaveCamera;
-(void)setIIsHavePhoto:(BOOL)aIsHavePhoto;
-(void)setIIsHaveDocument:(BOOL)aIsHaveDocument;
@end
