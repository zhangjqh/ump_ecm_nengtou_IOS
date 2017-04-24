
/*!
 @header CWABnsDesVO 业务描述vo
 @abstract 业务组件发起请求提供的业务描述vo 
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 12-5-7 Creation 
 */
#import <Foundation/Foundation.h>
#import "WABaseVO.h"
/*!
 @class
 @abstract 业务组件发起请求提供的业务描述vo，描述componentID,actionTypes等信息
 */
@interface CWABnsDesVO : CWABaseVO
{
    NSString* iComponentID;
    NSMutableArray *iActionTypes;
    NSMutableArray *iServiceCodes;
}
/*!
 @property
 @abstract 业务组件名称
 */
@property(nonatomic,copy) NSString* iComponentID;
/*!
 @property
 @abstract 业务操作名称，单业务操作也要放进数组中
 */
@property(nonatomic,copy) NSMutableArray *iActionTypes;

@property(nonatomic,copy) NSMutableArray *iServiceCodes;

#pragma mark 初始化方法
/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aComponentID 单组件id
 @param aActionType 业务操作集合
 @result CWABnsDesVO (not owned) 需要自行销毁
 */
-(CWABnsDesVO*) initWithComponetID:(NSString*)aComponentID 
                       actionTypes:(NSMutableArray*)aActionType;
/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aComponentID 单组件id
 @param aActionType 业务操作集合
 @param aServiceCodes service code集合 （注意，service code和actiontype在array中的位置必须对应，如果没有service code 请放空串 切忌不要放nil）
 @result CWABnsDesVO (not owned) 需要自行销毁
 */
-(CWABnsDesVO*) initWithComponetID:(NSString*)aComponentID 
                       actionTypes:(NSMutableArray*)aActionType
                      serviceCodes:(NSMutableArray *)aServiceCodes;
@end
