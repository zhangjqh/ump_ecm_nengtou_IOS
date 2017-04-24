//
//  WAAttachMentUpRequestVO.m
//  SSTASK120521A
//
//  Created by HUYCH on 13-5-31.
//
//

#import "WAAttachMentUpRequestVO.h"

@implementation CWAAttachMentUpRequestVO

@synthesize iContent;
@synthesize iName;

static NSString *WA_ATTACHMENT_NAME = @"name";
static NSString *WA_ATTACHMENT_content = @"content";

- (void)fillVoDictionary
{
  NSMutableDictionary *requestPara= [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                     self.iContent?self.iContent:@"",WA_ATTACHMENT_content,
                                     self.iName?self.iName:@"",WA_ATTACHMENT_NAME,
                                     nil];
  
  
  self.voDictionary = requestPara;
  
}


@end
