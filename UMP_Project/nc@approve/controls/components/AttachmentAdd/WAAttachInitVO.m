//
//  WAAttachInitVO.m
//  CollaborationTask
//
//  Created by Lemon on 13-5-25.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WAAttachInitVO.h"

@implementation CWAAttachInitVO
@synthesize iIsHavePhoto;
@synthesize iIsHaveCamera;
@synthesize iIsHaveDocument;
@synthesize iRankAry;

- (id)init
{
  self = [super init];
  if (self)
  {
    iIsHavePhoto = YES;
    iIsHaveCamera = NO;
    iIsHaveDocument = NO;
    iRankAry = [[NSMutableArray alloc]initWithCapacity:1];
    [iRankAry addObject:[NSString stringWithFormat:@"%d",EWAPhotoEvent]];
  }
  return self;
}

-(BOOL)InsertRank:(TWAAttachmentEvent)aEventType
{
  for (int i=0; i<[iRankAry count]; i++)
  {
    int EventNum = [[iRankAry objectAtIndex:i]intValue];
    if (aEventType<EventNum)
    {
      [iRankAry insertObject:[NSString stringWithFormat:@"%d",aEventType] atIndex:i];
      return YES;
    }
  }
  [iRankAry addObject:[NSString stringWithFormat:@"%d",aEventType]];
  return YES;
}

-(BOOL)RemoveRank:(TWAAttachmentEvent)aEventType
{
  for (int i=0; i<[iRankAry count]; i++)
  {
    int EventNum = [[iRankAry objectAtIndex:i]intValue];
    if (aEventType == EventNum)
    {
      [iRankAry removeObjectAtIndex:i];
      return YES;
    }
  }
  return NO;
}

-(void)setIIsHaveCamera:(BOOL)aIsHaveCamera
{
  if (aIsHaveCamera == !iIsHaveCamera)
  {
    if (iIsHaveCamera)
    {
      [self RemoveRank:EWACameraEvent];
    }
    else
    {
      [self InsertRank:EWACameraEvent];
    }
  }
  iIsHaveCamera = aIsHaveCamera;
}

-(void)setIIsHavePhoto:(BOOL)aIsHavePhoto
{
  if (aIsHavePhoto == !iIsHavePhoto)
  {
    if (iIsHavePhoto)
    {
      [self RemoveRank:EWAPhotoEvent];
    }
    else
    {
      [self InsertRank:EWAPhotoEvent];
    }
  }
  iIsHavePhoto = aIsHavePhoto;
}

-(void)setIIsHaveDocument:(BOOL)aIsHaveDocument
{
  if (aIsHaveDocument == !iIsHaveDocument)
  {
    if (iIsHaveDocument)
    {
      [self RemoveRank:EWADocumentEvent];
    }
    else
    {
      [self InsertRank:EWADocumentEvent];
    }
  }
  iIsHaveDocument = aIsHaveDocument;
}

@end
