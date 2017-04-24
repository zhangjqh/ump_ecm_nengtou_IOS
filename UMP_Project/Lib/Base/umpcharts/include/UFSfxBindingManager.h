//
//  Created by 宋永强 on 12-3-2.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObject;
@class UFSfxBindingExpression;

@interface UFSfxBindingManager : NSObject {
@private
    __unsafe_unretained UFSfxObject * _owner;
    NSMutableDictionary * _items;
}
- (id)initWithOwner:(UFSfxObject *)owner;

- (void)update:(id)dataContext;

- (void)addItem:(UFSfxBindingExpression *)object;
@end