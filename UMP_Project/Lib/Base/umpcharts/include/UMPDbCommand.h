//
//  Created by 宋永强 on 12-2-11.
//
//


#import <Foundation/Foundation.h>

@protocol UMPISession;
@class UFSfxArrayList;
@class UMPDataReader;

@interface UMPDbCommand : NSObject {
@private
    NSString * _commandText;
    id<UMPISession> _conn;
    UFSfxArrayList * _parameters;
}

@property(nonatomic, readonly) UFSfxArrayList *parameters;
@property(nonatomic, readwrite, strong) NSString *commandText;
@property(nonatomic, readwrite, strong) id <UMPISession> conn;

- (void)executeNonQuery;
- (long)executeScalarLong;
- (int)executeScalarInt;
- (double)executeScalarDouble;
- (NSString *)executeScalarString;
- (UMPDataReader *)executeReader;

@end