#import "WAFileAccordionBnsHandler.h"
#import "WAFileVO.h"
#import "WAFileUtil.h"


@implementation CWAFileAccordionBnsHandler

@synthesize  iSortDescriptors;
@synthesize  iMergedRootBranch;
@synthesize delegate;

- (void) sortBranches
{
	for (NSMutableArray *branch in [iUnmergedBranches allValues])
  {
		[branch sortUsingDescriptors:self.iSortDescriptors];
	}
}

- (void) mergeBranches
{
	[self.iMergedRootBranch setArray:[iUnmergedBranches objectForKey:rootDirectory]];
	NSMutableArray *branchKeys = [[iUnmergedBranches allKeys] mutableCopy];
	NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:@"iLevel"
                                                           ascending:YES];
	[branchKeys sortUsingDescriptors:[NSArray arrayWithObject:sortDesc]];
	
	NSInteger index = NSNotFound;
	for (CWAFileVO *branchKey in branchKeys)
  {
		if (branchKey == rootDirectory)
    {
      continue;
    }
		NSMutableArray *unmergedBranch = [iUnmergedBranches objectForKey:branchKey];
		index = [self.iMergedRootBranch indexOfObject:branchKey];
		[self.iMergedRootBranch replaceObjectsInRange:NSMakeRange(index+1, 0)
                             withObjectsFromArray:unmergedBranch];
	}
	
}
   
+ (NSMutableArray *) defaultSortDescriptors
{	
	NSSortDescriptor * sortDescType = [[NSSortDescriptor alloc] initWithKey:@"iType" ascending:YES]; // Folders come first
	NSSortDescriptor * sortDescName = [[NSSortDescriptor alloc] initWithKey:@"iName" ascending:NO];  // Z ~ A
	NSSortDescriptor * sortDescCreationDate = [[NSSortDescriptor alloc] initWithKey:@"iCreationDate" ascending:YES];
	NSSortDescriptor * sortDescModificationDate = [[NSSortDescriptor alloc] initWithKey:@"iModificationDate" ascending:YES];
	
	NSMutableArray *descs = [NSMutableArray arrayWithObjects:
							 sortDescCreationDate,
							 sortDescType, 
							 sortDescName,  
							 sortDescModificationDate, nil];
	
	return descs;
}

- (id) initWithRootPath:(NSString *)path
        sortDescriptors:(NSMutableArray *)sortDescs
{	
	if (self = [super init])
  {
		self.iSortDescriptors = sortDescs;
			
  iUnmergedBranches = [[NSMutableDictionary alloc] init];
  NSArray *fileNames = [CWAFileUtil getContentsOfDirectoryAtPath:path];
		NSMutableArray *filesAtRootLevel = [[NSMutableArray alloc] init];
		for (NSString * fileName in fileNames) 
		{
			CWAFileVO *aFile = [[CWAFileVO alloc] initWithName:fileName parentDirectory:path];
			[aFile setILevel:0];
			[filesAtRootLevel addObject:aFile];
		}
		NSString *parentPath = [path stringByDeletingLastPathComponent];
		rootDirectory = [[CWAFileVO alloc] initWithName:[path lastPathComponent] parentDirectory:parentPath];
		[rootDirectory setILevel:-1];
		[rootDirectory setExpanded:YES];
		
		[iUnmergedBranches setObject:filesAtRootLevel forKey:rootDirectory];
		
		iMergedRootBranch = [[NSMutableArray alloc] init];
		
		[self sortBranches];
		[self mergeBranches];
		
 	}
	return self;
}

#pragma mark -
- (void) sort
{
	[self sortBranches];
	[self mergeBranches];
}

- (void) reloadAllBranches
{
	//TODO:
}
#pragma mark -

- (void) expandBranchAtIndex:(NSInteger)index
{
	CWAFileVO *directoryFile = [self.iMergedRootBranch objectAtIndex:index];
	if (directoryFile.isDirectory)
  {

		NSArray *fileNames =   [CWAFileUtil getContentsOfDirectoryAtPath:[directoryFile fullName]];;
		
		NSMutableArray *newBranch = [[NSMutableArray alloc] init];
		for (NSString * fileName in fileNames) 
		{
			CWAFileVO *aFile = [[CWAFileVO alloc] initWithName:fileName parentDirectory:[directoryFile fullName]];
			[aFile setILevel:directoryFile.iLevel + 1];
			[newBranch addObject:aFile];
		}
		[newBranch sortUsingDescriptors:self.iSortDescriptors];
		[iUnmergedBranches setObject:newBranch forKey:directoryFile];
		
		[iMergedRootBranch replaceObjectsInRange:NSMakeRange(index+1, 0) withObjectsFromArray:newBranch];
		[directoryFile setExpanded:YES];
  
		if ([delegate respondsToSelector:@selector(fileAccordionDatasourceManager:didInsertRowsAtIndexPaths:)]) {
			NSMutableArray *paths = [NSMutableArray array]; 
			for (int i = 0; i < [newBranch count]; i++) {
				[paths addObject:[NSIndexPath indexPathForRow:(index + 1 + i) inSection:0]];
			}
			[delegate fileAccordionDatasourceManager:self didInsertRowsAtIndexPaths:paths];
		}
	}
}

- (void) collapseBranchAtIndex:(NSInteger)index
{
	CWAFileVO *directoryFile = [self.iMergedRootBranch objectAtIndex:index];
	if (directoryFile.isDirectory)
  {
		NSMutableArray *branchToCollapse = [iUnmergedBranches objectForKey:directoryFile];
		
		//recursively collapse expanded branches
		for (int i = 0; i < [branchToCollapse count]; i++)
    {
			CWAFileVO *file = [branchToCollapse objectAtIndex:i];
			if (file.isDirectory && file.isExpanded)
      {
				[self collapseBranchAtIndex:index + i + 1]; //+1 is super important!!
			}
		}
		
		NSRange range = NSMakeRange(index+1, [branchToCollapse count]);
		[self.iMergedRootBranch removeObjectsInRange:range];
		[iUnmergedBranches removeObjectForKey:directoryFile];
		[directoryFile setExpanded:NO];
		
		//call delegate
		if ([delegate respondsToSelector:@selector(fileAccordionDatasourceManager:didRemoveRowsAtIndexPaths:)])
    {
			NSMutableArray *paths = [NSMutableArray array]; 
			for (int i = 0; i < range.length; i++)
      {
				[paths addObject:[NSIndexPath indexPathForRow:(index + 1 + i) inSection:0]];
			}
			[delegate fileAccordionDatasourceManager:self didRemoveRowsAtIndexPaths:paths];
		}
		
	}
	
}

@end
