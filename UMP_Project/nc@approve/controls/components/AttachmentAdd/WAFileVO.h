
#import <UIKit/UIKit.h>
#import "WABaseVO.h"

@interface CWAFileVO : CWABaseVO <NSCopying> {
	
	NSString *iName;
	NSString *iParentDirectory;
	
	NSString *iFullName;
	
	BOOL expanded;
	NSInteger iLevel; //used for cell indentation

}

@property (nonatomic, retain) NSString *iName;
@property (nonatomic, retain) NSString *iParentDirectory;


@property (nonatomic, readonly, assign) NSString *iType;

@property (nonatomic, readonly, assign) UIImage *iImage;
@property (nonatomic, readonly, assign) UIImage *iImageBig;
@property (nonatomic, readonly, assign) NSString *detailText;
@property (nonatomic, readonly, assign) NSDate *iCreationDate;
@property (nonatomic, readonly, assign) NSDate *iModificationDate;

@property (nonatomic, readonly) BOOL isDirectory; 
@property (nonatomic, readonly) BOOL isEmptyDirectory;
@property (nonatomic, getter=isExpanded) BOOL expanded;
@property (nonatomic) NSInteger iLevel;

- (id) initWithName:(NSString *)aName parentDirectory:(NSString *)aParentDirectory;
- (NSString *) fullName;
- (UIImage *) image;
- (UIImage *) imageBig;
- (NSDate *) creationDate;
- (NSDate *) modificationDate;
- (NSString *) detailText;
- (NSString *) type;
- (BOOL) isDirectory;
@end
