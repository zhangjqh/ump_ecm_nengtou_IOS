//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>


@interface UMPEntityAlias : NSObject {
@protected
    NSString * _alias;
    NSString * _entity;
}
@property(nonatomic, readwrite, strong) NSString *alias;
@property(nonatomic, readwrite, strong) NSString *entity;

- (id)initWithEntity:(NSString *)entity;

- (id)initWithEntity:(NSString *)entity alias:(NSString *)alias;


@end