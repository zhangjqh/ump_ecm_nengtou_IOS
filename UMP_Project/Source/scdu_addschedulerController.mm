//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "scdu_addschedulerController.h"



































































@interface scdu_addschedulerController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation scdu_addschedulerController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize addscheduler = _addscheduler;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;




@synthesize Scrollview_panel1 = _Scrollview_panel1;

@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;

@synthesize panel3 = _panel3;

@synthesize panel4 = _panel4;

@synthesize panel16 = _panel16;

@synthesize panel17 = _panel17;

@synthesize panel5 = _panel5;

@synthesize panel6 = _panel6;

@synthesize panel7 = _panel7;

@synthesize panel8 = _panel8;

@synthesize panel9 = _panel9;

@synthesize panel10 = _panel10;

@synthesize panel11 = _panel11;





























@synthesize panel12 = _panel12;

@synthesize panel13 = _panel13;

@synthesize panel14 = _panel14;

@synthesize panel15 = _panel15;















static NSString *controllerC = @"addschedulerController";

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
        _addscheduler = _viewObject;

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
    //_viewObject.isHeightFill = NO;
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
    [(UMLayoutView*)_addscheduler addSubUMView:_viewPage0];
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




// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"center",
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

// --label0
    _label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"id":@"label0",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0003}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"right",
                          @"pressed-image":@"button_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button1",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"#{res.scdu_oascheduler_0002}",
                          @"onclick":@"onSave",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button1];

_Scrollview_panel1 = [[UMScrollView alloc] init];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_Scrollview_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _Scrollview_panel1.weightUMPView = 1;

    _Scrollview_panel1.layoutType = Layout_vbox;

    _Scrollview_panel1.hScrollType=UMScrollDirectionDisabled;
    _Scrollview_panel1.vScrollType=UMScrollDirectionAuto;
    [(UMLayoutView*)_panel0 addSubUMView:_Scrollview_panel1];

    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_Scrollview_panel1 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"15",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_LEFT",@"valignUMP",
                          @"ALIGN_CENTER",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"YES",@"isHeightWrap", 
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




    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_top.png",@"backgroundImagePath",
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




    _panel3 = [[UMLayoutView alloc] init];
    _panel3.controlId = @"panel3";
    _panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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




    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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




    _panel16 = [[UMLayoutView alloc] init];
    _panel16.controlId = @"panel16";
    _panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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
                          @"none",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




    _panel17 = [[UMLayoutView alloc] init];
    _panel17.controlId = @"panel17";
    _panel17.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel17 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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
                          @"none",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




    _panel5 = [[UMLayoutView alloc] init];
    _panel5.controlId = @"panel5";
    _panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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




    _panel6 = [[UMLayoutView alloc] init];
    _panel6.controlId = @"panel6";
    _panel6.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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




    _panel7 = [[UMLayoutView alloc] init];
    _panel7.controlId = @"panel7";
    _panel7.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_mid.png",@"backgroundImagePath",
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




    _panel8 = [[UMLayoutView alloc] init];
    _panel8.controlId = @"panel8";
    _panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_down.png",@"backgroundImagePath",
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




    _panel9 = [[UMLayoutView alloc] init];
    _panel9.controlId = @"panel9";
    _panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"30",@"height",
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




    _panel10 = [[UMLayoutView alloc] init];
    _panel10.controlId = @"panel10";
    _panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"YES",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"oasche_132_top.png",@"backgroundImagePath",
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




    _panel11 = [[UMLayoutView alloc] init];
    _panel11.controlId = @"panel11";
    _panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"oasche_44_down.png",@"backgroundImagePath",
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




// --textbox0
    _textbox0 = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                          @"bindfield":@"theme",
                          @"padding-left":@"2",
                          @"halign":@"LEFT",
                          @"placeholder":@"#{res.scdu_oascheduler_0004}",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"textbox0",
                          @"txt_g":@"0.0",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"value":@""}];
    [(UMLayoutView*)_panel2 addSubUMXView:_textbox0];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label2",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0005}"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label2];

// --datetimeinput0
    _datetimeinput0 = [UMControl creatControl:@"UMXDateField" container:self  params:@{
                          @"bindfield":@"begintime",
                          @"padding-left":@"4",
                          @"padding-right":@"4",
                          @"halign":@"RIGHT",
                          @"weight":@"1",
                          @"placeholder":@"",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"bg_r":@"1.0",
                          @"format":@"yyyy-MM-dd HH:mm",
                          @"txt_g":@"0.0",
                          @"id":@"datetimeinput0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"background":@"#ffffff",
                          @"value":@"",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"txt_b":@"0.0",
                          @"bg_g":@"1.0",@"type":@"kUmpDatefieldTypeDateTime"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_datetimeinput0];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label3",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0006}"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_label3];

// --datetimeinput1
    _datetimeinput1 = [UMControl creatControl:@"UMXDateField" container:self  params:@{
                          @"bindfield":@"endtime",
                          @"padding-left":@"4",
                          @"padding-right":@"4",
                          @"halign":@"RIGHT",
                          @"weight":@"1",
                          @"placeholder":@"",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"bg_r":@"1.0",
                          @"format":@"yyyy-MM-dd HH:mm",
                          @"txt_g":@"0.0",
                          @"id":@"datetimeinput1",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"background":@"#ffffff",
                          @"value":@"",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"txt_b":@"0.0",
                          @"bg_g":@"1.0",@"type":@"kUmpDatefieldTypeDateTime"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_datetimeinput1];

// --label18
    _label18 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label18",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0007}"}];
    [(UMLayoutView*)_panel16 addSubUMXView:_label18];

// --dateinput0
    _dateinput0 = [UMControl creatControl:@"UMXDateField" container:self  params:@{
                          @"bindfield":@"begindate",
                          @"padding-left":@"4",
                          @"padding-right":@"4",
                          @"halign":@"RIGHT",
                          @"weight":@"1",
                          @"placeholder":@"",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"format":@"yyyy-MM-dd",
                          @"txt_g":@"0.0",
                          @"id":@"dateinput0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"value":@"",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"type":@"kUmpDatefieldTypeDate"}];
    [(UMLayoutView*)_panel16 addSubUMXView:_dateinput0];

// --label19
    _label19 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label19",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0008}"}];
    [(UMLayoutView*)_panel17 addSubUMXView:_label19];

// --dateinput1
    _dateinput1 = [UMControl creatControl:@"UMXDateField" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"padding-left":@"4",
                          @"padding-right":@"4",
                          @"halign":@"RIGHT",
                          @"weight":@"1",
                          @"placeholder":@"",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"format":@"yyyy-MM-dd",
                          @"txt_g":@"0.0",
                          @"id":@"dateinput1",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"value":@"",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"type":@"kUmpDatefieldTypeDate"}];
    [(UMLayoutView*)_panel17 addSubUMXView:_dateinput1];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label4",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0009}"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label4];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label5];

// --switch0
    _switch0 = [UMControl creatControl:@"UMXSwitch" container:self  params:@{
                          @"bindfield":@"isalldayswitch",
                          @"padding-left":@"2",
                          @"pressed-image":@"slideswitch",
                          @"width":@"51",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"slideswitch",
                          @"switch-trackoff-image":@"switch_off",
                          @"onchange":@"isalldayChanged",
                          @"txt_g":@"0.0",
                          @"id":@"switch0",
                          @"height":@"32",
                          @"switch-trackon-image":@"slideswitch",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"value":@"off",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"readonly":@"false",
                          @"background-image":@"slideswitch"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_switch0];

// --label6
    _label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label6",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0010}"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label6];

// --togglebuttongroup1
    _togglebuttongroup1 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup1",
                          @"bindfield":@"type",
                          @"height":@"30",
                          @"weight":@"1",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_togglebuttongroup1];

// --togglebutton3
    _togglebutton3 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_left",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0020}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton3",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"work",
                          @"txt_b":@"0.0",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.0",
                          @"background-image-on":@"label_4_left_touch",
                          @"color":@"#000000",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0020}",
                          @"valign":@"center",
                          @"checked":@"true"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton3];

// --togglebutton4
    _togglebutton4 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_middle",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"textoff":@"#{res.scdu_oascheduler_0021}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"label_4_middle_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton4",
                          @"height":@"30",
                          @"p_txt_b":@"0.972549",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"personal",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0021}",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton4];

// --togglebutton5
    _togglebutton5 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_middle",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"textoff":@"#{res.scdu_oascheduler_0022}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"label_4_middle_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton5",
                          @"height":@"30",
                          @"p_txt_b":@"0.972549",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"task",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0022}",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton5];

// --togglebutton6
    _togglebutton6 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_right",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"textoff":@"#{res.scdu_oascheduler_0023}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"label_4_right_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton6",
                          @"height":@"30",
                          @"p_txt_b":@"0.972549",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"meeting",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0023}",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton6];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0011}"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label1];

// --togglebuttongroup0
    _togglebuttongroup0 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup0",
                          @"bindfield":@"priority",
                          @"height":@"30",
                          @"weight":@"1",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_togglebuttongroup0];

// --togglebutton0
    _togglebutton0 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_left",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"textoff":@"#{res.scdu_oascheduler_0024}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"label_3_left_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton0",
                          @"height":@"30",
                          @"p_txt_b":@"0.972549",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"1",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0024}",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton0];

// --togglebutton1
    _togglebutton1 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_middle",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0025}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton1",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"2",
                          @"txt_b":@"0.0",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.0",
                          @"background-image-on":@"label_3_middle_touch",
                          @"color":@"#000000",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0025}",
                          @"valign":@"center",
                          @"checked":@"true"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton1];

// --togglebutton2
    _togglebutton2 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_right",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"textoff":@"#{res.scdu_oascheduler_0026}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"background-image-on":@"label_3_right_touch",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton2",
                          @"height":@"30",
                          @"p_txt_b":@"0.972549",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"3",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0026}",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"p_txt_g":@"0.972549"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton2];

// --label7
    _label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label7",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0012}"}];
    [(UMLayoutView*)_panel8 addSubUMXView:_label7];

// --label8
    _label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"msg",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label8",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"onclick":@"toRepeatRull",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel8 addSubUMXView:_label8];

// --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"onclick":@"toRepeatRull",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_arrow.png",@"value":@""}];
    [(UMLayoutView*)_panel8 addSubUMXView:_image0];

// --label10
    _label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"14",
                          @"id":@"label10",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0013}"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_label10];

// --label9
    _label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"30",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label9",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel10 addSubUMXView:_label9];

    _panel12 = [[UMLayoutView alloc] init];
    _panel12.controlId = @"panel12";
    _panel12.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel10 addSubUMView:_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _panel13 = [[UMLayoutView alloc] init];
    _panel13.controlId = @"panel13";
    _panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel12 addSubUMView:_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _panel14 = [[UMLayoutView alloc] init];
    _panel14.controlId = @"panel14";
    _panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel12 addSubUMView:_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _panel15 = [[UMLayoutView alloc] init];
    _panel15.controlId = @"panel15";
    _panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel12 addSubUMView:_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"none",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




// --checkbox0
    _checkbox0 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"bindfield":@"ismessage",
                          @"width":@"20",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"id":@"checkbox0",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"check-on-image":@"checkbox_select",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel13 addSubUMXView:_checkbox0];

// --label11
    _label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label11",
                          @"txt_g":@"0.0",
                          @"margin-right":@"10",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0014}"}];
    [(UMLayoutView*)_panel13 addSubUMXView:_label11];

// --checkbox1
    _checkbox1 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"bindfield":@"ismail",
                          @"width":@"20",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"id":@"checkbox1",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"check-on-image":@"checkbox_select",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel13 addSubUMXView:_checkbox1];

// --label12
    _label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label12",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0015}"}];
    [(UMLayoutView*)_panel13 addSubUMXView:_label12];

// --checkbox2
    _checkbox2 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"bindfield":@"issms",
                          @"width":@"20",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"id":@"checkbox2",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"check-on-image":@"checkbox_select",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel14 addSubUMXView:_checkbox2];

// --label13
    _label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label13",
                          @"txt_g":@"0.0",
                          @"margin-right":@"10",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0016}"}];
    [(UMLayoutView*)_panel14 addSubUMXView:_label13];

// --checkbox3
    _checkbox3 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"bindfield":@"isim",
                          @"width":@"20",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"id":@"checkbox3",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"check-on-image":@"checkbox_select",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel14 addSubUMXView:_checkbox3];

// --label14
    _label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label14",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0017}"}];
    [(UMLayoutView*)_panel14 addSubUMXView:_label14];

// --checkbox4
    _checkbox4 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"bindfield":@"ispush",
                          @"width":@"20",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"id":@"checkbox4",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"18",
                          @"check-on-image":@"checkbox_select",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panel15 addSubUMXView:_checkbox4];

// --label17
    _label17 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label17",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0018}"}];
    [(UMLayoutView*)_panel15 addSubUMXView:_label17];

// --label15
    _label15 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label15",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0019}"}];
    [(UMLayoutView*)_panel11 addSubUMXView:_label15];

// --label16
    _label16 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"remindruledesc",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label16",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"onclick":@"toRemindRull",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel11 addSubUMXView:_label16];

// --image1
    _image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image1",
                          @"height":@"13",
                          @"width":@"8",
                          @"onclick":@"toRemindRull",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_arrow.png",@"value":@""}];
    [(UMLayoutView*)_panel11 addSubUMXView:_image1];


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

     






[self detailOnload:nil  args:nil];



























































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
    
    




















[self umcontrol:_textbox0 controlid:@"textbox0" bindfield:@"theme"];


[self umcontrol:_datetimeinput0 controlid:@"datetimeinput0" bindfield:@"begintime"];


[self umcontrol:_datetimeinput1 controlid:@"datetimeinput1" bindfield:@"endtime"];


[self umcontrol:_dateinput0 controlid:@"dateinput0" bindfield:@"begindate"];


[self umcontrol:_dateinput1 controlid:@"dateinput1" bindfield:@"enddate"];



[self umcontrol:_switch0 controlid:@"switch0" bindfield:@"isalldayswitch"];


[self umcontrol:_togglebuttongroup1 controlid:@"togglebuttongroup1" bindfield:@"type"];






[self umcontrol:_togglebuttongroup0 controlid:@"togglebuttongroup0" bindfield:@"priority"];





[self umcontrol:_label8 controlid:@"label8" bindfield:@"msg"];








[self umcontrol:_checkbox0 controlid:@"checkbox0" bindfield:@"ismessage"];


[self umcontrol:_checkbox1 controlid:@"checkbox1" bindfield:@"ismail"];


[self umcontrol:_checkbox2 controlid:@"checkbox2" bindfield:@"issms"];


[self umcontrol:_checkbox3 controlid:@"checkbox3" bindfield:@"isim"];


[self umcontrol:_checkbox4 controlid:@"checkbox4" bindfield:@"ispush"];



[self umcontrol:_label16 controlid:@"label16" bindfield:@"remindruledesc"];


    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)isalldayChanged:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"isalldayChanged" method:@"isalldayChanged" sender:sender]];

 [args putValue:@"#{plug.daytime}" forKey:@"daytime"];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onSave:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onSave" method:@"onSave" sender:sender]];

 [args putValue:@"#{plug.schtype}" forKey:@"schtype"];

 [args putValue:@"#{plug.endtime}" forKey:@"endtimeex"];

 [args putValue:@"#{CONTEXT}" forKey:@"eventdetail"];

 [args putValue:@"#{plug.begintime}" forKey:@"begintimeex"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"#{plug.repeateventopenby}" forKey:@"repeateventopenby"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)remindTypeOnload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"remindTypeOnload" method:@"UMService.callAction" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.scheduler.AlertRuleListExtendController" forKey:@"viewid"];

 [args putValue:@"getRemindType" forKey:@"action"];

 [args putValue:@"remindTypeInit" forKey:@"callback"];

 [args putValue:@"false" forKey:@"autoDataBinding"];

 [args putValue:@"remindtypes" forKey:@"contextmapping"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)detailOnload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"detailOnload" method:@"detailOnload" sender:sender]];

 [args putValue:@"#{plug.daytime}" forKey:@"daytime"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)remindTypeInit:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"remindTypeInit" method:@"remindTypeInit" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onBack:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onBack" method:@"UMView.close" sender:sender]];

 [args putValue:@"15" forKey:@"resultcode"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toRepeatRull:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toRepeatRull" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"scdu_repeatrullref" forKey:@"referenceid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"{\"repeat\":\"repeat\",\"repeattype\":\"repeattype\",\"repeatdate\":\"repeatdate\",\"week\":\"week\",\"repeatday\":\"repeatday\",\"month\":\"month\",\"repeatcount\":\"repeatcount\",\"endrepeattype\":\"endrepeattype\",\"repeattimes\":\"repeattimes\",\"repeatendday\":\"repeatendday\",\"msg\":\"msg\",\"isrepeatevent\":\"isrepeatevent\",\"repeatdaydesc\":\"repeatdaydesc\",\"repeatdayresfs\":\"repeatdayresfs\",\"isrepeateventswitch\":\"isrepeateventswitch\",\"monthdesc\":\"monthdesc\"}" forKey:@"mapping"];

 [args putValue:@"#{CONTEXT}" forKey:@"row"];

 [args putValue:@"replace" forKey:@"mappingtype"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toRemindRull:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toRemindRull" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"scdu_remindrullref" forKey:@"referenceid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"{\"remindrule\":\"value\",\"remindruledesc\":\"desc\"}" forKey:@"mapping"];

 [args putValue:@"#{isalldayswitch}" forKey:@"isalldayswitch"];
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
