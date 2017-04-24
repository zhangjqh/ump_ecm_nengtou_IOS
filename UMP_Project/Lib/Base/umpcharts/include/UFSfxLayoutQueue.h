//
//  Created by 宋永强 on 11-9-3.
//
//


#import <Foundation/Foundation.h>

@class UFSfxLayoutRequest;
@class UFSfxUIElement;

@interface UFSfxLayoutQueue : NSObject {
@private
    int _pocketCapacity;
    int _pocketSize;
    int _pocketReserve;
    NSMutableArray * _requestList;
    UFSfxLayoutRequest * _head;
    UFSfxLayoutRequest * _pocket;
}

@property(nonatomic, readonly) BOOL isEmpty;
@property(nonatomic, readonly) int count;

+ (int)pocketCapacity;

- (void)setRequest:(UFSfxUIElement *)e request:(UFSfxLayoutRequest *)request;
- (UFSfxLayoutRequest *)getRequest:(UFSfxUIElement *)e;
- (BOOL)canRelyOnParentRecalc:(UFSfxUIElement *)parent;

- (void)add:(UFSfxUIElement *)e;
- (void)remove:(UFSfxUIElement *)e;
- (void)removeOrphans:(UFSfxUIElement *)parent;
- (void)invalidate:(UFSfxUIElement *)e;

- (UFSfxUIElement *)getTopMost;

@end