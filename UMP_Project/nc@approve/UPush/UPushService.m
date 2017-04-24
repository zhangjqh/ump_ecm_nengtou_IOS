//
//  UPushService.m
//  upush
//
//  Created by 振亚 姜 on 14-12-13.
//  Copyright (c) 2014年 Uap. All rights reserved.
//

#import "UPushService.h"
#import "ASIHTTPRequest.h"
#import <UMIOSControls/OpenUDID.h>
#import "ASIFormDataRequest.h"
#import "SvUDIDTools.h"

#define SIGNIN 10010
#define NOTICE 10011
#define ADDTAG 10012
#define RETAG  10013
#define LOCATION 10014
#define LBS 10015

@interface UPushService()<CLLocationManagerDelegate>
@property (nonatomic,strong) CLLocationManager *locationManager;


@end

@implementation UPushService

static bool backCheck;
static NSString * ips;
static NSString * ports;
static CLLocation *locationMsg;
static void (^ staticBlock)(CLLocation * locations);
static UPushService *upush = nil;
static NSString * appids;

+(UPushService *)sharedInstance{
    @synchronized(self){
        if (upush == nil) {
            upush = [[self alloc] init];
        }
    }
    return upush;
}



//开启或关闭位置推送(设置精度,距离间隔)
+(BOOL)upushLBSon:(int)lbsOn metres:(float)meters locationAccuracy:(CLLocationAccuracy)locationAccuracy ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid block:(UPushServiceOpenLocation)block{
    staticBlock = block;
    ports = port;
    ips = ip;
    appids = appid;
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"lbs_on" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:[NSNumber numberWithInt:lbsOn] forKey:@"lbsOn"];
    [theRequest setDelegate:self];
    [theRequest setTag:LBS];
    [theRequest setCompletionBlock:^{
        NSData *data = [[theRequest responseString] dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSDictionary *dic = nil;
        if ([jsonObject isKindOfClass:[NSDictionary class]]){
            
            dic = (NSDictionary *)jsonObject;
            
            NSLog(@"Dersialized JSON Dictionary = %@", dic);
            
        }
        if (dic != nil ) {
            
            int code =  [dic[@"error"] intValue];
            if (code == SUCCESS) {
                backCheck = YES;
                if (lbsOn == 1) {
                    [self openlocatinonWithDistance:meters locationAccuracy:locationAccuracy];
                }else if(lbsOn == 0){
                    [[UPushService sharedInstance].locationManager stopUpdatingLocation];
                }
                [self alertShow:@"操作成功"];
            }else{
                backCheck = NO;
                [self alertShow:@"操作失败"];
            }
        }
    }];
    [theRequest setFailedBlock:^{
        
        backCheck = NO;
        NSDictionary * userInfo = [NSDictionary dictionaryWithDictionary:theRequest.error.userInfo];
        NSString * msg = [userInfo objectForKey:@"NSLocalizedDescription"];
        NSLog(@"%@",msg);
        UIAlertView * alter = [[UIAlertView alloc] initWithTitle:@"请求失败" message:@"网络连接错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alter show];
    }];
    //超时
    [theRequest setTimeOutSeconds:10];
    [theRequest startAsynchronous];
    return backCheck;
}

//开启或关闭位置推送
+(BOOL)upushLBSon:(int)lbsOn ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid block:(UPushServiceOpenLocation)block{
    staticBlock = block;
    ports = port;
    ips = ip;
    appids = appid;
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"lbs_on" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:[NSNumber numberWithInt:lbsOn] forKey:@"lbsOn"];
    [theRequest setDelegate:self];
    [theRequest setTag:LBS];
    [theRequest setCompletionBlock:^{
        NSData *data = [[theRequest responseString] dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSDictionary *dic = nil;
        if ([jsonObject isKindOfClass:[NSDictionary class]]){
            
            dic = (NSDictionary *)jsonObject;
            
            NSLog(@"Dersialized JSON Dictionary = %@", dic);
            
        }
        if (dic != nil ) {
            
            int code =  [dic[@"error"] intValue];
            if (code == SUCCESS) {
                backCheck = YES;
                if (lbsOn == 1) {
                    [self openlocatinonWithDistance:10.0f locationAccuracy:kCLLocationAccuracyBest];
                }else if(lbsOn == 0){
                    [[UPushService sharedInstance].locationManager stopUpdatingLocation];
                }
                [self alertShow:@"操作成功"];
            }else{
                backCheck = NO;
                [self alertShow:@"操作失败"];
            }
            
        }
        
    }];
    [theRequest setFailedBlock:^{
        
        backCheck = NO;
        NSDictionary * userInfo = [NSDictionary dictionaryWithDictionary:theRequest.error.userInfo];
        NSString * msg = [userInfo objectForKey:@"NSLocalizedDescription"];
        NSLog(@"%@",msg);
        UIAlertView * alter = [[UIAlertView alloc] initWithTitle:@"请求失败" message:@"网络连接错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alter show];
    }];
    //超时
    [theRequest setTimeOutSeconds:10];
    [theRequest startAsynchronous];
    return backCheck;
}

//添加位置信息
+(BOOL)upushPosition:(CLLocation *)locationInfo ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid{
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    CLLocationCoordinate2D mylocation = locationInfo.coordinate;
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"position" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:[NSNumber numberWithFloat:mylocation.longitude] forKey:@"longitude"];
    [theRequest setPostValue:[NSNumber numberWithFloat:mylocation.latitude] forKey:@"latitude"];
    [theRequest setDelegate:self];
    [theRequest setTag:LOCATION];
    [self httpRequest:theRequest];
    if (backCheck == YES) {
        return YES;
    }else{
        return NO;
    }
}

//添加标签
+(BOOL)upushAddTag:(NSString *)tag ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid{
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"add_tag" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:tag forKey:@"tag"];
    [theRequest setDelegate:self];
    [theRequest setTag:ADDTAG];
    [self httpRequest:theRequest];
    if (backCheck == YES) {
        return YES;
    }else{
        return NO;
    }
}
//移除标签
+(BOOL)upushRemoveTag:(NSString *)tag ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid{
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"remove_tag" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:tag forKey:@"tag"];
    [theRequest setDelegate:self];
    [theRequest setTag:RETAG];
    [self httpRequest:theRequest];
    if (backCheck == YES) {
        return YES;
    }else{
        return NO;
    }
}

//通知
+(BOOL)upushNotificationClick:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid{
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"not_click" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setDelegate:self];
    [theRequest setTag:NOTICE];
    [self httpRequest:theRequest];
    if (backCheck == YES) {
        return YES;
    }else{
        return NO;
    }
}

//设备注册
+(void)upushSignin:(NSString *)token ip:(NSString *)ip port:(NSString *)port appid:(NSString *)appid deviceid:(NSString *)deviceid{
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ip,port]];
    
    NSString *deviceId;
    if (!deviceid || [deviceid isEqualToString:@""]) {
        deviceId = [SvUDIDTools UDID];
    }else{
        deviceId = deviceid;
    }

    if (ip==nil || port ==nil) {
        url = [NSURL URLWithString:URL];
    }
    
    ASIFormDataRequest *thePostRequest = [ASIFormDataRequest requestWithURL:url];
    __weak __block ASIFormDataRequest *theRequest = thePostRequest;
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"device_reg" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appid intValue]] forKey:@"appId"];
    [theRequest setPostValue:token forKey:@"token"];
    [theRequest setDelegate:self];
    [theRequest setTag:SIGNIN];
    
    //超时
    [theRequest setTimeOutSeconds:10];
    
    [theRequest startAsynchronous];
    
    [theRequest setCompletionBlock:^{
        
        // NSLog(@"%@",[theRequest responseString]);
        NSData *data = [[theRequest responseString] dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSDictionary *dic = nil;
        if ([jsonObject isKindOfClass:[NSDictionary class]]){
            
            dic = (NSDictionary *)jsonObject;
            
            NSLog(@"Dersialized JSON Dictionary = %@", dic);
            
        }
        if (dic != nil ) {
            
            int code =  [dic[@"error"] intValue];
            if (code == SUCCESS) {
               backCheck = YES;
               //[self alertShow:@"注册成功"];
                
            }else{
                backCheck = NO;
                [self alertShow:@"注册失败"];
            }
            
        }
    }];
    [theRequest setFailedBlock:^{
        
        backCheck = NO;
        NSDictionary * userInfo = [NSDictionary dictionaryWithDictionary:theRequest.error.userInfo];
        NSString * msg = [userInfo objectForKey:@"NSLocalizedDescription"];
        NSLog(@"%@",msg);
        UIAlertView * alter = [[UIAlertView alloc] initWithTitle:@"请求失败" message:@"网络连接错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alter show];
    }];
}
//发送网络请求的公共方法
+(void)httpRequest:(ASIFormDataRequest *)theRequest{
    __weak __block ASIFormDataRequest *theRequests = theRequest;
    [theRequest setCompletionBlock:^{
        
       // NSLog(@"%@",[theRequest responseString]);
        NSData *data = [[theRequests responseString] dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error = nil;
        id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        NSDictionary *dic = nil;
        if ([jsonObject isKindOfClass:[NSDictionary class]]){
            
            dic = (NSDictionary *)jsonObject;
            
            NSLog(@"Dersialized JSON Dictionary = %@", dic);
            
        }
        if (dic != nil ) {
            
            int code =  [dic[@"error"] intValue];
            if (code == SUCCESS) {
                backCheck = YES;
                //[self alertShow:@"操作成功"];
                
            }else{
                backCheck = NO;
//                if(code == DATABASE_FAIL){
//                    [self alertShow:@"数据库操作失败"];
//                    
//                }else if(code == INFO_INCOMPLETE){
//                    [self alertShow:@"提交信息不完整"];
//                    
//                }else if (code == NO_APP){
//                    [self alertShow:@"应用未找到"];
//                    
//                }else if (code == APP_DELETED){
//                     [self alertShow:@"应用已删除"];
//                    
//                }else if(code == NO_NOTICE){
//                    [self alertShow:@"消息未找到"];
//                    
//                }else if (code == NO_TAG){
//                    [self alertShow:@"标签未找到"];
//                    
//                }else{
//                    [self alertShow:@"操作失败"];
//                }

            }
            
        }
    }];
    [theRequest setFailedBlock:^{
        
        backCheck = NO;
        NSDictionary * userInfo = [NSDictionary dictionaryWithDictionary:theRequests.error.userInfo];
        NSString * msg = [userInfo objectForKey:@"NSLocalizedDescription"];
        NSLog(@"%@",msg);
        UIAlertView * alter = [[UIAlertView alloc] initWithTitle:@"请求失败" message:@"网络连接错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alter show];
    }];
    //超时
    [theRequest setTimeOutSeconds:10];
    [theRequest startAsynchronous];
}

+(void)alertShow:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
}

+(void)openlocatinonWithDistance:(float)meters locationAccuracy:(CLLocationAccuracy)locationAccuracy{
        [UPushService sharedInstance].locationManager = [[CLLocationManager alloc] init];
        [[UPushService sharedInstance].locationManager setDistanceFilter:meters];//kCLDistanceFilterNone;
        [[UPushService sharedInstance].locationManager setDesiredAccuracy:locationAccuracy];
        [UPushService sharedInstance].locationManager.delegate = [UPushService sharedInstance];
        
        if([[UPushService sharedInstance].locationManager respondsToSelector:@selector(requestAlwaysAuthorization)]) {
            [[UPushService sharedInstance].locationManager requestAlwaysAuthorization]; // 永久授权
        }
        [[UPushService sharedInstance].locationManager startUpdatingLocation];
}
//ios8新增方法,实现位置刷新
-(void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    switch (status) {
        case kCLAuthorizationStatusNotDetermined:
            if ([[UPushService sharedInstance].locationManager respondsToSelector:@selector(requestAlwaysAuthorization)]) {
                [[UPushService sharedInstance].locationManager requestWhenInUseAuthorization];
            }
            break;
            
        default:
            break;
    }
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    CLLocation * newLocations = [locations lastObject];
    locationMsg = newLocations;
    CLLocationCoordinate2D mylocation = newLocations.coordinate;
    NSLog(@"%f,%f",mylocation.latitude,mylocation.longitude);
//    NSString *deviceId = [OpenUDID value];
    NSString *deviceId = [SvUDIDTools UDID];
    NSURL * url = [NSURL URLWithString:[NSString stringWithFormat:@"http://%@:%@/client/ios.do",ips,ports]];
    if (ips==nil || ports ==nil) {
        url = [NSURL URLWithString:URL];
    }
    //定位成功调用block返回位置信息
    if (backCheck) {
        staticBlock(locationMsg);
    }
    
    __weak __block ASIFormDataRequest *theRequest = [ASIFormDataRequest requestWithURL:url];
    
    [theRequest setValidatesSecureCertificate:NO];
    //设置请求头信息
    [theRequest addRequestHeader:@"Content-Type" value:@"application/x-www-form-urlencoded; charset=UTF-8"];
    [theRequest setRequestMethod:@"POST"];
    [theRequest setPostValue:@"position" forKey:@"type"];
    [theRequest setPostValue:deviceId forKey:@"deviceId"];
    [theRequest setPostValue:[NSNumber numberWithInt:[appids intValue]] forKey:@"appId"];
    NSString *longitude = [NSString stringWithFormat:@"%f",mylocation.longitude];
    NSString *latitude = [NSString stringWithFormat:@"%f",mylocation.latitude];
    [theRequest setPostValue:longitude forKey:@"longitude"];
    [theRequest setPostValue:latitude forKey:@"latitude"];
    [theRequest setDelegate:self];
    //超时
    [theRequest setTimeOutSeconds:10];
    [theRequest startAsynchronous];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    if ([error code] == kCLErrorDenied)
    {
        //访问被拒绝
        NSLog(@"访问被拒绝");
    }
    if ([error code] == kCLErrorLocationUnknown) {
        //无法获取位置信息
        NSLog(@"无法获取位置信息!");
    }
}

+(NSString *)getDeviceId{
    return [SvUDIDTools UDID];
}

@end
