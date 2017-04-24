/*!
 @header	WAContactHeadVC.h
 @abstract	联系人componet
 @discussion
 @author	rui.yang
 @copyright ufida
 @version	1.0 2013-01-06 15:52:35 Creation
 */

#import "WAContactHeadVC.h"

@interface CWAContactHeadVC ()

@end

@implementation CWAContactHeadVC
@synthesize iContactName;
@synthesize iContactHeadImg;
@synthesize iContactJob;
@synthesize iContactDept;
@synthesize iContactCorp;

//初始化方法
-(id)init:(TWAContactHeadType)aContactHeadType
{
  NSString * headXibName = @"";
  switch (aContactHeadType)
  {
    case EContactHeadComp:
    {
      headXibName = @"WAContactCompHeadVC";
    }
      break;
    case EContactHeadName:
    {
      headXibName = @"WAContactNameHeadVC";
    }
      break;
    default:
      break;
  }
  
  self = [super initWithNibName:headXibName bundle:nil];
  if (self)
  {
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
}

@end
