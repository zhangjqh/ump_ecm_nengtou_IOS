//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>


@interface UMPDatabaseInfo : NSObject {
@private
    NSString * _dbPath;
    BOOL _logsErrors;
    BOOL _traceExecution;
    NSUInteger _busyRetryTimeout;
    NSString * _encryptKey;
}
@property(nonatomic, readwrite, strong) NSString *dbPath;
@property(nonatomic, readonly, strong) id globalIndex;
@property(nonatomic, readwrite, assign) BOOL logsErrors;
@property(nonatomic, readwrite, assign) BOOL traceExecution;
@property(nonatomic, readwrite, assign) NSUInteger busyRetryTimeout;
@property(nonatomic, readwrite, strong) NSString *encryptKey;

@end