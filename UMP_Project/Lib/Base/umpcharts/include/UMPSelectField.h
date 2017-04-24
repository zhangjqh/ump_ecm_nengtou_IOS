//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>


@interface UMPSelectField : NSObject {
@private
    NSString * _field;
    NSString * _alias;
}
@property(nonatomic, readwrite, strong) NSString *field;
@property(nonatomic, readwrite, strong) NSString *alias;

- (id)initWithField:(NSString *)field alias:(NSString *)alias;

- (id)initWithField:(NSString *)field;


@end