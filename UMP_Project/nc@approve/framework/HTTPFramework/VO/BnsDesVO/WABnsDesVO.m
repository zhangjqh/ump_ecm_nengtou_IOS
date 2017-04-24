/*!
 @header CWABnsDesVO 业务描述vo
 @abstract 业务组件发起请求提供的业务描述vo 
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved. 1.00 12-5-7 Creation 
 */

#import "WABnsDesVO.h"

@implementation CWABnsDesVO
//单业务组件id
@synthesize iComponentID;
//操作集合
@synthesize iActionTypes;
@synthesize iServiceCodes;
#pragma mark init初始化方法

-(id)init
{
  if (self = [super init]) 
  {
    return self;
  }else
  {
    return nil;
  }
}


/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aComponentID 单组件id
 @param aActionType 业务操作集合
 @result CWABnsDesVO (not owned) 需要自行销毁
 */
-(CWABnsDesVO*) initWithComponetID:(NSString*)aComponentID 
                       actionTypes:(NSMutableArray*)aActionType
{
  if (self=[super init]) 
  {
    [self  setIComponentID:aComponentID];
    [self  setIActionTypes:aActionType];
  }    
  return self;
}

-(CWABnsDesVO*) initWithComponetID:(NSString*)aComponentID 
                       actionTypes:(NSMutableArray*)aActionType
                      serviceCodes:(NSMutableArray *)aServiceCodes
{
  if (self=[super init]) 
  {
    [self  setIComponentID:aComponentID];
    [self  setIActionTypes:aActionType];
    [self  setIServiceCodes:aServiceCodes];
  }    
  return self;
}

@end
