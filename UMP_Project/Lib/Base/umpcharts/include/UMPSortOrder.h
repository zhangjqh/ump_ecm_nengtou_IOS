//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPEnums.h"

@interface UMPSortOrder : NSObject {
@private
    NSString * _field;
    UFSfxSortOrderType _order;
}
@property(nonatomic, readwrite, strong) NSString *field;
@property(nonatomic, readwrite) UFSfxSortOrderType order;

- (id)initWithField:(NSString *)field order:(UFSfxSortOrderType)order;


@end