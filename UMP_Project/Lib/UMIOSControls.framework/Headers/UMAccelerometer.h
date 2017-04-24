
#import <UIKit/UIKit.h>

@interface UMAccelerometer : NSObject<UIAccelerometerDelegate>
{
    double x;
    double y;
    double z;
    NSTimeInterval timestamp;
}

@property (readonly, assign) BOOL isRunning;

- (UMAccelerometer*)init;

- (void)start;
- (void)stop;

@end
