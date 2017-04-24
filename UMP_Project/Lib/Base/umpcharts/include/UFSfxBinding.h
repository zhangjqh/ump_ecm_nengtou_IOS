//
//  Created by 宋永强 on 12-3-2.
//
//


#import <Foundation/Foundation.h>


@interface UFSfxBinding : NSObject {
@private
    id _dataContext;
    NSString * _name;
}
@property(nonatomic, readwrite, strong) id dataContext;
@property(nonatomic, readwrite, copy) NSString *name;

- (id)initWithName:(NSString *)name;

- (id)initWithName:(NSString *)name dataContext:(id)dataContext;

@end