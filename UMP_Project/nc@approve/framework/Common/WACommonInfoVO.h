/*!
 @header CWACommonInfoVO 通用信息vo 
 @abstract 类似于登陆后获取的一些常驻内存的上下文信息 单例
 @author Created by sunset 
 @version Copyright (c) 2012 __wa__. All rights reserved.1.00 12-5-15 Creation 
 */
#import <Foundation/Foundation.h>
#import "WABaseVO.h"
#import "CommonDef.h"
/*!
 @class
 @abstract 登陆后获取的一些常驻内存的上下文信息 单例
 */
@interface CWACommonInfoVO : CWABaseVO
{
    NSMutableDictionary *iAttSizeDic;
    NSString *iUserName;
    NSString *iUserID;
    NSString *iGroupCode;
    NSString *iGroupID;
    NSString *iAppVersion;
    NSDictionary *iSCWithInfoDictionary;
    NSDictionary *iLoginInfoForUserName;
    NSInteger iAccountType;
    NSString *iAppUpdateUrl;
}
/*!
 @property
 @abstract 预登陆返回的版本信息
 */    
@property (copy,nonatomic) NSString *iAppVersion;

/*!
 @property
 @abstract 附件大小
 */    
//@property (readonly,nonatomic) NSMutableDictionary *iAttSize;
/*!
 @property
 @abstract 用户名
 */ 
@property (copy,nonatomic) NSString *iUserName;
/*!
 @property
 @abstract 用户id
 */ 
@property (copy,nonatomic) NSString *iUserID;
/*!
 @property 
 @abstract group code
 */ 
@property (copy,nonatomic) NSString *iGroupCode;
/*!
 @property
 @abstract group id
 */ 
@property (copy,nonatomic) NSString *iGroupID;
/*!
 @property
 @abstract service code 和它对应的 以上通用属性的dictionary
 */ 
@property (copy,nonatomic) NSDictionary *iSCWithInfoDictionary;
/*!
 @property
 @abstract 登陆后缓存的本地数据（session过期重登陆除外，session过期重登陆直接存储）
 */
@property (copy,nonatomic) NSDictionary *iLoginInfoForUserName;
/*!
 @property
 @abstract 帐套类型(u8,nc等)
 */
@property (assign,nonatomic,readonly) NSInteger iAccountType;
/*!
 @property
 @abstract 多service code 登陆的附件大小字典
 */
@property (retain,nonatomic) NSMutableDictionary *iAttSizeDic;
/*!
 @property
 @abstract iAppUpdateUrl 如果app有更新 更新地址
 */
@property (retain,nonatomic) NSString *iAppUpdateUrl;

#pragma mark 获取单例
/*!
 @method
 @abstract 单例实例获取
 @discussion 
 @result CWACommonInfoVO
 */
+(id)sharedManager;

/*!
 @method
 @abstract 根据servicecode查询 获取groupid和userid
 @discussion 
 @result NSDictionary
 */
-(NSDictionary *)getGroupIDAndUserIDByServiceCode:(NSString *)aServiceCode;

/*!
 @method
 @abstract 获取groupid,usrid占位字典，返回值只有两对key value,key 为groupid usrid value都为空串@“” 
 @discussion 
 @result NSDictionary
 */
+(NSDictionary *)getDefaultEmptyGroupIDAndUserID;
/*!
 @method
 @abstract iAccountType 赋值方法
 @discussion 
 @result 
 */
+(void)setAccountType:(NSInteger)anAccountType;
/*!
 @method
 @abstract 根据service code获取当前 servicecode对应的附件大小
 @discussion
 @result
 */
-(NSString *)getAttSizeWithServiceCode:(NSString *)aServiceCode;

@end
