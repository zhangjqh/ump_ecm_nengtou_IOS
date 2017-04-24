//
//  CWAMainBodyContenController.h
//  SSTASK120521A
//
//  Created by HUYCH on 13-6-21.
//
//

#import "WAAttachmentController.h"

@interface CWAMainBodyContenController : CWAAttachmentController

- (void) attchDownloadWithID:(NSString*)aID
                    withFileSize:(NSInteger)aFileSize
                    withFileName:(NSString*)aFileName
                    withFileType:(NSString*)aFileType
               withFileDirectory:(NSString *)aFileDirectory
                withComplementID:(NSString *)aComplementId
                 withServiceCode:(NSString *)aServiceCode
                  withTaskID:(NSString *)aTaskID
               WithStatuskey:(NSString *)aStatuskey
              WithStatuscode:(NSString *)aStatuscode
                  withActionType:(NSString *)aActiontype;
@end
