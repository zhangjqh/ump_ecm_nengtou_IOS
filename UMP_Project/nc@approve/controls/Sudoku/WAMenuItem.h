
#import <Foundation/Foundation.h>

@interface CWAMenuItem : NSObject
{
  NSString *iTitle;
  UIImage *iIcon;
  UIImage *iTouchIcon;
}

@property (nonatomic, retain) NSString *iTitle;
@property (nonatomic, retain) UIImage *iIcon;
@property (nonatomic, retain) UIImage *iTouchIcon;

- (id)initWithTitle:(NSString *)atitle
              image:(UIImage *)aImage;

- (id)initWithTitle:(NSString *)atitle
              image:(UIImage *)aImage
         touchImage:(UIImage *)aTouchImage;

@end
