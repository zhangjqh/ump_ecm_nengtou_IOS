#import <UIKit/UIKit.h>
#import "AttachmentPickeDelegate.h"
#import "WAAttachmentBaseBnsHandler.h"

@class CWAFileVO;
@class CWAFileAccordionBnsHandler;


/*!
 	@header	<#Description#>
 	@abstract	<#Description#>
 	@discussion	<#Description#>
 	@author	<#huych#>
 	@copyright	<#ufida#>
 	@version	<#1.0#> 2013-03-05 16:12:18 Creation
 */
@interface CWAFileAccordionBnsHandler : CWAAttachmentBaseBnsHandler {

	
	NSMutableArray *iSortDescriptors;
	NSMutableArray *iMergedRootBranch;
	NSMutableDictionary *iUnmergedBranches;
    CWAFileVO *rootDirectory;
}


@property (nonatomic, retain) NSMutableArray *iSortDescriptors;

@property (nonatomic, retain, readonly) NSMutableArray * iMergedRootBranch;
@property (nonatomic, assign) id<CWAFileAccordionDatasourceManagerDelegate> delegate;

+ (NSMutableArray *) defaultSortDescriptors;
- (id) initWithRootPath:(NSString *)path sortDescriptors:(NSMutableArray *)sortDescs;
- (void) expandBranchAtIndex:(NSInteger)index;
- (void) collapseBranchAtIndex:(NSInteger)index;

@end
