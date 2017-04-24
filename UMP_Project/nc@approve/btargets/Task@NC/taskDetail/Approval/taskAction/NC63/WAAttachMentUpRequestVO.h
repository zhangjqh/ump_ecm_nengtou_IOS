//
//  WAAttachMentUpRequestVO.h
//  SSTASK120521A
//
//  Created by HUYCH on 13-5-31.
//
//

#import "WABaseVO.h"

@interface CWAAttachMentUpRequestVO : CWABaseVO
{
  NSString *iName;
  NSString *iContent;
}

@property (nonatomic,copy)NSString *iName;
@property (nonatomic,copy)NSString *iContent;

@end
