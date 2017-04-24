//
//  UMNetworker.h
//  UMCommon
//
//  监控网络
//
//  Created by dingheng on 13-4-17.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability.h"


typedef enum{
    UNKNOWN =0,  //无网络
    MOBILE,      //移动GPRS
    WIFI,        //WIFI
}UMNetType; //网络类型

@interface UMNetwork : NSObject{

    Reachability *internetReach;//网络监控
}
@property (nonatomic, assign) NetworkStatus netStatus;//网络状态

/*
 * 单例对象
 */
+ (UMNetwork *)sharedInstance;

/*
 *  返回网络状态
 */
-(UMNetType)getNetType;


/*
 *  返回是否联网
 */
-(BOOL)getIsConnect;

@end
