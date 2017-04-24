#import <Foundation/Foundation.h>
#import "WAFileAccordionBnsHandler.h"

@class CWAAccordionViewController;
typedef void (^TWAFilePathSelectedBlock) (NSString *filePath);

@interface CWAAccordionController : NSObject <CWAFileAccordionDatasourceManagerDelegate, UITableViewDelegate, UITableViewDataSource>
{
  TWAFilePathSelectedBlock iFilePathSelected;
  CWAFileAccordionBnsHandler *iDatasourceManager;
  
  CWAAccordionViewController *iAccordionViewController;
  
	NSMutableArray *iSortDescriptors;
  NSString *iRootPath;
  CWAFileVO *iSelectedFile;
}
@property (nonatomic, retain) CWAFileAccordionBnsHandler *iDatasourceManager;
@property (nonatomic, retain) CWAAccordionViewController *iAccordionViewController;
@property (nonatomic,copy)TWAFilePathSelectedBlock iFilePathSelected;
@property (nonatomic, retain) NSMutableArray *iSortDescriptors;


- (id)initWithRootPath:(NSString *)rootPath;
-(IBAction)okBtnClick:(id)sender;

@end
