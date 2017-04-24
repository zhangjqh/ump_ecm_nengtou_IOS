//
//  UMServerProxy.h
//  UMCommon
//
//  抽象的服务代理
//
//  Created by dingheng on 13-4-16.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMNetwork.h"
#import "XEventArgs.h"

/*------异步加载------*/
/**
 *	@brief	加载过程中
 *
 *	@return progressValue 加载进度百分比
 percentage  加载进度百分值
 *
 */
typedef void ( ^UMServerProxyProgressBlock)(float progressValue,NSInteger percentage,NSData* data);
/**
 *	@brief	加载完成
 *
 *	@return data 返回数据
 *
 */
typedef void ( ^UMServerProxyFinished)(NSData* data);
/**
 *	@brief	加载失败
 *
 *	@return error 返回错误对象
 *
 */
typedef void ( ^UMServerProxyFailBlock)(NSError*error);


/*
 * 网络--HTTP请求头--对象
 */
@interface UMRequestHeader : NSObject

@property(nonatomic,assign) BOOL IsEncrypt;//加密标识
@property(nonatomic,assign) BOOL IsCompress;//压缩标识
@property(nonatomic,strong) NSString * encrypt;//加密方式
@property(nonatomic,strong) NSString * compress;//压缩方式
@property(nonatomic,strong) NSMutableDictionary * requestHeaders;//http请求头


@end

/*
 * 网络--数据--对象
 */
@interface UMRequest : NSObject

@property(nonatomic,strong) NSString * url;//URL地址
@property(nonatomic,strong) NSString * methodString;// @“GET” or @"PSOT"
@property(nonatomic,strong) NSString * postdata;// JSON数据
@property(nonatomic,assign) NSURLRequestCachePolicy cachePlicy;//缓存策略
@property(nonatomic,assign) int timeout;//请求超时
@property(nonatomic,assign) BOOL  isLoading;//是否显示loading
@property(nonatomic,assign) BOOL  isGZip;//是否压缩
@property(nonatomic,strong) XEventArgs * args;

@end



@protocol UMServerProxyDelegate <NSObject>

- (void)finish:(NSData *)data;
@end
/*
 * 网络--请求--对象
 */
@interface UMServerProxy : NSObject<NSURLConnectionDataDelegate,UMServerProxyDelegate>

@property(nonatomic,assign) id<UMServerProxyDelegate>  delegate;
//for block
@property (nonatomic,copy) UMServerProxyFinished finishBlock;//加载完成
@property (nonatomic,copy) UMServerProxyProgressBlock progressBlock;//加载进度
@property (nonatomic,copy) UMServerProxyFailBlock failBlock;//加载失败


@property (nonatomic,readonly) UMRequest * request;//数据对象
@property (nonatomic,readonly) NSMutableData* receiveData;//服务器返回的数据
@property (nonatomic,readonly) NSInteger downloadedPercentage;//下载百分比
@property (nonatomic,readonly) float progress;//下载进度

/**
 *	@brief	初始化网络请求对象
 *
 *	@param 	requestData 数据对象
 */
-(id)initWithUMRequest:(UMRequest *)requestData;

/**
 *	@brief	初始化网络请求对象
 *
 *	@param 	requestData 数据对象
 *	     	httpHeader  请求头
 */
-(id)initWithUMRequest:(UMRequest *)requestData httpHeader:(UMRequestHeader *)httpHeader;

/**
 *	@brief 同步请求
 *
 *  @return 字节数据
 */
-(NSData *)start;
/**
 *	@brief 异步请求
 *
 */
-(void)startAsynchronous;
/**
 *	@brief 取消当前请求
 *
 */
-(void)cancelCurrentRequest;


-(id)initWithUpLoadRequest:(NSMutableURLRequest *)request;

@end


