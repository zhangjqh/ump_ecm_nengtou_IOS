//
//  Created by 宋永强 on 11-8-9.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxBrush.h"

@interface UFSfxImageBrush : UFSfxBrush {
    UIImage * _image;
    UFSfxImageMode _imageMode;    
}


@property(nonatomic, strong) UIImage *image;
@property(nonatomic) UFSfxImageMode imageMode;

- (id)initWithImage:(UIImage *)image imageMode:(UFSfxImageMode)imageMode;

@end