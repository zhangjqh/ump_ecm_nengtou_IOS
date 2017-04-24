//
//  Created by 宋永强 on 11-9-10.
//
//

#import "UFSfxIComponentTreeHandler.h"

@class UFSfxThickness;

@protocol UFSfxIComponent <UFSfxIComponentTreeHandler>

- (BOOL)isLoaded;

- (UFSfxSizeF *)size;

- (BOOL)autoSize;

- (float)left;

- (float)top;

- (float)width;

- (float)height;

- (UFSfxRootElement *)rootElement;

- (UFSfxThickness *)padding;

- (UFSfxThickness *)margin;

@end