//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "approve_nctasklistController.h"
#import "WATaskListNC63ViewController.h"
#import "WAGroupButtonIntervalView.h"
#import "WATaskListNC63BnsHandler.h"
#import "WAStatusVO.h"
#import "WASpinnerView.h"
#import "WANC63TaskListVO.h"
#import "WAReminderContentRequestVO.h"
#import "WATaskDetailNC63ViewVO.h"
#import "WAMenuViewController.h"
#import "WATaskDetailNC63ViewController.h"
#import "WATaskAcListViewController.h"
#import "WAMainBodyRequestVO.h"
#import "WATaskListNC63Controller.h"
#import "AppDelegate.h"
#import "WAFileUtil.h"
#import "WAHTMLResourceVO.h"
#import "WAIosVersionAdaptor.h"
#import "WAGroupTabBarView.h"



#import "WATaskListNC63ViewController.h"

@implementation approve_nctasklistController

@synthesize viewObject = _viewObject;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;


static NSString *controllerC = @"approve_NcTaskListController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"ncapprove";

static NSString *WA_TASKLIST_TOOLBAR_BD = @"tabbar_bg.png";

- (id)initWithParentCtl:(UIViewController*)parentCtl
{
    self = [super initWithNibName:nil bundle:nil];

    if (self) {
        if(parentCtl){
            self.parentController = parentCtl;
        }else{
            self.parentController = self;
        }
        _viewObject = [[UMLayoutView alloc] init];
        _context = [[UMEntityContext alloc]init];
        _ctx = _context;
        
    }
    return self;
}

- (void)loadView
{
    self.view = _viewObject.view;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    _currentContainer = [appDelegate currentContainer];
    
    _currentContainer.controllerName = [[namespaceC stringByAppendingString:@"."]stringByAppendingString:controllerC];
    [_currentContainer initCurrentViewController:_currentContainer.controllerName];
    
    [_currentContainer initCurrentViewContext:[[namespaceC stringByAppendingString:@"."]stringByAppendingString:ModelName]];
    [SysContext getInstance].CurrentViewController = self;
    CWATaskListNC63ViewController *aTaskListViewController = [[CWATaskListNC63ViewController alloc]
                                                              initWithNibName:@"WATaskListNC63ViewController"
                                                              andBundle:nil
                                                              andTWATaskType:EIsHandled
                                                              andBaseVO:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(returnBack) name:@"notifyBack" object:nil];
    UINavigationController * iNav = ((AppDelegate *) appDelegate).navigationCtl;
    [iNav pushViewController:aTaskListViewController animated:YES];
    
    //delete empty page
    NSMutableArray *views = [self.navigationController.viewControllers mutableCopy];
    [views removeObjectAtIndex:views.count-1];
    self.navigationController.viewControllers = views;
   
    
    //[iNav popViewControllerAnimated:NO];
}

-(void)dealloc{
    //[[NSNotificationCenter defaultCenter] removeObserver:self forKeyPath:@"notifyBack"];
}

-(void) returnBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}
@end
