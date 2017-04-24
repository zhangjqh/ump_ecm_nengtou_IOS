/*!
 @header TWAResponseMsg http请求结果描述信息vo
 @abstract http请求结果描述信息，针对的是单个actiontype，包括请求的成功失败标识，描述信息，以及其下ServiceCode信息
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 12-5-7 Creation  
 */

#import <Foundation/Foundation.h>

/*!
 @class
 @abstract http请求结果描述信息，针对的是单个actiontype，包括请求的成功失败标识，描述信息，以及其下ServiceCode信息
 */
@interface CWAResponseMsg :NSObject
{
    NSNumber *iFlag;
    NSString *iDesc;
    NSArray *iServiceCodes;
    NSString *iServiceCode;
}
/*!
 @property
 @abstract 单action 成功失败标识，来自wa server返回值
 */
@property (nonatomic,copy) NSNumber *iFlag;
/*!
 @property
 @abstract 单action 成功失败描述信息，来自wa server返回值
 */
@property (nonatomic,copy) NSString *iDesc;
/*!
 @property
 @abstract 单action 下多ServiceCode信息 （此属性与下面的serviceCode互斥），来自wa server返回值
 */
@property (nonatomic,copy) NSArray *iServiceCodes;
/*!
 @property
 @abstract 单action 下单ServiceCode信息 （此属性与上面的serviceCodes互斥），来自wa server返回值
 */
@property (nonatomic,copy) NSString *iServiceCode;

#pragma mark 初始化方法
/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aFlag 成功失败标识
 @param aDesc 成功失败描述信息
 @result CWAResponseMsgVO (owned) 自动销毁
 */
+(CWAResponseMsg*) initCWAResponseMsgVOWithFlag:(NSNumber*)aFlag desc:(NSString*)aDesc;
@end
