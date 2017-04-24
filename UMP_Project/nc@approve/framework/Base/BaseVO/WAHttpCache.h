//  utf-8;134217984che.h
//  UMP_Project
//
//  Created by BlueCode on 14/12/2.
//
//
@interface WAHttpCache : NSObject
{
    NSString *url;
    NSString *groupid;
    NSString *usrid;
    NSString *username;
    NSString *password;
    NSString *appid;
}

@property (nonatomic, retain)NSString *url;
@property (nonatomic, retain)NSString *groupid;
@property (nonatomic, retain)NSString *usrid;
@property (nonatomic, retain)NSString *username;
@property (nonatomic, retain)NSString *password;
@property (nonatomic, retain)NSString *appid;

+ (WAHttpCache *)newInstance;
@end