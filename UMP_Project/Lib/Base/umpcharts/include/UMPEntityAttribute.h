//
//  Created by 宋永强 on 12-2-28.
//
//


#import <Foundation/Foundation.h>
#import "UMPFieldAttribute.h"

@interface UMPEntityAttribute : UMPFieldAttribute {
@private
    Class _entityType;
}
@property(nonatomic, readwrite, assign) Class entityType;

@end