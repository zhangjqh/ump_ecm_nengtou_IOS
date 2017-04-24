//
//  UMContextMapping.h
//  AnimationDemo
//
//  Created by dingheng on 13-5-25.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMContext.h"
#import "UMEntityContext.h"
@interface UMContextMapping : NSObject{

    UMEntityContext * fromObject;
    UMEntityContext * toObject;
}
@property (nonatomic,strong)  UMEntityContext * fromObject;
@property (nonatomic,strong)  UMEntityContext * toObject;

+ (UMContextMapping *)sharedUMContextMapping;

-(void)mapping:(UMEntityContext *)from object:(UMEntityContext *)to;

-(void)mappingTo:(NSString *)fromPath toPath:(NSString *)toPath;

@end
