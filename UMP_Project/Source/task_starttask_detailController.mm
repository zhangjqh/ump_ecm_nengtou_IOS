//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "task_starttask_detailController.h"
#import "WAShowDetailTextView.h"











































































@interface task_starttask_detailController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation task_starttask_detailController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize starttask_detail = _starttask_detail;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;

@synthesize toolbar0 = _toolbar0;




@synthesize Scrollview_panel11 = _Scrollview_panel11;

@synthesize panel11 = _panel11;

@synthesize rounddiv0 = _rounddiv0;

@synthesize rounddiv1 = _rounddiv1;

@synthesize rounddiv2 = _rounddiv2;

@synthesize rounddiv3 = _rounddiv3;

@synthesize rounddiv5 = _rounddiv5;

@synthesize rounddiv4 = _rounddiv4;

@synthesize rounddiv54 = _rounddiv54;

@synthesize rounddiv6 = _rounddiv6;

@synthesize rounddiv7 = _rounddiv7;

@synthesize rounddiv8 = _rounddiv8;

@synthesize rounddiv9 = _rounddiv9;









@synthesize rounddiv16 = _rounddiv16;

@synthesize rounddiv17 = _rounddiv17;

@synthesize rounddiv18 = _rounddiv18;

@synthesize rounddiv19 = _rounddiv19;









@synthesize rounddiv12 = _rounddiv12;

@synthesize rounddiv13 = _rounddiv13;

@synthesize rounddiv14 = _rounddiv14;










@synthesize rounddiv10 = _rounddiv10;

@synthesize rounddiv11 = _rounddiv11;







@synthesize rounddiv55 = _rounddiv55;



@synthesize rounddiv44 = _rounddiv44;




@synthesize rounddiv64 = _rounddiv64;








static NSString *controllerC = @"starttask_detailController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"detailtask";


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
        _starttask_detail = _viewObject;

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
    [(UMLayoutView*)_starttask_detail addSubUMView:_viewPage0];
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




    _toolbar0 = [[UMLayoutView alloc] init];
    _toolbar0.controlId = @"toolbar0";
    _toolbar0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_toolbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"49",@"height",
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



    [(UMLayoutView*)_viewPage0 addSubUMView:_toolbar0];

// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"1.0",
                          @"background-image-dis":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"button0",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#ff0000",
                          @"font-size":@"17",
                          @"value":@"#{res.task_back}",
                          @"onclick":@"returnback",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"background-image":@"btn_back"}];
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
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_taskdetail}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button5
    _button5 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"right",
                          @"pressed-image":@"button_touch",
                          @"width":@"42",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"button5",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"value":@"#{res.task_edit}",
                          @"onclick":@"beforeedittask",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button5];

_Scrollview_panel11 = [[UMScrollView alloc] init];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_Scrollview_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _Scrollview_panel11.layoutType = Layout_vbox;

    _Scrollview_panel11.hScrollType=UMScrollDirectionAuto;
    _Scrollview_panel11.vScrollType=UMScrollDirectionAuto;
    [(UMLayoutView*)_panel0 addSubUMView:_Scrollview_panel11];

    _panel11 = [[UMLayoutView alloc] init];
    _panel11.controlId = @"panel11";
    _panel11.layoutType = Layout_vbox;
    [(UMLayoutView*)_Scrollview_panel11 addSubUMView:_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"YES",@"isHeightWrap", 
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




    _rounddiv0 = [[UMLayoutView alloc] init];
    _rounddiv0.controlId = @"rounddiv0";
    _rounddiv0.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv0 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"5",@"marginTop",
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
                          @"176",@"height",
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




    _rounddiv1 = [[UMLayoutView alloc] init];
    _rounddiv1.controlId = @"rounddiv1";
    _rounddiv1.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          @"176",@"height",
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




    _rounddiv2 = [[UMLayoutView alloc] init];
    _rounddiv2.controlId = @"rounddiv2";
    _rounddiv2.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          @"132",@"height",
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




    _rounddiv3 = [[UMLayoutView alloc] init];
    _rounddiv3.controlId = @"rounddiv3";
    _rounddiv3.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          @"88",@"height",
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




    _rounddiv5 = [[UMLayoutView alloc] init];
    _rounddiv5.controlId = @"rounddiv5";
    _rounddiv5.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv5 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          [UIColor colorWithRed:0.78431374 green:0.78039217 blue:0.8 alpha:1],@"backgroundColor",
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




    _rounddiv4 = [[UMLayoutView alloc] init];
    _rounddiv4.controlId = @"rounddiv4";
    _rounddiv4.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv4 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          [UIColor colorWithRed:0.78431374 green:0.78039217 blue:0.8 alpha:1],@"backgroundColor",
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




    [_rounddiv4 setContainer:self];
    [_rounddiv4 addEvent:@"onclick" actionName:@"getattchment"];

    _rounddiv54 = [[UMLayoutView alloc] init];
    _rounddiv54.controlId = @"rounddiv54";
    _rounddiv54.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel11 addSubUMView:_rounddiv54];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv54 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"20",@"marginTop",
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
                          [UIColor colorWithRed:0.78431374 green:0.78039217 blue:0.8 alpha:1],@"backgroundColor",
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




    [_rounddiv54 setContainer:self];
    [_rounddiv54 addEvent:@"onclick" actionName:@"getreporthistory"];

    _rounddiv6 = [[UMLayoutView alloc] init];
    _rounddiv6.controlId = @"rounddiv6";
    _rounddiv6.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv0 addSubUMView:_rounddiv6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv6 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_top.png",@"backgroundImagePath",
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




    _rounddiv7 = [[UMLayoutView alloc] init];
    _rounddiv7.controlId = @"rounddiv7";
    _rounddiv7.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv0 addSubUMView:_rounddiv7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv7 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_mid.png",@"backgroundImagePath",
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




    _rounddiv8 = [[UMLayoutView alloc] init];
    _rounddiv8.controlId = @"rounddiv8";
    _rounddiv8.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv0 addSubUMView:_rounddiv8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_mid.png",@"backgroundImagePath",
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




    _rounddiv9 = [[UMLayoutView alloc] init];
    _rounddiv9.controlId = @"rounddiv9";
    _rounddiv9.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv0 addSubUMView:_rounddiv9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_down.png",@"backgroundImagePath",
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




// --label11
    _label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label11",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_start}"}];
    [(UMLayoutView*)_rounddiv6 addSubUMXView:_label11];

// --label15
    _label15 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"starttime",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label15",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv6 addSubUMXView:_label15];

// --label12
    _label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label12",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_end}"}];
    [(UMLayoutView*)_rounddiv7 addSubUMXView:_label12];

// --label16
    _label16 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"endtime",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label16",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv7 addSubUMXView:_label16];

// --label13
    _label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label13",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_subject}"}];
    [(UMLayoutView*)_rounddiv8 addSubUMXView:_label13];

// --label17
    _label17 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label17",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"onlongclick":@"onlongclick",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv8 addSubUMXView:_label17];

// --label14
    _label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label14",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_responser}"}];
    [(UMLayoutView*)_rounddiv9 addSubUMXView:_label14];

// --label18
    _label18 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"chargername",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label18",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv9 addSubUMXView:_label18];

    _rounddiv16 = [[UMLayoutView alloc] init];
    _rounddiv16.controlId = @"rounddiv16";
    _rounddiv16.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv1 addSubUMView:_rounddiv16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_top.png",@"backgroundImagePath",
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




    _rounddiv17 = [[UMLayoutView alloc] init];
    _rounddiv17.controlId = @"rounddiv17";
    _rounddiv17.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv1 addSubUMView:_rounddiv17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv17 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_mid.png",@"backgroundImagePath",
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




    _rounddiv18 = [[UMLayoutView alloc] init];
    _rounddiv18.controlId = @"rounddiv18";
    _rounddiv18.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv1 addSubUMView:_rounddiv18];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv18 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_mid.png",@"backgroundImagePath",
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




    _rounddiv19 = [[UMLayoutView alloc] init];
    _rounddiv19.controlId = @"rounddiv19";
    _rounddiv19.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv1 addSubUMView:_rounddiv19];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv19 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_down.png",@"backgroundImagePath",
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




// --label7
    _label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label7",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_taskContent}"}];
    [(UMLayoutView*)_rounddiv16 addSubUMXView:_label7];

// --label19
    _label19 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskcontent",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label19",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"onlongclick":@"onlongclick",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv16 addSubUMXView:_label19];

// --label8
    _label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label8",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_completionStandard}"}];
    [(UMLayoutView*)_rounddiv17 addSubUMXView:_label8];

// --label20
    _label20 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"completestandard",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label20",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"onlongclick":@"onlongclick",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv17 addSubUMXView:_label20];

// --label9
    _label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label9",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_priority}"}];
    [(UMLayoutView*)_rounddiv18 addSubUMXView:_label9];

// --label21
    _label21 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"priority",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label21",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv18 addSubUMXView:_label21];

// --label10
    _label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label10",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_parentTask}"}];
    [(UMLayoutView*)_rounddiv19 addSubUMXView:_label10];

// --label22
    _label22 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"supertaskname",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label22",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv19 addSubUMXView:_label22];

    _rounddiv12 = [[UMLayoutView alloc] init];
    _rounddiv12.controlId = @"rounddiv12";
    _rounddiv12.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv2 addSubUMView:_rounddiv12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv12 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_top.png",@"backgroundImagePath",
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




    _rounddiv13 = [[UMLayoutView alloc] init];
    _rounddiv13.controlId = @"rounddiv13";
    _rounddiv13.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv2 addSubUMView:_rounddiv13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_mid.png",@"backgroundImagePath",
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




    _rounddiv14 = [[UMLayoutView alloc] init];
    _rounddiv14.controlId = @"rounddiv14";
    _rounddiv14.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv2 addSubUMView:_rounddiv14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv14 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_down.png",@"backgroundImagePath",
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




// --label6
    _label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label6",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_remingdingMethod}"}];
    [(UMLayoutView*)_rounddiv12 addSubUMXView:_label6];

// --checkbox0
    _checkbox0 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox0",
                          @"bindfield":@"msg",
                          @"height":@"20",
                          @"placeholder":@"",
                          @"width":@"20",
                          @"margin-left":@"115",
                          @"check-on-image":@"checkbox_select",
                          @"readonly":@"true",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_rounddiv13 addSubUMXView:_checkbox0];

// --label222
    _label222 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"90",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label222",
                          @"txt_g":@"0.0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_notice}"}];
    [(UMLayoutView*)_rounddiv13 addSubUMXView:_label222];

// --checkbox1
    _checkbox1 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox1",
                          @"bindfield":@"email",
                          @"padding-left":@"2",
                          @"height":@"20",
                          @"width":@"20",
                          @"check-on-image":@"checkbox_select",
                          @"readonly":@"true",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_rounddiv13 addSubUMXView:_checkbox1];

// --label223
    _label223 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"90",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label223",
                          @"txt_g":@"0.0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_email}"}];
    [(UMLayoutView*)_rounddiv13 addSubUMXView:_label223];

// --checkbox2
    _checkbox2 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox2",
                          @"bindfield":@"sms",
                          @"height":@"20",
                          @"width":@"20",
                          @"margin-left":@"115",
                          @"check-on-image":@"checkbox_select",
                          @"readonly":@"true",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_rounddiv14 addSubUMXView:_checkbox2];

// --label224
    _label224 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"90",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label224",
                          @"txt_g":@"0.0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_sms}"}];
    [(UMLayoutView*)_rounddiv14 addSubUMXView:_label224];

// --checkbox3
    _checkbox3 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox3",
                          @"bindfield":@"im",
                          @"padding-left":@"2",
                          @"height":@"20",
                          @"width":@"20",
                          @"check-on-image":@"checkbox_select",
                          @"readonly":@"true",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_rounddiv14 addSubUMXView:_checkbox3];

// --label225
    _label225 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"90",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label225",
                          @"txt_g":@"0.0",
                          @"height":@"30",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_im}"}];
    [(UMLayoutView*)_rounddiv14 addSubUMXView:_label225];

    _rounddiv10 = [[UMLayoutView alloc] init];
    _rounddiv10.controlId = @"rounddiv10";
    _rounddiv10.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv3 addSubUMView:_rounddiv10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_top.png",@"backgroundImagePath",
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




    _rounddiv11 = [[UMLayoutView alloc] init];
    _rounddiv11.controlId = @"rounddiv11";
    _rounddiv11.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv3 addSubUMView:_rounddiv11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv11 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"at44_down.png",@"backgroundImagePath",
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




// --labe26
    _labe26 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"assistantstructlistcache",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"display":@"none",
                          @"id":@"labe26",
                          @"txt_g":@"0.0",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv10 addSubUMXView:_labe26];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label4",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_assistant}"}];
    [(UMLayoutView*)_rounddiv10 addSubUMXView:_label4];

// --label23
    _label23 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"assistpersonlist",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label23",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv10 addSubUMXView:_label23];

// --labe28
    _labe28 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"exammanstructlistcache",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"12",
                          @"txt_r":@"0.0",
                          @"display":@"none",
                          @"id":@"labe28",
                          @"txt_g":@"0.0",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"12",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv11 addSubUMXView:_labe28];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label5",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_viewer}"}];
    [(UMLayoutView*)_rounddiv11 addSubUMXView:_label5];

// --label24
    _label24 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"exammanpsnlist",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label24",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv11 addSubUMXView:_label24];

    _rounddiv55 = [[UMLayoutView alloc] init];
    _rounddiv55.controlId = @"rounddiv55";
    _rounddiv55.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv5 addSubUMView:_rounddiv55];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv55 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"42",@"height",
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




// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label3",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_comments}"}];
    [(UMLayoutView*)_rounddiv55 addSubUMXView:_label3];

// --label25
    _label25 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"remark",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label25",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"onlongclick":@"onlongclick",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv55 addSubUMXView:_label25];

    _rounddiv44 = [[UMLayoutView alloc] init];
    _rounddiv44.controlId = @"rounddiv44";
    _rounddiv44.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv4 addSubUMView:_rounddiv44];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv44 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"42",@"height",
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




// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_attachment}"}];
    [(UMLayoutView*)_rounddiv44 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"count",
                          @"padding-right":@"5",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"label2",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv44 addSubUMXView:_label2];

// --button2
    _button2 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"pressed-image":@"ecm_arrow_right.png",
                          @"width":@"8",
                          @"font_size":@"18",
                          @"txt_r":@"1.0",
                          @"background-image-dis":@"button",
                          @"id":@"button2",
                          @"txt_g":@"0.0",
                          @"height":@"13",
                          @"font_family":@"ArialMT",
                          @"color":@"#ff0000",
                          @"font-size":@"18",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"background-image":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_rounddiv44 addSubUMXView:_button2];

    _rounddiv64 = [[UMLayoutView alloc] init];
    _rounddiv64.controlId = @"rounddiv64";
    _rounddiv64.layoutType = Layout_hbox;
    [(UMLayoutView*)_rounddiv54 addSubUMView:_rounddiv64];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rounddiv64 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"42",@"height",
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




// --label51
    _label51 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label51",
                          @"txt_g":@"0.0",
                          @"height":@"15",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"margin-left":@"15",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.task_reportHistory}"}];
    [(UMLayoutView*)_rounddiv64 addSubUMXView:_label51];

// --label333
    _label333 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"id":@"label333",
                          @"halign":@"center",
                          @"weight":@"1",
                          @"width":@"0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_rounddiv64 addSubUMXView:_label333];

// --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_rounddiv64 addSubUMXView:_image0];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"pressed-image":@"button_touch",
                          @"width":@"0",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"button1",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"18",
                          @"value":@"#{res.task_cancel}",
                          @"onclick":@"canceljs",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_button1];

// --button3
    _button3 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"weight":@"1",
                          @"pressed-image":@"button_touch",
                          @"width":@"0",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"button3",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"18",
                          @"margin-left":@"5",
                          @"value":@"#{res.task_delete}",
                          @"onclick":@"deldialog",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_button3];

// --button4
    _button4 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"right",
                          @"weight":@"1",
                          @"pressed-image":@"button_touch",
                          @"width":@"0",
                          @"font_size":@"18",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"button4",
                          @"height":@"30",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"18",
                          @"value":@"#{res.task_remind}",
                          @"onclick":@"openUrgewin",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"button"}];
    [(UMLayoutView*)_toolbar0 addSubUMXView:_button4];


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

     

[self startload:nil  args:nil];









































































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
    
    





















[self umcontrol:_label15 controlid:@"label15" bindfield:@"starttime"];


[self umcontrol:_label16 controlid:@"label16" bindfield:@"endtime"];


[self umcontrol:_label17 controlid:@"label17" bindfield:@"taskname"];


[self umcontrol:_label18 controlid:@"label18" bindfield:@"chargername"];






[self umcontrol:_label19 controlid:@"label19" bindfield:@"taskcontent"];


[self umcontrol:_label20 controlid:@"label20" bindfield:@"completestandard"];


[self umcontrol:_label21 controlid:@"label21" bindfield:@"priority"];


[self umcontrol:_label22 controlid:@"label22" bindfield:@"supertaskname"];





[self umcontrol:_checkbox0 controlid:@"checkbox0" bindfield:@"msg"];


[self umcontrol:_checkbox1 controlid:@"checkbox1" bindfield:@"email"];


[self umcontrol:_checkbox2 controlid:@"checkbox2" bindfield:@"sms"];


[self umcontrol:_checkbox3 controlid:@"checkbox3" bindfield:@"im"];




[self umcontrol:_labe26 controlid:@"labe26" bindfield:@"assistantstructlistcache"];


[self umcontrol:_label23 controlid:@"label23" bindfield:@"assistpersonlist"];

[self umcontrol:_labe28 controlid:@"labe28" bindfield:@"exammanstructlistcache"];


[self umcontrol:_label24 controlid:@"label24" bindfield:@"exammanpsnlist"];



[self umcontrol:_label25 controlid:@"label25" bindfield:@"remark"];



[self umcontrol:_label2 controlid:@"label2" bindfield:@"count"];









    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions
- (void)onlongclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
    NSString *aString_2 =[sender getProperty:@"text"];
    if(aString_2)
    {
        CGRect frame = [[UIScreen mainScreen ] bounds];
        CGRect showFrame = CGRectInset(frame, 16.0f, 16.0f);
        CWAShowDetailTextView *showDetailTextView = [[CWAShowDetailTextView alloc] initWithText:aString_2 	withShowFrame:showFrame withFrame:frame];
        [showDetailTextView show];
    }
}
- (void)canceldialog:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"canceldialog" method:@"UMView.openDialog" sender:sender]];

 [args putValue:@"#{res.task_canceltask}" forKey:@"message"];

 [args putValue:@"#{res.task_cancel}" forKey:@"title"];

 [args putValue:@"#{res.task_ok}" forKey:@"okbuttontitle"];

 [args putValue:@"cancelTask" forKey:@"okaction"];

 [args putValue:@"ok-cancel" forKey:@"style"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"detaildata" forKey:@"contextmapping"];

 [args putValue:@"#{res.task_cancel}" forKey:@"cancelbuttontitle"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)altertip:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"altertip" method:@"altertip" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)canceljs:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"canceljs" method:@"canceljs" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonUnload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonUnload" method:@"UMonUnload" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonComplete:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonComplete" method:@"UMonComplete" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonDataBinding:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonDataBinding" method:@"UMonDataBinding" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)cancelTask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"cancelTask" method:@"UMService.callAction" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.oatask.DetailtaskExtendController" forKey:@"viewid"];

 [args putValue:@"#{taskid}" forKey:@"taskid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"returntip" forKey:@"callback"];

 [args putValue:@"cancelTask" forKey:@"action"];

 [args putValue:@"true" forKey:@"autoDataBinding"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)delTask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"delTask" method:@"UMService.callAction" sender:sender]];

 [args putValue:@"nc.bs.oa.oama.oatask.DetailtaskExtendController" forKey:@"viewid"];

 [args putValue:@"#{taskid}" forKey:@"taskid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"returntip" forKey:@"callback"];

 [args putValue:@"delTaskForUAP" forKey:@"action"];

 [args putValue:@"true" forKey:@"autoDataBinding"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)getattchment:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"getattchment" method:@"UMView.open" sender:sender]];

 [args putValue:@"task_file_detail" forKey:@"viewid"];

 [args putValue:@"#{taskid}" forKey:@"taskid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"true" forKey:@"iskeep"];

 [args putValue:@"1" forKey:@"type"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)returnback:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"returnback" method:@"UMView.open" sender:sender]];

 [args putValue:@"task_mainviewtwo" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)startload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"startload" method:@"startload" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)edittask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"edittask" method:@"UMView.open" sender:sender]];

 [args putValue:@"#{CONTEXT}" forKey:@"taskdetail"];

 [args putValue:@"task_edit" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)returntip:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"returntip" method:@"UMView.openDialog" sender:sender]];

 [args putValue:@"#{res.task_dosuccess}" forKey:@"message"];

 [args putValue:@"#{detaildata}" forKey:@"abc"];

 [args putValue:@"提示" forKey:@"title"];

 [args putValue:@"#{res.task_ok}" forKey:@"okbuttontitle"];

 [args putValue:@"returnback" forKey:@"okaction"];

 [args putValue:@"ok" forKey:@"style"];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonInit:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonInit" method:@"UMonInit" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)openUrgewin:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"openUrgewin" method:@"openUrgewin" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)UMonLoad:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"UMonLoad" method:@"UMonLoad" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)beforeedittask:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"beforeedittask" method:@"beforeedittask" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)getreporthistory:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"getreporthistory" method:@"UMView.open" sender:sender]];

 [args putValue:@"task_reporthistory" forKey:@"viewid"];

 [args putValue:@"#{taskid}" forKey:@"taskid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"true" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)deldialog:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"deldialog" method:@"UMView.openDialog" sender:sender]];

 [args putValue:@"#{res.task_deletetask}" forKey:@"message"];

 [args putValue:@"#{res.task_delete}" forKey:@"title"];

 [args putValue:@"#{res.task_ok}" forKey:@"okbuttontitle"];

 [args putValue:@"delTask" forKey:@"okaction"];

 [args putValue:@"ok-cancel" forKey:@"style"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"detaildata" forKey:@"contextmapping"];

 [args putValue:@"#{res.task_cancel}" forKey:@"cancelbuttontitle"];
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