//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "scdu_repeatrullrefController.h"





























































@interface scdu_repeatrullrefController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation scdu_repeatrullrefController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize repeatrullref = _repeatrullref;
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

@synthesize panel3 = _panel3;

@synthesize panel4 = _panel4;

@synthesize panel5 = _panel5;

@synthesize panel6 = _panel6;

@synthesize panel7 = _panel7;

@synthesize panel12 = _panel12;

@synthesize panel8 = _panel8;

@synthesize panel9 = _panel9;

@synthesize panel10 = _panel10;

@synthesize panel11 = _panel11;











































static NSString *controllerC = @"repeatrullrefController";

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
        _repeatrullref = _viewObject;

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
    [(UMLayoutView*)_repeatrullref addSubUMView:_viewPage0];
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
                          @"",@"color",
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"center",
                          @"pressed-image":@"btn_back_touch",
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
                          @"value":@"#{res.scdu_oascheduler_0001}",
                          @"onclick":@"onCancel",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button1];

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
                          @"font_family":@"Georgia",
                          @"font-size":@"17",
                          @"font-family":@"Serif",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0012}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"right",
                          @"p_txt_r":@"0.9490196",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button0",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"fill",
                          @"font_family":@"Georgia",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"value":@"#{res.scdu_oascheduler_0038}",
                          @"onclick":@"returnResult",
                          @"font-family":@"Serif",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button.png",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button0];

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
                          @"15",@"marginTop",
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
                          @"oasche_44_one.png",@"backgroundImagePath",
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"15",@"marginTop",
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel3];
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel4];
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




    _panel5 = [[UMLayoutView alloc] init];
    _panel5.controlId = @"panel5";
    _panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel5];
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel6];
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel7];
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




    _panel12 = [[UMLayoutView alloc] init];
    _panel12.controlId = @"panel12";
    _panel12.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
    [(UMLayoutView*)_panel0 addSubUMView:_panel8];
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




    _panel9 = [[UMLayoutView alloc] init];
    _panel9.controlId = @"panel9";
    _panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel9];
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




    _panel10 = [[UMLayoutView alloc] init];
    _panel10.controlId = @"panel10";
    _panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel10];
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




    _panel11 = [[UMLayoutView alloc] init];
    _panel11.controlId = @"panel11";
    _panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel11];
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




// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0040}"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label2",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label2];

// --switch0
    _switch0 = [UMControl creatControl:@"UMXSwitch" container:self  params:@{
                          @"id":@"switch0",
                          @"bindfield":@"isrepeateventswitch",
                          @"height":@"32",
                          @"pressed-image":@"slideswitch",
                          @"width":@"51",
                          @"value":@"off",
                          @"background-image-dis":@"slideswitch",
                          @"onchange":@"isRepeatChanged",
                          @"background-image":@"slideswitch"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_switch0];

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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0041}"}];
    [(UMLayoutView*)_panel2 addSubUMXView:_label3];

// --togglebuttongroup0
    _togglebuttongroup0 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup0",
                          @"bindfield":@"repeat",
                          @"height":@"30",
                          @"weight":@"1",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel2 addSubUMXView:_togglebuttongroup0];

// --togglebutton0
    _togglebutton0 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_left",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0042}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton0",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"day",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_4_left_touch",
                          @"color":@"#e50011",
                          @"onclick":@"repeatDay",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0042}",
                          @"valign":@"center",
                          @"checked":@"true"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton0];

// --togglebutton1
    _togglebutton1 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_middle",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0043}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton1",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"week",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_4_middle_touch",
                          @"color":@"#e50011",
                          @"onclick":@"repeatWeek",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0043}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton1];

// --togglebutton2
    _togglebutton2 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_middle",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0044}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton2",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"month",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_4_middle_touch",
                          @"color":@"#e50011",
                          @"onclick":@"repeatMonth",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0044}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton2];

// --togglebutton3
    _togglebutton3 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_right",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0045}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton3",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"year",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_4_right_touch",
                          @"color":@"#e50011",
                          @"onclick":@"repeatYear",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0045}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup0 addView:_togglebutton3];

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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0046}"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label4];

// --togglebuttongroup1
    _togglebuttongroup1 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup1",
                          @"bindfield":@"repeattype",
                          @"height":@"30",
                          @"weight":@"1",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_togglebuttongroup1];

// --togglebutton4
    _togglebutton4 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_2_left.png",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0047}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton4",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"day",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_2_left_touch.png",
                          @"color":@"#e50011",
                          @"onclick":@"repeattypeDay",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0047}",
                          @"valign":@"center",
                          @"checked":@"true"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton4];

// --togglebutton5
    _togglebutton5 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_2_right.png",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0048}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton5",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"weekday",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_2_right_touch.png",
                          @"color":@"#e50011",
                          @"onclick":@"repeattypeWeekday",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0048}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton5];

// --togglebutton6
    _togglebutton6 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_2_left.png",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0049}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton6",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"date",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_2_left_touch.png",
                          @"color":@"#e50011",
                          @"onclick":@"repeattypeDate",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0049}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton6];

// --togglebutton7
    _togglebutton7 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_4_right",
                          @"font_size":@"14",
                          @"textoff":@"#{res.scdu_oascheduler_0043}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton7",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"week",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_4_right_touch",
                          @"color":@"#e50011",
                          @"onclick":@"repeattypeWeek",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0043}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup1 addView:_togglebutton7];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label5",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0050}"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_label5];

// --number1
    _number1 = [UMControl creatControl:@"UMXNumberfield" container:self  params:@{
                          @"bindfield":@"repeatcount",
                          @"weight":@"1",
                          @"font_size":@"17",
                          @"txt_g":@"0.49411765",
                          @"id":@"number1",
                          @"height":@"40",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"txt_b":@"0.972549",
                          @"min":@"1.0",
                          @"padding-right":@"10",
                          @"padding-left":@"10",
                          @"halign":@"RIGHT",
                          @"precision":@"0",
                          @"max":@"9.99999999E8",
                          @"placeholder":@"1",
                          @"width":@"0",
                          @"txt_r":@"0.08627451",
                          @"bg_r":@"1.0",
                          @"color":@"#167ef8",
                          @"background":@"#ffffff",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"roundtype":@"value",
                          @"bg_g":@"1.0",@"value":@""}];
    [(UMLayoutView*)_panel4 addSubUMXView:_number1];

// --label13
    _label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"30",
                          @"txt_r":@"0.0",
                          @"font_size":@"14",
                          @"id":@"label13",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel4 addSubUMXView:_label13];

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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0052}"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label6];

// --label15
    _label15 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"monthdesc",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label15",
                          @"margin-right":@"8",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"toMonthRef",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label15];

// --image1
    _image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image1",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_arrow.png",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_image1];

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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0053}"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label7];

// --number3
    _number3 = [UMControl creatControl:@"UMXNumberfield" container:self  params:@{
                          @"bindfield":@"week",
                          @"weight":@"1",
                          @"font_size":@"17",
                          @"txt_g":@"0.49411765",
                          @"id":@"number3",
                          @"height":@"40",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"txt_b":@"0.972549",
                          @"min":@"1.0",
                          @"padding-left":@"10",
                          @"padding-right":@"10",
                          @"halign":@"RIGHT",
                          @"precision":@"0",
                          @"max":@"5.0",
                          @"placeholder":@"1",
                          @"width":@"0",
                          @"txt_r":@"0.08627451",
                          @"bg_r":@"1.0",
                          @"color":@"#167ef8",
                          @"background":@"#ffffff",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"roundtype":@"value",
                          @"bg_g":@"1.0",@"value":@""}];
    [(UMLayoutView*)_panel6 addSubUMXView:_number3];

// --label16
    _label16 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"30",
                          @"txt_r":@"0.0",
                          @"font_size":@"14",
                          @"id":@"label16",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0054}"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label16];

// --label8
    _label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label8",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0055}"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label8];

// --label14
    _label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"repeatdaydesc",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label14",
                          @"margin-right":@"8",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"toRepeatdayRef",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label14];

// --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"onclick":@"toRepeatdayRef",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_arrow.png",@"value":@""}];
    [(UMLayoutView*)_panel7 addSubUMXView:_image0];

// --label17
    _label17 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label17",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0055}"}];
    [(UMLayoutView*)_panel12 addSubUMXView:_label17];

// --label18
    _label18 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"repeatdaydesc",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label18",
                          @"margin-right":@"8",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"toOneRepeatdayRef",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel12 addSubUMXView:_label18];

// --image2
    _image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image2",
                          @"height":@"13",
                          @"width":@"8",
                          @"onclick":@"toOneRepeatdayRef",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_arrow.png",@"value":@""}];
    [(UMLayoutView*)_panel12 addSubUMXView:_image2];

// --label9
    _label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
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
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0046}"}];
    [(UMLayoutView*)_panel8 addSubUMXView:_label9];

// --number2
    _number2 = [UMControl creatControl:@"UMXNumberfield" container:self  params:@{
                          @"bindfield":@"repeatdate",
                          @"weight":@"1",
                          @"font_size":@"17",
                          @"txt_g":@"0.49411765",
                          @"id":@"number2",
                          @"height":@"40",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"txt_b":@"0.972549",
                          @"min":@"1.0",
                          @"padding-left":@"10",
                          @"padding-right":@"10",
                          @"halign":@"RIGHT",
                          @"precision":@"0",
                          @"max":@"31.0",
                          @"placeholder":@"1",
                          @"width":@"0",
                          @"txt_r":@"0.08627451",
                          @"bg_r":@"1.0",
                          @"color":@"#167ef8",
                          @"background":@"#ffffff",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"roundtype":@"value",
                          @"bg_g":@"1.0",@"value":@""}];
    [(UMLayoutView*)_panel8 addSubUMXView:_number2];

// --label10
    _label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label10",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0056}"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_label10];

// --togglebuttongroup2
    _togglebuttongroup2 = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"togglebuttongroup2",
                          @"bindfield":@"endrepeattype",
                          @"height":@"30",
                          @"weight":@"1",
                          @"width":@"0",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_panel9 addSubUMXView:_togglebuttongroup2];

// --togglebutton8
    _togglebutton8 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_left",
                          @"font_size":@"12",
                          @"textoff":@"#{res.scdu_oascheduler_0057}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton8",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"1",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_3_left_touch",
                          @"color":@"#e50011",
                          @"onclick":@"endrepeattype",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0057}",
                          @"valign":@"center",
                          @"checked":@"true"}];
    [(UMLayoutView*)_togglebuttongroup2 addView:_togglebutton8];

// --togglebutton9
    _togglebutton9 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_middle",
                          @"font_size":@"12",
                          @"textoff":@"#{res.scdu_oascheduler_0058}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton9",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"2",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_3_middle_touch",
                          @"color":@"#e50011",
                          @"onclick":@"endrepeattypeTimes",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0058}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup2 addView:_togglebutton9];

// --togglebutton10
    _togglebutton10 = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"0.972549",
                          @"weight":@"1",
                          @"background-image-off":@"label_3_right",
                          @"font_size":@"12",
                          @"textoff":@"#{res.scdu_oascheduler_0059}",
                          @"font-pressed-color":@"#f8f8f8",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"togglebutton10",
                          @"p_txt_b":@"0.972549",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"value":@"3",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"0.972549",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_3_right_touch",
                          @"color":@"#e50011",
                          @"onclick":@"endrepeattypeDate",
                          @"font-family":@"default",
                          @"texton":@"#{res.scdu_oascheduler_0059}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_togglebuttongroup2 addView:_togglebutton10];

// --label11
    _label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label11",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0058}"}];
    [(UMLayoutView*)_panel10 addSubUMXView:_label11];

// --number0
    _number0 = [UMControl creatControl:@"UMXNumberfield" container:self  params:@{
                          @"bindfield":@"repeattimes",
                          @"weight":@"1",
                          @"font_size":@"16",
                          @"txt_g":@"0.49411765",
                          @"id":@"number0",
                          @"height":@"40",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"txt_b":@"0.972549",
                          @"min":@"1.0",
                          @"padding-right":@"10",
                          @"padding-left":@"10",
                          @"halign":@"RIGHT",
                          @"precision":@"0",
                          @"max":@"9.99999999E8",
                          @"placeholder":@"35",
                          @"width":@"0",
                          @"txt_r":@"0.08627451",
                          @"bg_r":@"1.0",
                          @"color":@"#167ef8",
                          @"background":@"#ffffff",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"roundtype":@"value",
                          @"bg_g":@"1.0",@"value":@""}];
    [(UMLayoutView*)_panel10 addSubUMXView:_number0];

// --label12
    _label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"85",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label12",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0059}"}];
    [(UMLayoutView*)_panel11 addSubUMXView:_label12];

// --dateinput0
    _dateinput0 = [UMControl creatControl:@"UMXDateField" container:self  params:@{
                          @"bindfield":@"repeatendday",
                          @"padding-right":@"10",
                          @"padding-left":@"10",
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
                          @"value":@"2014-04-17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"type":@"kUmpDatefieldTypeDate"}];
    [(UMLayoutView*)_panel11 addSubUMXView:_dateinput0];


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

     [self load:nil  args:nil];




























































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
    
    




















[self umcontrol:_switch0 controlid:@"switch0" bindfield:@"isrepeateventswitch"];


[self umcontrol:_togglebuttongroup0 controlid:@"togglebuttongroup0" bindfield:@"repeat"];






[self umcontrol:_togglebuttongroup1 controlid:@"togglebuttongroup1" bindfield:@"repeattype"];






[self umcontrol:_number1 controlid:@"number1" bindfield:@"repeatcount"];



[self umcontrol:_label15 controlid:@"label15" bindfield:@"monthdesc"];



[self umcontrol:_number3 controlid:@"number3" bindfield:@"week"];



[self umcontrol:_label14 controlid:@"label14" bindfield:@"repeatdaydesc"];



[self umcontrol:_label18 controlid:@"label18" bindfield:@"repeatdaydesc"];



[self umcontrol:_number2 controlid:@"number2" bindfield:@"repeatdate"];


[self umcontrol:_togglebuttongroup2 controlid:@"togglebuttongroup2" bindfield:@"endrepeattype"];





[self umcontrol:_number0 controlid:@"number0" bindfield:@"repeattimes"];


[self umcontrol:_dateinput0 controlid:@"dateinput0" bindfield:@"repeatendday"];

    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)toOneRepeatdayRef:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toOneRepeatdayRef" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"scdu_onerepeatdayref" forKey:@"referenceid"];

 [args putValue:@"{\"repeatday\":\"key\",\"repeatdaydesc\":\"name\"}" forKey:@"mapping"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)endrepeattypeDate:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"endrepeattypeDate" method:@"endrepeattypeDate" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)returnCallback:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"returnCallback" method:@"returnCallback" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeatDay:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeatDay" method:@"repeatDay" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeatMonth:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeatMonth" method:@"repeatMonth" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeatYear:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeatYear" method:@"repeatYear" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)endrepeattype:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"endrepeattype" method:@"endrepeattype" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)returnResult:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"returnResult" method:@"returnResult" sender:sender]];

 [args putValue:@"#{CONTEXT}" forKey:@"result"];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toRepeatdayRef:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toRepeatdayRef" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"scdu_repeatdayref" forKey:@"referenceid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"{\"repeatdayresfs\":\"repeatdayresfs\",\"repeatdaydesc\":\"repeatdaydesc\",\"repeatday\":\"repeatday\"}" forKey:@"mapping"];

 [args putValue:@"#{repeatdayresfs}" forKey:@"crows"];

 [args putValue:@"replace" forKey:@"mappingtype"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeattypeDate:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeattypeDate" method:@"repeattypeDate" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)isRepeatChanged:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"isRepeatChanged" method:@"isRepeatChanged" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeattypeWeekday:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeattypeWeekday" method:@"repeattypeWeekday" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeattypeDay:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeattypeDay" method:@"repeattypeDay" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)toMonthRef:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"toMonthRef" method:@"UMView.openReference" sender:sender]];

 [args putValue:@"scdu_monthref" forKey:@"referenceid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"{\"month\":\"key\",\"monthdesc\":\"name\",\"\":\"\"}" forKey:@"mapping"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)load:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"load" method:@"load" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)endrepeattypeTimes:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"endrepeattypeTimes" method:@"endrepeattypeTimes" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeatWeek:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeatWeek" method:@"repeatWeek" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)repeattypeWeek:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"repeattypeWeek" method:@"repeattypeWeek" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onCancel:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onCancel" method:@"UMView.close" sender:sender]];

 [args putValue:@"0" forKey:@"resultcode"];
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
