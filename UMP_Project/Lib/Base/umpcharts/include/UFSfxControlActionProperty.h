//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>


@interface UFSfxControlActionProperty : NSObject {
    NSString * _uniqueKey;
    NSString * _name;
}

@property(nonatomic, readonly) NSString *name;
@property(nonatomic, readonly) NSString *uniqueKey;

+ (UFSfxControlActionProperty *)registerProperty:(NSString *)name;

@end