//
//  Created by 宋永强 on 11-11-23.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxObject.h"

@class UFSfxUIElement;

/**
* abstract class
*/
@interface UFSfxDefinitionBase : UFSfxObject {
@private
    __unsafe_unretained UFSfxUIElement * _owner;
    BOOL _isColumnDefinition;
    int _index;
    float _minSize;
    float _measureSize;
    float _offset;
    float _sizeCache;
    int _flags;
}

@property(nonatomic, unsafe_unretained, readonly) UFSfxUIElement *parent;




@end