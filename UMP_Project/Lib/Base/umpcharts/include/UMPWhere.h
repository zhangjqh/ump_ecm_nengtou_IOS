//
//  Created by 宋永强 on 12-2-8.
//
//


#import <Foundation/Foundation.h>

@class UFSfxObjectList;

@interface UMPWhere : NSObject
{
@protected
    NSString *_attribute;
}
@property(nonatomic, readonly) NSString *attribute;

+ (UMPWhere *)andWithObject:(UMPWhere *)anObject;
+ (UMPWhere *)andWithObjects:(UMPWhere *)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
+ (UMPWhere *)orWithObject:(UMPWhere *)anObject;
+ (UMPWhere *)orWithObjects:(UMPWhere *)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
+ (UMPWhere *)equal:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)notEqual:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)like:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)notLike:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)greaterThan:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)greaterOrEqual:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)lessThan:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)lessOrEqual:(NSString *)attribute:(NSString *)value;
+ (UMPWhere *)isNull:(NSString *)attribute;
+ (UMPWhere *)notNull:(NSString *)attribute;

- (void)toSqlString:(NSMutableString *)stringBuffer;

@end

@interface UFSfxConcatinateWhere : UMPWhere
{
@private
    NSString * _join;
    NSMutableArray * _clauses;
}
@property(nonatomic, readonly) NSString *join;
@property(nonatomic, readonly) NSMutableArray *clauses;


- (id)initWithJoin:(NSString *)join clauses:(UMPWhere *)firstWhere, ... NS_REQUIRES_NIL_TERMINATION;
- (id)initWithJoin:(NSString *)join whereList:(NSArray *)clauses;

@end

@interface UFSfxWhereNull : UMPWhere
{
@private
    BOOL _isNotNull;
}

- (id)initWithIsNotNull:(NSString *)attribute isNotNull:(BOOL)isNotNull;

@end

@interface UFSfxWhereStringOp : UMPWhere
{
@private
    NSString * _operation;
    NSString * _val;
}
- (id)initWithVal:(NSString *)attribute value:(NSString *)val operation:(NSString *)operation;

@end


@interface UFSfxSqlOperation : UMPWhere
{
@private
    NSString * _literal;
}
- (id)initWithLiteral:(NSString *)literal;

@end