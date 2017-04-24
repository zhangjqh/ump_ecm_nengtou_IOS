//
//  Created by 宋永强 on 12-2-21.
//
//


#import <Foundation/Foundation.h>


@interface UMPAbstractDB : NSObject

/**
* reset encrypt key, if newkey = nil then will clear encrpty key.
*/
+ (BOOL)resetEncryptKey:(NSString *)newKey;

/*!
  @method
  @creates the database and initializes the tables in this package.
 */
- (void)createDatabase;

/*!
  @method
  @remove all data from all tables.
 */
- (void)cleanAllData;

- (NSArray *)createStatements;

- (NSArray *)clearStatements;

@end