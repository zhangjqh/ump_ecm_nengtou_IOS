/*!
 @header	 WAPopupMenuItem.m
 @abstract	 菜单项
 @discussion
 @author	chenrh1
 @copyright	yonyou
 @version	1.0 2013-11-23 11:27:02 Creation
 */

#import "WAPopupMenuItem.h"

@implementation CWAPopupMenuItem
@synthesize iImage;
@synthesize iTitle;
@synthesize iFforeColor;
@synthesize iTarget;
@synthesize iAction;
@synthesize iAalignment;
@synthesize iOtherAttribute;
@synthesize iTag;
@synthesize iSupertag;

#pragma mark 初始化方法们-----------------------------------------
+ (instancetype) createMenuItemWithTitle:(NSString *) title
                                image:(UIImage *) image
                               target:(id)target
                               action:(SEL) action
{
  return [[CWAPopupMenuItem alloc] init:title
                                  image:image
                                 target:target
                                 action:action];
}

- (id) init:(NSString *) atitle
      image:(UIImage *) aimage
     target:(id)atarget
     action:(SEL) aaction
{
  //NSParameterAssert(atitle.length || aimage);
  
  self = [super init];
  if (self)
  {
    
    self.iTitle = atitle;
    self.iImage = aimage;
    self.iTarget = atarget;
    self.iAction = aaction;
    
  }
  
  return self;
}
+ (instancetype) menuItem:(NSString *) title
                    image:(UIImage *) image
                   target:(id)target
                   action:(SEL) action
                      tag:(int)tag
                 supertag:(int)supertag
{
  return [[CWAPopupMenuItem alloc] init:title
                            image:image
                           target:target
                           action:action
                              tag:tag
                         supertag:supertag];
}

- (id) init:(NSString *) title
      image:(UIImage *) image
     target:(id)target
     action:(SEL) action
        tag:(int)tag
   supertag:(int)supertag
{
  //NSParameterAssert(title.length || image);
  
  self = [super init];
  if (self)
  {
    
    self.iTitle = title;
    self.iImage = image;
    self.iTarget = target;
    self.iAction = action;
    self.iTag = tag;
    self.iSupertag = supertag;
  }
  return self;
}

#pragma mark 判断菜单项是否有点击事件---------------------------------
- (BOOL) enabled
{
  return self.iTarget != nil && iAction != NULL;
}

#pragma mark  菜单项点击处理方法.....................................
- (void) performAction
{
  __strong id atarget = self.iTarget;
  
  if (atarget && [atarget respondsToSelector:iAction])
  {
    
    [atarget performSelectorOnMainThread:iAction withObject:self waitUntilDone:YES];
  }
}

#pragma mark 菜单项描述......重写description
- (NSString *) description
{
  return [NSString stringWithFormat:@"<%@ #%p %@>", [self class], self, self.iTitle];
}

@end


