#import <QuartzCore/QuartzCore.h>
#import "WAAccordionViewController.h"

#import "WAFileVO.h"
#import "WAAccordionViewCell.h"


@implementation CWAAccordionViewController


@synthesize iTableView;
@synthesize iSelectedDelegate;
@synthesize iNavCtrl;
@synthesize iTitle;
@synthesize iLeftBtnTitle;



- (id)initWithNibName:(NSString *)nibNameOrNil
          WithNavCtrl:(UINavigationController *)aNavCtrl
               WithBundle:(NSBundle *)nibBundleOrNil
         WithRootPath:(NSString *)aRootPath
            WithTitle:(NSString *)aTitle
     withLeftBtnTitle:(NSString *)aLeftBtnTitle;
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if(self)
  {
    iRootPath = [aRootPath copy];
    self.iNavCtrl = aNavCtrl;
    self.iTitle = aTitle;
    self.iLeftBtnTitle = aLeftBtnTitle;
    iAccordionController = [[CWAAccordionController alloc] initWithRootPath:aRootPath];
    iAccordionController.iAccordionViewController = self;
    iAccordionController.iFilePathSelected =
    ^(NSString *filePath)
    {
      if([iSelectedDelegate respondsToSelector:@selector(WAAccordionViewController:selectedFilePath:)])
      {
        [iSelectedDelegate WAAccordionViewController:self selectedFilePath:filePath];
      }
    };
  }
  return self;
}

#pragma mark -
#pragma mark UIViewController methods

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self.navigationController.navigationBar setHidden:YES];
	self.iTableView.rowHeight = 44;
  self.contentSizeForViewInPopover = CGSizeMake(320.0, 600.0);
  self.iTableView.dataSource = iAccordionController;
  self.iTableView.delegate = iAccordionController;
  
  NSMutableArray *toolBarItems = [NSMutableArray array];
  
  UIBarButtonItem *leftBrnItem =[[UIBarButtonItem alloc]
                                 initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                      target:nil
                                                      action:nil];
  
  NSString *ok = NSLocalizedStringFromTable(@"ok", @"commponent_AttachmentAdd", nil);
  UIBarButtonItem *midBrnItem = [[UIBarButtonItem alloc] initWithTitle:ok
                                                                  style:UIBarButtonItemStylePlain
                                                                 target:iAccordionController
                                                                action:@selector(okBtnClick:)];
  
  UIBarButtonItem *rightBrnItem = [[UIBarButtonItem alloc]
                                   initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                   target:nil
                                   action:nil];
  

  [toolBarItems addObject:leftBrnItem];
  [toolBarItems addObject:midBrnItem];
  [toolBarItems addObject:rightBrnItem];
  [iToolBar setItems:toolBarItems animated:YES];


  UINavigationItem *leftitem = [[UINavigationItem alloc] initWithTitle:self.iTitle];
  
  
  UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithTitle:self.iLeftBtnTitle
                                                                 style:UIBarButtonItemStyleBordered
                                                                target:iAccordionController
                                                                action:@selector(backBtnClick:)];
  
  [leftitem setLeftBarButtonItem:leftButton];
  
  NSArray *items = [[NSArray alloc] initWithObjects:leftitem, nil];
  [iNavBar setItems:items];


}




@end
