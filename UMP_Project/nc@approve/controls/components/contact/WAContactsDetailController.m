//
//  WAContactDetailController.m
//  SHADDB120528B
//
//  Created by hanning fan on 12-6-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "WAContactsDetailController.h"


@implementation CWAContactsDetailController
- (id)init
{
  self = [super init];
  if (self)
  {
    cu = [[WAContactUtil alloc] init];
  }
  return self;
}

-(void)addToAddressBook:(CWAContactVO *)contactPsnVO target:(id)sender
{
  NSString *dept = nil;
  if (contactPsnVO.iCorp && ![contactPsnVO.iCorp isEqualToString:@""])
  {
    if (contactPsnVO.iDept && ![contactPsnVO.iDept isEqualToString:@""])
    {
      dept = [NSString stringWithFormat:@"%@-%@",contactPsnVO.iCorp,contactPsnVO.iDept];
    }
    else
    {
      dept = contactPsnVO.iCorp;
    }
  }
  else
  {
    dept = contactPsnVO.iDept;
  }
  [cu addToAddressBook:contactPsnVO.iDetailArray
                  name:contactPsnVO.iTitle
                 image:[UIImage
                        imageNamed:contactPsnVO.iImage]
                   job:contactPsnVO.iJob
           corpAndDept:dept
                target:sender];
}
-(void)sendToOther:(CWAContactVO *)contactPsnVO target:(id)sender
{
  NSMutableString *contentString = [[NSMutableString alloc]init];
  [contentString appendString:contactPsnVO.iTitle];
  [contentString appendString:@"\n"];
  for (CWAContactDetailVO *contactDetailVo in contactPsnVO.iDetailArray)
  {
    if (contactDetailVo.iNumberName) {
      [contentString appendString:contactDetailVo.iNumberName];
    }
    
    [contentString appendString:@":"];
    if (contactDetailVo.iNumberValue) {
      [contentString appendString:contactDetailVo.iNumberValue];
    }
    
    [contentString appendString:@"\n"];
  }
  
  //发短信
  [cu sendSMS:nil content:contentString target:sender];
}


@end
