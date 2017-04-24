//
//  Created by 宋永强 on 12-2-9.
//
//


@protocol UMPMetaDataIVisitor;

@protocol UMPMetaDataIVisitable
- (void)accept:(id<UMPMetaDataIVisitor>)visitor;
@end