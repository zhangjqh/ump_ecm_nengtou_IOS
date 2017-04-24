//
//  Created by 宋永强 on 12-3-2.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObjectProperty;
@class UFSfxObject;
@class UFSfxBinding;

@interface UFSfxBindingExpression : NSObject {
@private
    UFSfxObjectProperty * _targetProperty;
    NSString * _name;
    id _dataContext;
}
@property(nonatomic, readonly) UFSfxObjectProperty *targetProperty;
@property(nonatomic, readonly) NSString *name;
@property(nonatomic, readonly) id dataContext;

- (id)initWithProperty:(UFSfxObjectProperty *)targetProperty binding:(UFSfxBinding *)binding;

@end