//
//  Created by 宋永强 on 12-2-10.
//
//


@protocol UMPITransaction <NSObject>

- (void)commit;
- (void)rollback;

@end