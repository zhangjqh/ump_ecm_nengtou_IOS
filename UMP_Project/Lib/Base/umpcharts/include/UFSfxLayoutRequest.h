//
//  Created by 宋永强 on 11-9-3.
//
//


#import <Foundation/Foundation.h>

@class UFSfxUIElement;

@interface UFSfxLayoutRequest : NSObject 
{
@private
    __unsafe_unretained UFSfxLayoutRequest * _next;
    __unsafe_unretained UFSfxLayoutRequest * _prev;
    __unsafe_unretained UFSfxUIElement * _target;
}

@property(nonatomic, unsafe_unretained) UFSfxLayoutRequest *next;
@property(nonatomic, unsafe_unretained) UFSfxLayoutRequest *prev;
@property(nonatomic, unsafe_unretained) UFSfxUIElement *target;


@end