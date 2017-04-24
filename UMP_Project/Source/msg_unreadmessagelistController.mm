//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "msg_unreadmessagelistController.h"














@interface msg_unreadmessagelistController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation msg_unreadmessagelistController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize msg_MessageList = _msg_MessageList;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar1 = _navigatorbar1;

@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;










static NSString *controllerC = @"msg_UnreadMessageListController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"messageGroup";


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
        _msg_MessageList = _viewObject;

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
    _viewObject.vAlignUMP = ALIGN_TOP;
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
    [(UMLayoutView*)_msg_MessageList addSubUMView:_viewPage0];
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
                          @"ALIGN_TOP",@"valignUMP",
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
                          [UIColor colorWithRed:0.9607843 green:0.9607843 blue:0.9607843 alpha:1],@"backgroundColor",
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




    _navigatorbar1 = [[UMLayoutView alloc] init];
    _navigatorbar1.controlId = @"navigatorbar1";
    _navigatorbar1.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_navigatorbar1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
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
                          @"navbar_login.png",@"backgroundImagePath",
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



    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar1];
    if (![[_navigatorbar1 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar1 backgroundColor];
}
    _navBarHidden = NO;

    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
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
                          @"40",@"height",
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
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel2];
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
                          @"ALIGN_TOP",@"valignUMP",
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




// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"20",
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button1",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"onclick":@"onReturnBtnClick",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_navigatorbar1 addSubUMXView:_button1];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"margin-right":@"20",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_UnreadMessage}"}];
    [(UMLayoutView*)_navigatorbar1 addSubUMXView:_label1];

// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"p_txt_r":@"0.9490196",
                          @"pressed-image":@"btn_add_touch",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button0",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"onclick":@"NewMessage",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_add",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_navigatorbar1 addSubUMXView:_button0];

// --togglebuttongroup0
    _togglebuttongroup0 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup0",
                          @"padding-left":@"15",
                          @"padding-right":@"15",
                          @"halign":@"LEFT",
                          @"weight":@"1",
                          @"height":@"44",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_togglebuttongroup0];

// --togglebutton0
    _togglebutton0 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_3_left.png",
                          @"width":@"125",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.msg_Unread}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_3_left_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton0",
                          @"height":@"42",
                          @"p_txt_b":@"1.0",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"0",
                          @"font-family":@"default",
                          @"texton":@"#{res.msg_Unread}",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"checked":@"true",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton0];

// --togglebutton1
    _togglebutton1 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_3_middle.png",
                          @"width":@"125",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.msg_Read}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_3_middle_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton1",
                          @"height":@"42",
                          @"p_txt_b":@"1.0",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"1",
                          @"onclick":@"OpenReadMessageList",
                          @"font-family":@"default",
                          @"texton":@"#{res.msg_Read}",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton1];

// --togglebutton2
    _togglebutton2 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_3_right.png",
                          @"width":@"125",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.msg_AllRead}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_3_right_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton2",
                          @"height":@"42",
                          @"p_txt_b":@"1.0",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"2",
                          @"onclick":@"OpenAllReadMessageList",
                          @"font-family":@"default",
                          @"texton":@"#{res.msg_AllRead}",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton2];

// --listview0
    _listview0 = [UMControl creatControl:@"UMXTableView" container:self  params:@{
                          @"bindfield":@"msglist",
                          @"listview-divider-height":@"1",
                          @"list_divider_g":@"0.78039217",
                          @"childindicator":@"messageWgt",
                          @"weight":@"1",
                          @"cursoraction":@"cursormsglistalias",
                          @"synccontext":@"msglist",
                          @"width":@"fill",
                          @"list_divider_r":@"0.78431374",
                          @"bg_r":@"0.9372549",
                          @"id":@"listview0",
                          @"onuprefersh":@"onUpRefresh",
                          @"height":@"0",
                          @"ondownrefersh":@"onDownRefresh",
                          @"onload":@"OnLoadUnreadMsgData",
                          @"onitemclick":@"onItemClick",
                          @"background":@"#efeff4",
                          @"margin-top":@"5",
                          @"list_divider_b":@"0.8",
                          @"bg_b":@"0.95686275",
                          @"listview-divider-color":@"#c8c7cc",
                          @"bg_g":@"0.9372549",@"value":@"                 \n            "}];
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

     










[self OnLoadUnreadMsgData:nil args:nil];


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
    
    











[self umcontrol:_listview0 controlid:@"listview0" bindfield:@"msglist"];

    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)OpenAllReadMessageList:(id<UMViewControl>)sender args:(XEventArgs *)args{
    
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OpenAllReadMessageList" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_allreadmessagelist" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"iskeep"];
      NSString * ismail = [[[self context] getParameterinfo] valueForKey:@"ismail"];
    [args putValue:ismail forKey:@"ismail"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OnLoadUnreadMsgData:(id<UMViewControl>)sender args:(XEventArgs *)args{
     NSString * ismail = [[[self context] getParameterinfo] valueForKey:@"ismail"];
    
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OnLoadUnreadMsgData" method:@"UMList.getFirstPage" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.msgList.MsgListController" forKey:@"viewid"];

 [args putValue:@"25" forKey:@"count"];

 [args putValue:@"1" forKey:@"startline"];

 [args putValue:@"unreaded" forKey:@"isread"];

 [args putValue:@"List" forKey:@"action"];
    [args putValue:ismail forKey:@"ismail"];
    
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OpenReadMessageList:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OpenReadMessageList" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_readmessagelist" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"iskeep"];
    
    NSString * ismail = [[[self context] getParameterinfo] valueForKey:@"ismail"];
    [args putValue:ismail forKey:@"ismail"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onDownRefresh:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onDownRefresh" method:@"UMList.getNextPage" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.msgList.MsgListController" forKey:@"viewid"];

 [args putValue:@"unreaded" forKey:@"isread"];

 [args putValue:@"List" forKey:@"action"];
    
    NSString * ismail = [[[self context] getParameterinfo] valueForKey:@"ismail"];
    [args putValue:ismail forKey:@"ismail"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)GoToDetail:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"GoToDetail" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_messagecontentdetail" forKey:@"viewid"];

 [args putValue:@"OnLoadUnreadMsgData" forKey:@"callback"];

 [args putValue:@"#{CurrentMsg}" forKey:@"currentmsg"];

 [args putValue:@"true" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onItemClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onItemClick" method:@"UMService.callAction" sender:sender]];

 [args putValue:@"#{#{cursor.cursormsglistalias}.msgID}" forKey:@"msgid"];

 [args putValue:@"cursormsglistalias" forKey:@"cursor"];

 [args putValue:@"nc.bs.oa.oama.msgList.MsgListController" forKey:@"viewid"];

 [args putValue:@"msglist" forKey:@"msgid_arrayPath"];

 [args putValue:@"GetMsgDetail" forKey:@"action"];

 [args putValue:@"GoToDetail" forKey:@"callback"];

 [args putValue:@"false" forKey:@"autoDataBinding"];

 [args putValue:@"CurrentMsg" forKey:@"contextmapping"];
  [UMCompatible exec:sender container:self cursor:@"cursormsglistalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)NewMessage:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"NewMessage" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_sendmessage" forKey:@"viewid"];

 [args putValue:@"OnLoadUnreadMsgData" forKey:@"callback"];

 [args putValue:@"true" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onUpRefresh:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onUpRefresh" method:@"UMList.getFirstPage" sender:sender]];

 [args putValue:@"25" forKey:@"count"];

 [args putValue:@"nc.bs.oa.oama.msgList.MsgListController" forKey:@"viewid"];

 [args putValue:@"1" forKey:@"startline"];

 [args putValue:@"unreaded" forKey:@"isread"];

 [args putValue:@"List" forKey:@"action"];
    
    NSString * ismail = [[[self context] getParameterinfo] valueForKey:@"ismail"];
    [args putValue:ismail forKey:@"ismail"];
    
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onReturnBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onReturnBtnClick" method:@"UMView.close" sender:sender]];

 [args putValue:@"15" forKey:@"resultcode"];

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