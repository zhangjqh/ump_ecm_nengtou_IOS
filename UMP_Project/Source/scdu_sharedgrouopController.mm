//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "scdu_sharedgrouopController.h"














@interface scdu_sharedgrouopController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation scdu_sharedgrouopController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize sharedgrouop = _sharedgrouop;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;





@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;





static NSString *controllerC = @"sharedgrouopController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"eventDetail";


- (id)initWithParentCtl:(UIViewController*)parentCtl
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        if(parentCtl){
            self.parentController = parentCtl;
        }else{
            self.parentController = self;
        }
        _navBarHidden = YES;
        self.navigationItem.hidesBackButton = YES;
        _viewObject = [[UMLayoutView alloc] init];
        _sharedgrouop = _viewObject;

            _viewObject.layoutType = Layout_vbox;

    _viewObject.weightUMPView = 0;
    _viewObject.paddingLeft = 0;
    _viewObject.paddingTop = 0;
    _viewObject.paddingRight = 0;
    _viewObject.paddingBottom = 0;
    _viewObject.marginLeft = 0;
    _viewObject.marginTop = 0;
    _viewObject.marginRight = 0;
    _viewObject.marginBottom = 0;//0;
    _viewObject.vAlignUMP = ALIGN_LEFT;
    _viewObject.hAlignUMP = ALIGN_CENTER;
    _viewObject.frame = CGRectMake(0, 0, [[UIScreen mainScreen] applicationFrame].size.width, [[UIScreen mainScreen] applicationFrame].size.height);
    _viewObject.bVisible = YES;
    _viewObject.disabled = NO;
    _viewObject.readOnly = NO;
    //_viewObject.isHeightFill = YES;
    //_viewObject.isWidthFill = YES;
    _viewObject.isHeightWrap = NO;
    _viewObject.isWidthWrap = NO;
       _viewObject.backgroundColor = [UIColor clearColor];

	   _viewObject.layoutType = Layout_vbox;


        _context = [[UMEntityContext alloc]init];
        _ctx = _context;
  		self.xnamespace = namespaceC;
        self.controllerid = controllerC;

         
    }
	return self;
}

#pragma mark  initview

- (void)initChilds
{
    _viewPage0 = [[UMLayoutView alloc] init];
    _viewPage0.controlId = @"viewPage0";
    _viewPage0.layoutType = Layout_vbox;
    [(UMLayoutView*)_sharedgrouop addSubUMView:_viewPage0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_viewPage0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_LEFT",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




    _navigatorbar0 = [[UMLayoutView alloc] init];
    _navigatorbar0.controlId = @"navigatorbar0";
    _navigatorbar0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_navigatorbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"44",@"height",
                          @"#000000",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"nav.png",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];



    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_LEFT",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.9372549 green:0.9372549 blue:0.95686275 alpha:1],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




// --button4
    _button4 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"button_touch",
                          @"width":@"70",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"display":@"none",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button4",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"取消",
                          @"onclick":@"listViewOnload",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button4];

// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"20",
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button0",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"#{res.scdu_oascheduler_0001}",
                          @"onclick":@"onBack",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button0];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"theme",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label1];

// --button2
    _button2 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"right",
                          @"pressed-image":@"button_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button2",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"onclick":@"toEditShared",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button2];

    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_CENTER",@"valignUMP",
                          @"ALIGN_LEFT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"44",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_LEFT",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"",@"backgroundImagePath",
                          [UIColor clearColor],@"background_color_dis",
                          @"",@"border-top-style",
                          @"",@"border-top-width",
                          @"",@"border-top-color",
                          @"",@"border-left-style",
                          @"",@"border-left-width",
                          @"",@"border-left-color",
                          @"",@"border-right-style",
                          @"",@"border-right-width",
                          @"",@"border-right-color",
                          @"",@"border-bottom-style",
                          @"",@"border-bottom-width",
                          @"",@"border-bottom-color",
                          @"",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.44705883",
                          @"id":@"label2",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0061}"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label2];

// --button3
    _button3 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"center",
                          @"visible":@"false",
                          @"pressed-image":@"btn_add_touch",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button3",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"onclick":@"toSearchShared",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_add",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_panel1 addSubUMXView:_button3];

// --listview0
    _listview0 = [UMControl creatControl:@"UMXTableView" container:self  params:@{
                          @"bindfield":@"grouplist",
                          @"listview-divider-height":@"1",
                          @"list_divider_g":@"0.78039217",
                          @"childindicator":@"sharetoWidgetdeRow",
                          @"weight":@"1",
                          @"listview-delbtn-image":@"oasche_delete44.png",
                          @"cursoraction":@"cursorgrouplistalias",
                          @"synccontext":@"grouplist",
                          @"width":@"fill",
                          @"list_divider_r":@"0.78431374",
                          @"bg_r":@"1.0",
                          @"onitemdelete":@"delShared",
                          @"id":@"listview0",
                          @"height":@"0",
                          @"background":@"#ffffff",
                          @"list_divider_b":@"0.8",
                          @"bg_b":@"1.0",
                          @"listview-divider-color":@"#c8c7cc",
                          @"listview-delbtn-pressedimage":@"oasche_delete44_touch.png",
                          @"bg_g":@"1.0",@"value":@"                     \n                "}];
    [(UMLayoutView*)_panel2 addSubUMXView:_listview0];


    [_viewObject adjustSize];
}

#pragma mark view on load

- (void)viewDidLoad
{
	[super viewDidLoad];
    [SysContext getInstance].CurrentViewController = self;



    //dialog优化，设置半透明背景色
    if(!isDialog){

         if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
            self.view.bounds = CGRectMake(0, -20, self.view.frame.size.width, self.view.frame.size.height );
         }
    }else{

        //半透明蒙板
        UIView * bgview = [[UIView alloc] initWithFrame:self.view.frame];
        [bgview setBackgroundColor:[UIColor grayColor]];
        [bgview setOpaque:YES];
        [bgview setAlpha:0.5];
        [self.view addSubview:bgview];

    }

	[self.view addSubview:_viewObject.view];
    [self initChilds];
    


  
    












    //加载JS
    AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    _currentContainer = [appDelegate currentContainer];
   //[self performSelectorInBackground:@selector(umOnload) withObject:nil];
}
-(void)umOnload{

    @autoreleasepool {
    
        AppDelegate* appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
        _currentContainer = [appDelegate currentContainer];
        
        _currentContainer.controllerName = [[namespaceC stringByAppendingString:@"."]stringByAppendingString:controllerC];
        [_currentContainer initCurrentViewController:_currentContainer.controllerName];
        
        [_currentContainer initCurrentViewContext:[[namespaceC stringByAppendingString:@"."]stringByAppendingString:ModelName]];
        
        
        
        //JS同步加载完成 回到主线程 刷新UI
        [self performSelectorOnMainThread:@selector(umload) withObject:nil waitUntilDone:YES];
        
  
    }
}
-(void)umload{

     [self listViewOnload:nil  args:nil];













}
- (void)viewWillAppear:(BOOL)animated
{
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    [SysContext getInstance].CurrentViewController = self;

    if (isResum) {//第二次进入调用
          
    }else {
        isResum = YES;
    }
    [_viewObject umviewAppear];
    [UIApplication sharedApplication].keyWindow.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    
    if([[UIColor getWhiteBlackByHexString:@"#ffffff"] isEqual:[UIColor blackColor]])
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    }
    else
    {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    }

}
- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [_viewObject vmviewDisappear];
}
- (void)viewDidUnload
{
	[super viewDidUnload];
}

#pragma mark  databind

- (void)dataBind:(NSString*)data{
    if(data !=nil){
        [_context updateCtx:data];
 _ctx = _context;

    }
    
    





[self umcontrol:_label1 controlid:@"label1" bindfield:@"theme"];






[self umcontrol:_listview0 controlid:@"listview0" bindfield:@"grouplist"];

    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)delShared:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"delShared" method:@"delShared" sender:sender]];

 [args putValue:@"grouplist" forKey:@"crow_arrayPath"];

 [args putValue:@"cursorgrouplistalias" forKey:@"cursor"];

 [args putValue:@"grouplist" forKey:@"cindex_arrayPath"];

 [args putValue:@"#{#{cursor.cursorgrouplistalias}}" forKey:@"crow"];

 [args putValue:@"#{cursor.cursorgrouplistalias.index}" forKey:@"cindex"];
  [UMCompatible exec:sender container:self cursor:@"cursorgrouplistalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toSearchShared:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toSearchShared" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"sharetoid" forKey:@"mappingkey"];

 [args putValue:@"scdu_searchshared" forKey:@"referenceid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"{\"grouplist\":\"grouplist\"}" forKey:@"mapping"];

 [args putValue:@"merge" forKey:@"mappingtype"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toEditShared:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toEditShared" method:@"toEditShared" sender:sender]];

 [args putValue:@"#{plug.endtime}" forKey:@"endtime"];

 [args putValue:@"#{plug.begintime}" forKey:@"begintime"];

 [args putValue:@"#{plug.repeateventopenby}" forKey:@"repeateventopenby"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)listViewOnload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"listViewOnload" method:@"listViewOnload" sender:sender]];

 [args putValue:@"#{plug.endtime}" forKey:@"endtime"];

 [args putValue:@"#{plug.begintime}" forKey:@"begintime"];

 [args putValue:@"#{plug.repeateventopenby}" forKey:@"repeateventopenby"];

 [args putValue:@"#{plug.eventid}" forKey:@"eventid"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onBack:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onBack" method:@"UMView.close" sender:sender]];

 [args putValue:@"0" forKey:@"resultcode"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}





















#pragma mark  InterfaceOrientation

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return YES;
}
- (BOOL)shouldAutorotate
{
    return YES;
}
- (NSUInteger)supportedInterfaceOrientations
{
    //旋转Bug  return UIInterfaceOrientationMaskPortrait;

    return UIInterfaceOrientationMaskPortrait;
}


-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{

   //dialog和viewcontroller共用一份模版，添加判断
   if(!isDialog){

    CGRect frame;
    self.willOrientation = toInterfaceOrientation;
    frame = [self frameForOrientation];
    self.viewObject.frame = frame;
    [self.viewObject clearFinishedAdjustSize];
    [self.viewObject adjustSize];

    [_viewObject umviewAppear];
    [self operateOrientationViewDidAppear];
  }
}

#pragma mark  摇一摇

-(BOOL)canBecomeFirstResponder
{
    return YES;
}
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    if (motion == UIEventSubtypeMotionShake) {
        //NSLog(@"摇一摇");
        
        
    }
}

#pragma mark container

-(void)onInit{
    [_currentContainer onInit:controllerC];
}
-(void)onLoad{
    [_currentContainer onLoad:controllerC];
}
-(void)onDataBinding{
    //here do databinding
    NSString *context = [_currentContainer getModel:ModelName];
    _contextDictionary = [context objectFromJSONString];
    if(_contextDictionary != nil)
        [self dataBind:[_contextDictionary JSONString]];
}
-(void)onComplete{
    [_currentContainer onComplete:controllerC];
}
-(id)valueByBindfield:(NSString*)bindingfield
{
    return [_contextDictionary objectForKey:bindingfield];
}

@end
