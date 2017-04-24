//
//  WAAccordionViewDelegate.h
//  AttachmentPickerTest
//
//  Created by HUYCH on 13-3-1.
//  Copyright (c) 2013年 HUYCH. All rights reserved.
//

#ifndef AttachmentPickerTest_WAAccordionViewDelegate_h
#define AttachmentPickerTest_WAAccordionViewDelegate_h

@class CWAAccordionViewController;
@protocol MWAFileSelectedDelegate <NSObject>

- (void)WAAccordionViewController:(CWAAccordionViewController *)aAccordionViewController
                 selectedFilePath:(NSString *)aFilePath;

@end

#endif
