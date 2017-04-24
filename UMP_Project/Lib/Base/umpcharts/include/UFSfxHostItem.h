//
//  Created by 宋永强 on 11-8-25.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxVisualElement.h"

@class UFSfxNativeControlWrapper;
/**
* Represents an item that contains external control. There is no limitation for the control type.
* colud be CALayer or UIView.
*/
@interface UFSfxHostItem : UFSfxVisualElement {
@private
    CGSize _cacheSize;
    BOOL _suspendControlEvents;
    id _hostedControl;
}

/**
 *	@brief	获取所管理的UIView对象或者CALayer对象。
 */
@property(nonatomic, strong, readonly) id hostedControl;

@property(nonatomic, strong, readonly) UFSfxNativeControlWrapper *controlWrapper;

- (id)initWithHostedControl:(id)hostedControl;

@end