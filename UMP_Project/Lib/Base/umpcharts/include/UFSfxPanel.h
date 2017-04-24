//
//  UFSfxPanel.h
//  UFSfxShared
//
//  Created by 宋永强 on 11-9-2.
//  Copyright 2011年 UFIDA. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UFSfxControl.h"

@class UFSfxPanelElement;
 
@interface UFSfxPanel : UFSfxControl {
    UFSfxPanelElement * _panelElement;
    UIEdgeInsets    _priorInset;
    BOOL            _priorInsetSaved;
    BOOL            _keyboardVisible;
    CGRect          _keyboardRect;
    CGSize          _originalContentSize;
}

@property(nonatomic, strong, readonly) UFSfxPanelElement * panelElement;
@property(nonatomic) BOOL stretchHorizontally;
@property(nonatomic) BOOL stretchVertical;

- (void)adjustOffsetToIdealIfNeeded;

@end
