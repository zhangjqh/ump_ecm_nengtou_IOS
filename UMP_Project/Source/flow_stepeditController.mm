//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "flow_stepeditController.h"






























@interface flow_stepeditController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation flow_stepeditController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize StepEdit = _StepEdit;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize basePanel = _basePanel;

@synthesize navPanel = _navPanel;

@synthesize Scrollview_mainPanel = _Scrollview_mainPanel;

@synthesize navigatorbar = _navigatorbar;

@synthesize leftPanel = _leftPanel;

@synthesize centerPanel = _centerPanel;

@synthesize rightPanel = _rightPanel;




@synthesize mainPanel = _mainPanel;

@synthesize spaceOutPanel = _spaceOutPanel;

@synthesize nullPanel = _nullPanel;


@synthesize spaceOutPanel1 = _spaceOutPanel1;

@synthesize modelPanel = _modelPanel;

@synthesize rulePanel = _rulePanel;

@synthesize spaceInnerPanel = _spaceInnerPanel;


@synthesize spaceInnerPanel1 = _spaceInnerPanel1;










static NSString *controllerC = @"StepEditController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"WorkDetail";


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
        _StepEdit = _viewObject;

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
    _basePanel = [[UMLayoutView alloc] init];
    _basePanel.controlId = @"basePanel";
    _basePanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_StepEdit addSubUMView:_basePanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_basePanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _navPanel = [[UMLayoutView alloc] init];
    _navPanel.controlId = @"navPanel";
    _navPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_basePanel addSubUMView:_navPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_navPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




_Scrollview_mainPanel = [[UMScrollView alloc] init];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_Scrollview_mainPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _Scrollview_mainPanel.layoutType = Layout_vbox;

    _Scrollview_mainPanel.hScrollType=UMScrollDirectionDisabled;
    _Scrollview_mainPanel.vScrollType=UMScrollDirectionAuto;
    [(UMLayoutView*)_basePanel addSubUMView:_Scrollview_mainPanel];

    _navigatorbar = [[UMLayoutView alloc] init];
    _navigatorbar.controlId = @"navigatorbar";
    _navigatorbar.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_navigatorbar info:[NSDictionary dictionaryWithObjectsAndKeys:
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



    [(UMLayoutView*)_navPanel addSubUMView:_navigatorbar];
    if (![[_navigatorbar backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar backgroundColor];
}
    _navBarHidden = NO;

    _leftPanel = [[UMLayoutView alloc] init];
    _leftPanel.controlId = @"leftPanel";
    _leftPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_navigatorbar addSubUMView:_leftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_leftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"88",@"width",
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




    _centerPanel = [[UMLayoutView alloc] init];
    _centerPanel.controlId = @"centerPanel";
    _centerPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_navigatorbar addSubUMView:_centerPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_centerPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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




    _rightPanel = [[UMLayoutView alloc] init];
    _rightPanel.controlId = @"rightPanel";
    _rightPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_navigatorbar addSubUMView:_rightPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rightPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"88",@"width",
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




// --returnBtn
    _returnBtn = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"15",
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"returnBtn",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"#{res.ecm_back}",
                          @"onclick":@"onReturnBtnClick",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_leftPanel addSubUMXView:_returnBtn];

// --navLabel
    _navLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"fill",
                          @"font_size":@"17",
                          @"txt_r":@"0.0",
                          @"id":@"navLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"#{res.flow_addperson}"}];
    [(UMLayoutView*)_centerPanel addSubUMXView:_navLabel];

// --addBtn
    _addBtn = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"right",
                          @"pressed-image":@"btn_add_touch",
                          @"width":@"44",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"background-image-dis":@"button",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"addBtn",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"onclick":@"onAddBtnClick",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_add",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_rightPanel addSubUMXView:_addBtn];

    _mainPanel = [[UMLayoutView alloc] init];
    _mainPanel.controlId = @"mainPanel";
    _mainPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_Scrollview_mainPanel addSubUMView:_mainPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_mainPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _spaceOutPanel = [[UMLayoutView alloc] init];
    _spaceOutPanel.controlId = @"spaceOutPanel";
    _spaceOutPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_mainPanel addSubUMView:_spaceOutPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_spaceOutPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          @"16",@"height",
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




    _nullPanel = [[UMLayoutView alloc] init];
    _nullPanel.controlId = @"nullPanel";
    _nullPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_mainPanel addSubUMView:_nullPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_nullPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          @"45",@"height",
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
                          @"none",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




// --listView
    _listView = [UMControl creatControl:@"UMXTableView" container:self  params:@{
                          @"bindfield":@"editstep.steps",
                          @"halign":@"center",
                          @"listview-delbtn-image":@"tool_del.png",
                          @"cursoraction":@"cursoreditstep_stepsalias",
                          @"status":@"delete",
                          @"synccontext":@"editstep.steps",
                          @"width":@"fill",
                          @"adapteraddition":@"false",
                          @"bg_r":@"1.0",
                          @"adaptiveheight":@"true",
                          @"onitemdelete":@"onDeleteBtnClick",
                          @"id":@"listView",
                          @"height":@"44",
                          @"background":@"#ffffff",
                          @"layout":@"Layout_vbox",
                          @"bg_b":@"1.0",
                          @"listview-delbtn-pressedimage":@"tool_del_touch.png",
                          @"bg_g":@"1.0",
                          @"alternatingrow":@"true",@"value":@"                     \n                "}];
    [(UMLayoutView*)_mainPanel addSubUMXView:_listView];

    _spaceOutPanel1 = [[UMLayoutView alloc] init];
    _spaceOutPanel1.controlId = @"spaceOutPanel1";
    _spaceOutPanel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_mainPanel addSubUMView:_spaceOutPanel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_spaceOutPanel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          @"21",@"height",
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
                          @"none",@"display",
                          @"",@"gradient",
                          @"0",@"border-radius",
                          nil] container:self];




    _modelPanel = [[UMLayoutView alloc] init];
    _modelPanel.controlId = @"modelPanel";
    _modelPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_mainPanel addSubUMView:_modelPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_modelPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
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
                          @"list_split_full.png",@"backgroundImagePath",
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




    _rulePanel = [[UMLayoutView alloc] init];
    _rulePanel.controlId = @"rulePanel";
    _rulePanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_mainPanel addSubUMView:_rulePanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_rulePanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
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
                          @"list_split_full.png",@"backgroundImagePath",
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




    _spaceInnerPanel = [[UMLayoutView alloc] init];
    _spaceInnerPanel.controlId = @"spaceInnerPanel";
    _spaceInnerPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_spaceOutPanel addSubUMView:_spaceInnerPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_spaceInnerPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --nullLabel
    _nullLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"bg_r":@"1.0",
                          @"txt_g":@"0.5568628",
                          @"id":@"nullLabel",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"background":@"#ffffff",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",
                          @"bg_g":@"1.0",@"value":@"#{res.flow_nodata}"}];
    [(UMLayoutView*)_nullPanel addSubUMXView:_nullLabel];

    _spaceInnerPanel1 = [[UMLayoutView alloc] init];
    _spaceInnerPanel1.controlId = @"spaceInnerPanel1";
    _spaceInnerPanel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_spaceOutPanel1 addSubUMView:_spaceInnerPanel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_spaceInnerPanel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --modelLabel
    _modelLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"modelLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"#{res.flow_processmode}"}];
    [(UMLayoutView*)_modelPanel addSubUMXView:_modelLabel];

// --modelToggle
    _modelToggle = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"modelToggle",
                          @"bindfield":@"editstep.model",
                          @"height":@"30",
                          @"width":@"150",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_modelPanel addSubUMXView:_modelToggle];

// --serialBtn
    _serialBtn = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_2_left",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.flow_serial}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_2_left_touch",
                          @"txt_g":@"0.0",
                          @"id":@"serialBtn",
                          @"height":@"30",
                          @"p_txt_b":@"1.0",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"1",
                          @"onclick":@"onSerialBtnClick",
                          @"font-family":@"default",
                          @"texton":@"#{res.flow_serial}",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_modelToggle addView:_serialBtn];

// --parallelBtn
    _parallelBtn = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"halign":@"center",
                          @"background-image-off":@"label_2_right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.8980392",
                          @"textoff":@"#{res.flow_parallel}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"background-image-on":@"label_2_right_touch",
                          @"txt_g":@"0.0",
                          @"id":@"parallelBtn",
                          @"height":@"30",
                          @"p_txt_b":@"1.0",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"2",
                          @"onclick":@"onParallelBtnClick",
                          @"font-family":@"default",
                          @"texton":@"#{res.flow_parallel}",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"1.0"}];
    [(UMLayoutView*)_modelToggle addView:_parallelBtn];

// --ruleLabel
    _ruleLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"ruleLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"#{res.flow_processrule}"}];
    [(UMLayoutView*)_rulePanel addSubUMXView:_ruleLabel];

// --ruleToggle
    _ruleToggle = [UMControl creatControl:@"UMXToggleButtonGroup" container:self  params:@{
                          @"id":@"ruleToggle",
                          @"bindfield":@"editstep.rule",
                          @"height":@"30",
                          @"width":@"150",
                          @"layout":@"Layout_hbox",
                          @"value":@"buttongroup",
                          @"valign":@"center"}];
    [(UMLayoutView*)_rulePanel addSubUMXView:_ruleToggle];

// --seizeBtn
    _seizeBtn = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"background-image-off":@"label_2_left",
                          @"font_size":@"14",
                          @"textoff":@"#{res.flow_seize}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"seizeBtn",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"2",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_2_left_touch",
                          @"color":@"#e50011",
                          @"onclick":@"onSeizeBtnClick",
                          @"font-family":@"default",
                          @"texton":@"#{res.flow_seize}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_ruleToggle addView:_seizeBtn];

// --countersignBtn
    _countersignBtn = [UMControl creatControl:@"UMXToggleButton" container:self  params:@{
                          @"p_txt_r":@"1.0",
                          @"weight":@"1",
                          @"background-image-off":@"label_2_right",
                          @"font_size":@"14",
                          @"textoff":@"#{res.flow_countersign}",
                          @"font-pressed-color":@"#ffffff",
                          @"type":@"button",
                          @"txt_g":@"0.0",
                          @"id":@"countersignBtn",
                          @"p_txt_b":@"1.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"value":@"1",
                          @"txt_b":@"0.06666667",
                          @"p_txt_g":@"1.0",
                          @"halign":@"center",
                          @"width":@"0",
                          @"txt_r":@"0.8980392",
                          @"background-image-on":@"label_2_right_touch",
                          @"color":@"#e50011",
                          @"onclick":@"onCountersignBtnClick",
                          @"font-family":@"default",
                          @"texton":@"#{res.flow_countersign}",
                          @"valign":@"center"}];
    [(UMLayoutView*)_ruleToggle addView:_countersignBtn];


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

     [self onDataLoad:nil  args:nil];





























}
- (void)viewWillAppear:(BOOL)animated
{
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    [SysContext getInstance].CurrentViewController = self;

    if (isResum) {//第二次进入调用
        [self addCallBack:nil  args:nil];  
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
    
    













[self umcontrol:_listView controlid:@"listView" bindfield:@"editstep.steps"];








[self umcontrol:_modelToggle controlid:@"modelToggle" bindfield:@"editstep.model"];




[self umcontrol:_ruleToggle controlid:@"ruleToggle" bindfield:@"editstep.rule"];



    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)onUpBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onUpBtnClick" method:@"onUpBtnClick" sender:sender]];

 [args putValue:@"#{cursor.cursoreditstep_stepsalias.index}" forKey:@"index"];

 [args putValue:@"cursoreditstep_stepsalias" forKey:@"cursor"];

 [args putValue:@"editstep.steps" forKey:@"index_arrayPath"];
  [UMCompatible exec:sender container:self cursor:@"cursoreditstep_stepsalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onSeizeBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onSeizeBtnClick" method:@"onSeizeBtnClick" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onDeleteBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onDeleteBtnClick" method:@"onDeleteBtnClick" sender:sender]];

 [args putValue:@"#{cursor.cursoreditstep_stepsalias.index}" forKey:@"index"];

 [args putValue:@"cursoreditstep_stepsalias" forKey:@"cursor"];

 [args putValue:@"editstep.steps" forKey:@"index_arrayPath"];

 [args putValue:@"true" forKey:@"isDataCollect"];
  [UMCompatible exec:sender container:self cursor:@"cursoreditstep_stepsalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onSerialBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onSerialBtnClick" method:@"onSerialBtnClick" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onCountersignBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onCountersignBtnClick" method:@"onCountersignBtnClick" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onParallelBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onParallelBtnClick" method:@"onParallelBtnClick" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onDataLoad:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onDataLoad" method:@"onDataLoad" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onDownBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onDownBtnClick" method:@"onDownBtnClick" sender:sender]];

 [args putValue:@"#{cursor.cursoreditstep_stepsalias.index}" forKey:@"index"];

 [args putValue:@"cursoreditstep_stepsalias" forKey:@"cursor"];

 [args putValue:@"editstep.steps" forKey:@"index_arrayPath"];
  [UMCompatible exec:sender container:self cursor:@"cursoreditstep_stepsalias"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onReturnBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onReturnBtnClick" method:@"UMView.close" sender:sender]];

 [args putValue:@"#{editstep}" forKey:@"editstep"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"15" forKey:@"resultcode"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)addCallBack:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"addCallBack" method:@"addCallBack" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onAddBtnClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onAddBtnClick" method:@"UMView.open" sender:sender]];

 [args putValue:@"ecm_searchdept" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"iskeep"];
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
