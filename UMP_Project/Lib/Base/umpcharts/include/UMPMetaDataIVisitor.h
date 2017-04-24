//
//  Created by 宋永强 on 12-2-9.
//
//


@class UMPFieldAttribute;

@protocol UMPMetaDataIVisitor

- (void)visitField:(UMPFieldAttribute *)model;

@end