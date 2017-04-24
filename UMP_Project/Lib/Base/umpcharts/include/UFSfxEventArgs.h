//
//  Created by 宋永强 on 11-9-7.
//
//


#import <Foundation/Foundation.h>

@interface UFSfxEventArgs : NSObject {
@private
    __unsafe_unretained id _sender;
}
- (id)initWithSender:(id)sender;

@property(nonatomic, unsafe_unretained, readonly) id sender;


@end