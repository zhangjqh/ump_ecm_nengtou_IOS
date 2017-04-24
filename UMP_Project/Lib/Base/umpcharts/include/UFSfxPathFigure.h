//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>

@class UFSfxPathSegmentCollection;
@class UFSfxPointF;

@interface UFSfxPathFigure : NSObject {
    UFSfxPathSegmentCollection * _segments;
    UFSfxPointF * _startPoint;
    BOOL _closed;
}

@property(nonatomic, strong, readonly) UFSfxPathSegmentCollection *segments;
@property(nonatomic) BOOL closed;
@property(nonatomic, copy) UFSfxPointF *startPoint;


- (CGMutablePathRef)convertToPath;

@end