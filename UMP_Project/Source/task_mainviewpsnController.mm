//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "task_mainviewpsnController.h"
























@interface task_mainviewpsnController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation task_mainviewpsnController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize mainviewpsn = _mainviewpsn;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize panel0 = _panel0;

@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;

@synthesize widget0 = _widget0;

@synthesize widget0_toplistwidget = _widget0_toplistwidget;

@synthesize widget0_leftPanel = _widget0_leftPanel;


@synthesize widget0_rightPanel = _widget0_rightPanel;








@synthesize widget1 = _widget1;

@synthesize widget1_toolbar0 = _widget1_toolbar0;

@synthesize widget1_panel1 = _widget1_panel1;

@synthesize widget1_panel2 = _widget1_panel2;




static NSString *controllerC = @"mainviewpsnController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"listview";


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
        _mainviewpsn = _viewObject;

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
    [(UMLayoutView*)_mainviewpsn addSubUMView:_viewPage0];
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"45",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.9019608 green:0.9019608 blue:0.9019608 alpha:1],@"backgroundColor",
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




    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"NO",@"isHeightFill",
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
                          @"ALIGN_LEFT",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
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
                          @"49",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.9019608 green:0.9019608 blue:0.9019608 alpha:1],@"backgroundColor",
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




    _widget0 = [[UMLayoutView alloc] init];
    _widget0.controlId = @"widget0";
    _widget0.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_widget0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _widget0_toplistwidget = [[UMLayoutView alloc] init];
    _widget0_toplistwidget.controlId = @"widget0_toplistwidget";
    _widget0_toplistwidget.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget0_toplistwidget info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"YES",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"#ffffff",@"color",
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



    [(UMLayoutView*)_widget0 addSubUMView:_widget0_toplistwidget];
    if (![[_widget0_toplistwidget backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_widget0_toplistwidget backgroundColor];
}
    _navBarHidden = NO;

    _widget0_leftPanel = [[UMLayoutView alloc] init];
    _widget0_leftPanel.controlId = @"widget0_leftPanel";
    _widget0_leftPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_widget0_toplistwidget addSubUMView:_widget0_leftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget0_leftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"64",@"width",
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




// --widget0_togglebuttongroup0
    _widget0_togglebuttongroup0 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"widget0_togglebuttongroup0",
                          @"height":@"30",
                          @"weight":@"1",
                          @"layout":@"Layout_hbox",
                          @"width":@"0",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_widget0_toplistwidget addSubUMXView:_widget0_togglebuttongroup0];

    _widget0_rightPanel = [[UMLayoutView alloc] init];
    _widget0_rightPanel.controlId = @"widget0_rightPanel";
    _widget0_rightPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_widget0_toplistwidget addSubUMView:_widget0_rightPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget0_rightPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"ALIGN_RIGHT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"64",@"width",
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




// --widget0_button0
    _widget0_button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"p_txt_r":@"0.9490196",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"widget0_button0",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"onclick":@"returnhome",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back.png",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_widget0_leftPanel addSubUMXView:_widget0_button0];

// --widget0_togglebutton0
    _widget0_togglebutton0 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"background-image-off":@"oatask_left.png",
                          @"width":@"62",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.task_personal}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"oatask_left_touch.png",
                          @"txt_g":@"0.0",
                          @"id":@"widget0_togglebutton0",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"14",
                          @"value":@"0",
                          @"onclick":@"personalbtn",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"texton":@"#{res.task_personal}",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_widget0_togglebuttongroup0 addView:_widget0_togglebutton0];

// --widget0_togglebutton1
    _widget0_togglebutton1 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"background-image-off":@"oatask_mid.png",
                          @"width":@"62",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.task_resonpseable}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"oatask_mid_touch.png",
                          @"txt_g":@"0.0",
                          @"id":@"widget0_togglebutton1",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"14",
                          @"value":@"3",
                          @"onclick":@"responsebtn",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"texton":@"#{res.task_resonpseable}",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_widget0_togglebuttongroup0 addView:_widget0_togglebutton1];

// --widget0_togglebutton2
    _widget0_togglebutton2 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"background-image-off":@"oatask_mid.png",
                          @"width":@"62",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.task_assist}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"oatask_mid_touch.png",
                          @"txt_g":@"0.0",
                          @"id":@"widget0_togglebutton2",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"14",
                          @"value":@"2",
                          @"onclick":@"crowbtn",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"texton":@"#{res.task_assist}",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_widget0_togglebuttongroup0 addView:_widget0_togglebutton2];

// --widget0_togglebutton3
    _widget0_togglebutton3 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"background-image-off":@"oatask_right.png",
                          @"width":@"62",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.task_followed}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"oatask_right_touch.png",
                          @"txt_g":@"0.0",
                          @"id":@"widget0_togglebutton3",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"14",
                          @"value":@"1",
                          @"onclick":@"viewbtn",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"texton":@"#{res.task_followed}",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_widget0_togglebuttongroup0 addView:_widget0_togglebutton3];

// --widget0_addtask
    _widget0_addtask = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"pressed-image":@"oatask_add_clicktouch.png",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"1.0",
                          @"id":@"widget0_addtask",
                          @"txt_g":@"1.0",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#ffffff",
                          @"font-size":@"17",
                          @"onclick":@"addtask",
                          @"font-family":@"default",
                          @"txt_b":@"1.0",
                          @"valign":@"center",
                          @"background-image":@"oatask_add_click.png",@"value":@""}];
    [(UMLayoutView*)_widget0_rightPanel addSubUMXView:_widget0_addtask];

// --listview0
    _listview0 = [UMControl creatControl:@"UMXTableView" container:self  params:@{
                          @"bindfield":@"tasklist",
                          @"childindicator":@"psnyeswidget",
                          @"weight":@"1",
                          @"cursoraction":@"cursortasklistalias",
                          @"synccontext":@"tasklist",
                          @"width":@"fill",
                          @"bg_r":@"0.9372549",
                          @"id":@"listview0",
                          @"onuprefersh":@"getfirstpage",
                          @"height":@"0",
                          @"ondownrefersh":@"getnextpage",
                          @"background":@"#efeff4",
                          @"bg_b":@"0.95686275",
                          @"bg_g":@"0.9372549",@"value":@"                \n                \n                \n                 \n            "}];
    [(UMLayoutView*)_panel1 addSubUMXView:_listview0];

    _widget1 = [[UMLayoutView alloc] init];
    _widget1.controlId = @"widget1";
    _widget1.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel2 addSubUMView:_widget1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"49",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _widget1_toolbar0 = [[UMLayoutView alloc] init];
    _widget1_toolbar0.controlId = @"widget1_toolbar0";
    _widget1_toolbar0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget1_toolbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"toolbar.png",@"backgroundImagePath",
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



    [(UMLayoutView*)_widget1 addSubUMView:_widget1_toolbar0];

    _widget1_panel1 = [[UMLayoutView alloc] init];
    _widget1_panel1.controlId = @"widget1_panel1";
    _widget1_panel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_widget1_toolbar0 addSubUMView:_widget1_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget1_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"NO",@"isWidthFill",
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




    _widget1_panel2 = [[UMLayoutView alloc] init];
    _widget1_panel2.controlId = @"widget1_panel2";
    _widget1_panel2.layoutType = Layout_vbox;
    [(UMLayoutView*)_widget1_toolbar0 addSubUMView:_widget1_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_widget1_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"NO",@"isWidthFill",
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




// --widget1_imagebutton0
    _widget1_imagebutton0 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.8980392",
                          @"font_size":@"10",
                          @"font-pressed-color":@"#e50011",
                          @"id":@"widget1_imagebutton0",
                          @"txt_g":@"0.5019608",
                          @"height":@"49",
                          @"p_txt_b":@"0.06666667",
                          @"font_family":@"ArialMT",
                          @"font-size":@"10",
                          @"value":@"#{res.task_mytasks}",
                          @"icon-background-image":@"mytask_normal.png",
                          @"txt_b":@"0.5019608",
                          @"p_txt_g":@"0.0",
                          @"halign":@"center",
                          @"width":@"64",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5019608",
                          @"istogglebutton":@"true",
                          @"icon-height":@"25",
                          @"color":@"#808080",
                          @"onclick":@"mytask",
                          @"icon-pressed-image":@"mytask_click.png",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"5"}];
    [(UMLayoutView*)_widget1_panel1 addSubUMXView:_widget1_imagebutton0];

// --widget1_imagebutton1
    _widget1_imagebutton1 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{
                          @"p_txt_r":@"0.8980392",
                          @"font_size":@"10",
                          @"font-pressed-color":@"#e50011",
                          @"id":@"widget1_imagebutton1",
                          @"txt_g":@"0.5019608",
                          @"height":@"49",
                          @"p_txt_b":@"0.06666667",
                          @"font_family":@"ArialMT",
                          @"font-size":@"10",
                          @"value":@"#{res.task_myinitiations}",
                          @"icon-background-image":@"mypublish_normal.png",
                          @"txt_b":@"0.5019608",
                          @"p_txt_g":@"0.0",
                          @"halign":@"center",
                          @"width":@"64",
                          @"icon-width":@"25",
                          @"txt_r":@"0.5019608",
                          @"istogglebutton":@"true",
                          @"icon-height":@"25",
                          @"color":@"#808080",
                          @"onclick":@"mypublish",
                          @"icon-pressed-image":@"mypublish_click.png",
                          @"font-family":@"default",
                          @"valign":@"center",
                          @"checked":@"false",
                          @"icon-text-spacing":@"5"}];
    [(UMLayoutView*)_widget1_panel2 addSubUMXView:_widget1_imagebutton1];


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

     [self initwidget:nil  args:nil];























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
    
    















[self umcontrol:_listview0 controlid:@"listview0" bindfield:@"tasklist"];







    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)getnextpage:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"getnextpage" method:@"getnextpage" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)loginAction:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"loginAction" method:@"UMService.login" sender:sender]];

 [args putValue:@"true" forKey:@"failedexit"];

 [args putValue:@"ua" forKey:@"type"];

 [args putValue:@"none" forKey:@"contextmapping"];

 [args putValue:@"initwidget" forKey:@"success"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonUnload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonUnload" method:@"UMonUnload" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)closeAction:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"closeAction" method:@"UMView.close" sender:sender]];

 [args putValue:@"0" forKey:@"resultcode"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)personalbtn:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"personalbtn" method:@"UMList.getFirstPage" sender:sender]];

 [args putValue:@"25" forKey:@"count"];

 [args putValue:@"nc.bs.oa.oama.oatask.ListviewController" forKey:@"viewid"];

 [args putValue:@"1" forKey:@"startline"];

 [args putValue:@"false" forKey:@"isDataCollect"];
    
    [args putValue:@"setSelector" forKey:@"callback"];

 [args putValue:@"getPersonalTaskList" forKey:@"action"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonComplete:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonComplete" method:@"UMonComplete" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)viewbtn:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"viewbtn" method:@"UMView.open" sender:sender]];

 [args putValue:@"1" forKey:@"tasktype"];

 [args putValue:@"task_mainviewthreeforone" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)mypublish:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"mypublish" method:@"UMView.open" sender:sender]];

 [args putValue:@"task_mainviewtwo" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)getfirstpage:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"getfirstpage" method:@"UMList.getFirstPage" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.oatask.ListviewController" forKey:@"viewid"];

 [args putValue:@"25" forKey:@"count"];

 [args putValue:@"1" forKey:@"startline"];

 [args putValue:@"false" forKey:@"isDataCollect"];
    
    [args putValue:@"setSelector" forKey:@"callback"];

 [args putValue:@"getPersonalTaskList" forKey:@"action"];

 [args putValue:@"listview0" forKey:@"listid"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)listviewonload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"listviewonload" method:@"UMService.callAction" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.oatask.ListviewController" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"getPersonalTaskList" forKey:@"action"];

 [args putValue:@"true" forKey:@"autoDataBinding"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)addtask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"addtask" method:@"UMView.open" sender:sender]];

 [args putValue:@"task_personaltask_edit" forKey:@"viewid"];

 [args putValue:@"left" forKey:@"animation-direction"];

 [args putValue:@"1" forKey:@"animation-time"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonDataBinding:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonDataBinding" method:@"UMonDataBinding" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)initwidget:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"initwidget" method:@"initwidget" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)mytask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"mytask" method:@"mytask" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)setSelector:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"setSelector" method:@"setSelector" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonInit:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonInit" method:@"UMonInit" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonLoad:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonLoad" method:@"UMonLoad" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)responsebtn:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"responsebtn" method:@"UMView.open" sender:sender]];

 [args putValue:@"3" forKey:@"tasktype"];

 [args putValue:@"task_mainviewthreeforone" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)showItemDetail:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"showItemDetail" method:@"UMView.open" sender:sender]];

 [args putValue:@"#{#{cursor.cursortasklistalias}}" forKey:@"abc"];

 [args putValue:@"cursortasklistalias" forKey:@"cursor"];

 [args putValue:@"task_personaltask_detail" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];

 [args putValue:@"tasklist" forKey:@"abc_arrayPath"];
  [UMCompatible exec:sender container:self cursor:@"cursortasklistalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)crowbtn:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"crowbtn" method:@"UMView.open" sender:sender]];

 [args putValue:@"2" forKey:@"tasktype"];

 [args putValue:@"task_mainviewthreeforone" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)returnhome:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"returnhome" method:@"UMView.close" sender:sender]];

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
