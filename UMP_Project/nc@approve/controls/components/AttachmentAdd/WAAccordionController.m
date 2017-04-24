#import "WAAccordionController.h"
#import "WAAccordionViewController.h"
#import "WAAccordionViewCell.h"
#import "WAFileVO.h"

@implementation CWAAccordionController

@synthesize iDatasourceManager;
@synthesize iSortDescriptors;
@synthesize iFilePathSelected;
@synthesize iAccordionViewController;


- (id)initWithRootPath:(NSString *)rootPath
{
  self = [super init];
  if (self)
  {
    iRootPath = [rootPath copy];
    iSortDescriptors = [CWAFileAccordionBnsHandler defaultSortDescriptors];
    iDatasourceManager = [[CWAFileAccordionBnsHandler alloc] initWithRootPath:iRootPath
                                                              sortDescriptors:iSortDescriptors];
    iDatasourceManager.delegate = self;
  }
  return self;
}


#pragma mark -
#pragma mark CWAFileAccordionDatasourceManagerDelegate methods

- (void) fileAccordionDatasourceManager:(CWAFileAccordionBnsHandler *) manager didInsertRowsAtIndexPaths:(NSArray *)indexPaths{
	[iAccordionViewController.iTableView insertRowsAtIndexPaths:indexPaths
                         withRowAnimation: UITableViewRowAnimationLeft];
	if ([indexPaths count] == 1) { //ok here?
		[iAccordionViewController.iTableView selectRowAtIndexPath:[indexPaths objectAtIndex:0]
                                 animated:YES scrollPosition:UITableViewScrollPositionNone];
	}
}
- (void) fileAccordionDatasourceManager:(CWAFileAccordionBnsHandler *) manager didRemoveRowsAtIndexPaths:(NSArray *)indexPaths{
	[iAccordionViewController.iTableView deleteRowsAtIndexPaths:indexPaths
                         withRowAnimation:UITableViewRowAnimationLeft];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)aTableView {
  return 1;
}


- (NSInteger)tableView:(UITableView *)aTableView
 numberOfRowsInSection:(NSInteger)section
{
	return [iDatasourceManager.iMergedRootBranch count];
}


- (UITableViewCell *)tableView:(UITableView *)aTableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"MyCellIdentifier";
  CWAAccordionViewCell *cell = (CWAAccordionViewCell *)[aTableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil)
    {
    cell = [[CWAAccordionViewCell alloc] initWithReuseIdentifier:CellIdentifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.indentationWidth = 30.0;
    }
  
	CWAFileVO *file = [iDatasourceManager.iMergedRootBranch objectAtIndex:indexPath.row];
	cell.iCellType = (file.isDirectory)? CWATableViewCellTypeDirectory : CWATableViewCellTypeFile;
	cell.iDirectoryAccessoryImageView.image = (file.isDirectory)? [UIImage imageNamed:@"TriangleSmall.png"] : nil;
	cell.imageView.image = [file image];
	cell.textLabel.text = [file iName];
	cell.detailTextLabel.text = [file fullName];
  
	return cell;
}


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)aTableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	CWAFileVO *file = [iDatasourceManager.iMergedRootBranch objectAtIndex:indexPath.row];
	if (file.isDirectory)
  {
		if (file.isExpanded)
    {
			CWAAccordionViewCell *curCell = (CWAAccordionViewCell *)[aTableView cellForRowAtIndexPath:indexPath];
			curCell.expanded = NO;
			[iDatasourceManager collapseBranchAtIndex:indexPath.row];
			file.expanded = NO;
    }
		else
    {
			CWAAccordionViewCell *curCell = (CWAAccordionViewCell *)[aTableView cellForRowAtIndexPath:indexPath];
			curCell.expanded = YES;
			
			[iDatasourceManager expandBranchAtIndex:indexPath.row];
			file.expanded = YES;
    }
  }
  else
  {
    iSelectedFile = file;
  }
}

- (NSInteger)tableView:(UITableView *)tableView
indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
	CWAFileVO *file = [iDatasourceManager.iMergedRootBranch objectAtIndex:indexPath.row];
	return file.iLevel;
}



-(IBAction)okBtnClick:(id)sender
{
  NSString *fullName = [iSelectedFile fullName];
  iFilePathSelected(fullName);
  [iAccordionViewController.iNavCtrl popViewControllerAnimated:YES];
}


-(IBAction)backBtnClick:(id)sender
{
  [iAccordionViewController.iNavCtrl popViewControllerAnimated:YES];
  [iAccordionViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
