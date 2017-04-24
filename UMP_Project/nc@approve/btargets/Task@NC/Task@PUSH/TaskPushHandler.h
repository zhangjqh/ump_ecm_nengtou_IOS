//
//  TaskPushHandler.h
//  UMP_Project
//
//  Created by Kevin Forlin on 15/6/2.
//
//

#import <Foundation/Foundation.h>
#import "WATaskListNC63BnsHandler.h"
#define ncMobileApproveCode @"A0A007"
@interface TaskPushHandler : NSObject<MWATaskHandlerDelegate>
{
    CWATaskListNC63BnsHandler *iTaskBnsHandler;
    NSString *iTaskID;
}
-(void) handlePush:(NSString*) withTaskId from :(NSString *) from;

@end
