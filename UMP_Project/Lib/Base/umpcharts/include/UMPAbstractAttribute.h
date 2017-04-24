//
//  Created by 宋永强 on 12-2-28.
//
//


#import <Foundation/Foundation.h>


@interface UMPAbstractAttribute : NSObject {
@protected
    NSString * _name;
}
@property(nonatomic, readwrite, copy) NSString *name;

- (BOOL)isPrimitive;
- (BOOL)isEntity;
- (BOOL)isCollection;

@end