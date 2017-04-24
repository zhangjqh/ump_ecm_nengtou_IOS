//
//  Created by 宋永强 on 12-2-10.
//
//


#import <Foundation/Foundation.h>
#import "UMPEntityAlias.h"
#import "UMPEnums.h"

@interface UMPJoinCondition : UMPEntityAlias {
@protected
    UFSfxJoinType _joinType;
    NSString * _leftField;
    NSString * _rightField;
}
@property(nonatomic, readwrite) UFSfxJoinType joinType;
@property(nonatomic, readwrite, strong) NSString *leftField;
@property(nonatomic, readwrite, strong) NSString *rightField;


@end