
#import "WAFileVO.h"


@implementation CWAFileVO
@synthesize iName, iParentDirectory;
@synthesize expanded;
@synthesize iLevel;
@synthesize iType;
@synthesize iImage;
@synthesize iModificationDate;
@synthesize iCreationDate;
@synthesize iImageBig;
@synthesize isDirectory;
@synthesize isEmptyDirectory;



//Lazy properties:
- (NSString *) fullName{
	return [iParentDirectory stringByAppendingPathComponent:iName];
}

- (UIImage *) image{
	if (!iImage) {
		if ([NSFileTypeDirectory isEqualToString:[self type]]) 
			iImage = [UIImage imageNamed:@"Folder56.png"];
		else
			iImage = [UIImage imageNamed:@"Document56.png"];		
	}
	return iImage;
}
- (UIImage *) imageBig{
	if (!iImageBig) {
		if ([NSFileTypeDirectory isEqualToString:[self type]]) 
			iImageBig = [UIImage imageNamed:@"Folder512.png"];
		else
			iImageBig = [UIImage imageNamed:@"Document512.png"];		
	}
	return iImageBig;
	
}
- (NSDate *) creationDate
{
	if (!iCreationDate)
  {
		NSFileManager *manager = [NSFileManager defaultManager];
		
		iCreationDate = [[manager attributesOfItemAtPath:[iParentDirectory stringByAppendingPathComponent:iName] error:NULL]  fileCreationDate];
  }
    return iCreationDate;
}
  
- (NSDate *) modificationDate
{
	NSFileManager *manager = [NSFileManager defaultManager];
	iModificationDate = [[manager attributesOfItemAtPath:
                        [iParentDirectory stringByAppendingPathComponent:iName] error:NULL] fileModificationDate];
	return iModificationDate;
	
}
- (NSString *) detailText
{
	return [[self modificationDate] description];
}

- (NSString *) type
{
	if (!iType)
  {
		NSFileManager *manager = [NSFileManager defaultManager];
		iType = [[manager attributesOfItemAtPath:[iParentDirectory stringByAppendingPathComponent:iName]
											   error:NULL] fileType];
	}
	return iType;
}

- (BOOL) isDirectory
{
	return	([[self type] isEqualToString:NSFileTypeDirectory]);
}

- (NSString *) description
{
	return [NSString stringWithFormat:@"CWAFileVO:%@ directory:%@",  [self iName], (self.isDirectory)?@"YES": @"NO"];
}

- (BOOL) isEmptyDirectory
{
	if (self.isDirectory)
  {
		NSFileManager *fm = [NSFileManager defaultManager];
		NSError *error = nil;
		NSArray *subfiles = [fm contentsOfDirectoryAtPath:[self fullName] error:&error];
		if (error)
    {
			NSLog(@"Error: %@", [error localizedDescription]);
		}
		if ([subfiles count])
    {
			return NO;
    }
		else
    {
			return YES;
    }
	}
	return NO;
}

#pragma mark -

- (void) loadMembers{
	//TODO: load all members not loaded yet, this should be better than calling NSFileManager for every property.
	iFullName = nil;
	iType = nil;
	iImage = nil;
	iImageBig = nil;
	iCreationDate = nil;
	iModificationDate = nil;
}

- (void) unloadMembers{
	//TODO: release members and set them to nil
}

- (id) initWithName:(NSString *)aName parentDirectory:(NSString *)aParentDirectory{
	if (self = [super init]) {
		self.iName = aName;
		self.iParentDirectory = aParentDirectory;
		
		iFullName = nil;
		iType = nil;
		iImage = nil;
		iImageBig = nil;
		iCreationDate = nil;
		iModificationDate = nil;
		
	}
	return self;
}

- (id) init{
	return [self initWithName:@"" parentDirectory:@""];
}

#pragma mark -
#pragma mark NSCopying

- (id)copyWithZone:(NSZone *)zone{
    return self;
}

@end
