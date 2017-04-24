//  WAContactVO.m
//  UMP_Project
//
//  Created by BlueCode on 14/12/2.
//
//

#import <Foundation/Foundation.h>
#import "WAHttpCache.h"

@implementation WAHttpCache

@synthesize url;
@synthesize groupid;
@synthesize usrid;
@synthesize username;
@synthesize password;
@synthesize appid;

static WAHttpCache *sharedInstance = nil;
+ (WAHttpCache *)newInstance {
    @synchronized(self) {
        if (sharedInstance == nil) {
            sharedInstance = [[WAHttpCache alloc] init];
        }
    }
    return sharedInstance;
}

@end