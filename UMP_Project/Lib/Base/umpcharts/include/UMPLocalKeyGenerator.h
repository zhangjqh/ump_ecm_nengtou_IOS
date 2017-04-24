//
//  Created by 宋永强 on 12-2-14.
//
//


#import <Foundation/Foundation.h>

@class UMPLocalKeyGenerator;
@protocol UMPISession;

@interface UMPLocalKeyGenerator : NSObject  {
@private
    long _firstId;
    long _nextId;
    long _lastId;
    long _batchId;
    BOOL _isDirty;
    BOOL _isNew;
    id<UMPISession> _session;
}

+ (UMPLocalKeyGenerator *)currentBatch:(id<UMPISession>)session;

+ (long)generateId:(id<UMPISession>)session;

+ (void)saveBatch:(id<UMPISession>)session;


@end