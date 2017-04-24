//
//  Created by 宋永强 on 11-9-5.
//
//


#import <Foundation/Foundation.h>
#import "UFSfxActionControl.h"

@class UFSfxButtonElement;

@interface UFSfxButton : UFSfxActionControl {
@private
    __unsafe_unretained UFSfxButtonElement * _buttonElement;
    UIImage * _normalImage;
    UIImage * _highlightedImage;
//    NSString * _normalText;
//    NSString * _highlightedText;
//    UFSfxBrush * _normalFillBrush;
}

@property(nonatomic, copy) NSString * text;
@property(nonatomic, strong) UIImage * image;
@property(nonatomic, strong) UIImage * highlightedImage;

@end
