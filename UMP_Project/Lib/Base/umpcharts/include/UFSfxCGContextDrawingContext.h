//
//  Created by 宋永强 on 11-8-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxDrawingContext.h"

@interface UFSfxCGContextDrawingContext : UFSfxDrawingContext {
    CGContextRef _context;
    int _opacity;
}
@property(nonatomic, unsafe_unretained) CGContextRef context;

- (id)initWithContext:(CGContextRef)context;



@end