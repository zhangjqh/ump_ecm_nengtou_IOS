
#ifndef AttachmentPickerTest_AttachmentPickeDelegate_h
#define AttachmentPickerTest_AttachmentPickeDelegate_h

#import "WAAttachmentBaseBnsHandler.h"

@protocol CWAFileAccordionDatasourceManagerDelegate <NSObject>
@required
- (void) fileAccordionDatasourceManager:(CWAAttachmentBaseBnsHandler *) manager
              didInsertRowsAtIndexPaths:(NSArray *)indexPaths;
- (void) fileAccordionDatasourceManager:(CWAAttachmentBaseBnsHandler *) manager
              didRemoveRowsAtIndexPaths:(NSArray *)indexPaths;

@end


#endif
