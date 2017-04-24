//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "ecm_setController.h"




















@interface ecm_setController ()
{
    BOOL isResum;//适配安卓resum事件
}
@end

@implementation ecm_setController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize Ecm_set = _Ecm_set;
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

@synthesize panel5 = _panel5;

@synthesize panel4 = _panel4;

@synthesize panel6 = _panel6;




@synthesize widget0 = _widget0;

@synthesize widget0_toolbar0 = _widget0_toolbar0;





static NSString *controllerC = @"Ecm_SetController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"";


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
        _Ecm_set = _viewObject;
        
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
    [(UMLayoutView*)_Ecm_set addSubUMView:_viewPage0];
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
                                                      @"",@"display",
                                                      @"",@"gradient",
                                                      @"0",@"border-radius",
                                                      nil]];
    
    
    
    
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
                                                          @"navbar_login.png",@"backgroundImagePath",
                                                          [UIColor clearColor],@"background_color_dis",
                                                          @"",@"border-top-style",
                                                          @"",@"border-top-width",
                                                          @"",@"border-top-color",
                                                          @"",@"display",
                                                          @"",@"gradient",
                                                          @"0",@"border-radius",
                                                          nil]];
    
    
    
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
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
    
    
    
    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_vbox;
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
                                                   [UIColor clearColor],@"backgroundColor",
                                                   @"",@"backgroundImagePath",
                                                   [UIColor clearColor],@"background_color_dis",
                                                   @"",@"border-top-style",
                                                   @"",@"border-top-width",
                                                   @"",@"border-top-color",
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
    
    
    
    // --navLabel
    _navLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{@"halign":@"center",@"width":@"fill",@"font_size":@"17",@"txt_r":@"0.0",@"id":@"navLabel",@"txt_g":@"0.0",@"height":@"fill",@"color":@"#000000",@"font_family":@"ArialMT",@"font-size":@"17",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"readonly":@"true",@"value":@"#{res.setting}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_navLabel];
    
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
                                                   [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
                                                   @"",@"backgroundImagePath",
                                                   [UIColor clearColor],@"background_color_dis",
                                                   @"",@"border-top-style",
                                                   @"",@"border-top-width",
                                                   @"",@"border-top-color",
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
    
    
    
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
                                                   [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
                                                   @"",@"backgroundImagePath",
                                                   [UIColor clearColor],@"background_color_dis",
                                                   @"",@"border-top-style",
                                                   @"",@"border-top-width",
                                                   @"",@"border-top-color",
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
    
    
    
    _panel6 = [[UMLayoutView alloc] init];
    _panel6.controlId = @"panel4";
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
                                                   [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
                                                   @"",@"backgroundImagePath",
                                                   [UIColor clearColor],@"background_color_dis",
                                                   @"",@"border-top-style",
                                                   @"",@"border-top-width",
                                                   @"",@"border-top-color",
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
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
                                                   [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
                                                   @"",@"backgroundImagePath",
                                                   [UIColor clearColor],@"background_color_dis",
                                                   @"",@"border-top-style",
                                                   @"",@"border-top-width",
                                                   @"",@"border-top-color",
                                                   @"",@"display",
                                                   @"",@"gradient",
                                                   @"0",@"border-radius",
                                                   nil]];
    
    
    
    
    // --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"left",@"p_txt_r":@"0.8980392",@"weight":@"1",@"width":@"0",@"font_size":@"15",@"txt_r":@"0.0",@"font-pressed-color":@"#e50011",@"txt_g":@"0.0",@"id":@"button1",@"p_txt_b":@"0.06666667",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#000000",@"font-size":@"15",@"value":@"#{res.serversetting}",@"onclick":@"resetConnet",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel2 addSubUMXView:_button1];
    
    // --image2
    _image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{@"id":@"image2",@"height":@"13",@"width":@"8",@"scaletype":@"fitcenter",@"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel2 addSubUMXView:_image2];
    
    // --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"left",@"p_txt_r":@"0.8980392",@"weight":@"1",@"width":@"0",@"font_size":@"15",@"txt_r":@"0.0",@"font-pressed-color":@"#e50011",@"txt_g":@"0.0",@"id":@"button0",@"p_txt_b":@"0.06666667",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#000000",@"font-size":@"15",@"value":@"#{res.ecm_about}",@"onclick":@"ecm_about",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_button0];
    
    // --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{@"id":@"image0",@"height":@"13",@"width":@"8",@"scaletype":@"fitcenter",@"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_image0];
    
    // --button2
    _button2 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"left",@"p_txt_r":@"0.8980392",@"width":@"fill",@"font_size":@"15",@"txt_r":@"0.0",@"font-pressed-color":@"#e50011",@"txt_g":@"0.0",@"id":@"button2",@"p_txt_b":@"0.06666667",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#000000",@"font-size":@"15",@"value":@"#{res.logout}",@"onclick":@"beforeLogout",@"font-family":@"default",@"txt_b":@"0.0",@"margin-top":@"1",@"valign":@"center",@"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel4 addSubUMXView:_button2];
    
    _widget0 = [[UMLayoutView alloc] init];
    _widget0.controlId = @"widget0";
    _widget0.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel1 addSubUMView:_widget0];
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
                                                    [UIColor clearColor],@"backgroundColor",
                                                    @"",@"backgroundImagePath",
                                                    [UIColor clearColor],@"background_color_dis",
                                                    @"",@"border-top-style",
                                                    @"",@"border-top-width",
                                                    @"",@"border-top-color",
                                                    @"",@"display",
                                                    @"",@"gradient",
                                                    @"0",@"border-radius",
                                                    nil]];
    
    
    
    
    _widget0_toolbar0 = [[UMLayoutView alloc] init];
    _widget0_toolbar0.controlId = @"widget0_toolbar0";
    _widget0_toolbar0.layoutType = Layout_hbox;
    //设置控件基本属性
    [UMCompatible initCommonProperty:_widget0_toolbar0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                                                             @"",@"display",
                                                             @"",@"gradient",
                                                             @"0",@"border-radius",
                                                             nil]];
    
    
    
    [(UMLayoutView*)_widget0 addSubUMView:_widget0_toolbar0];
    
    // --widget0_imagebutton0
    _widget0_imagebutton0 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{@"p_txt_r":@"0.8980392",@"weight":@"1",@"font_size":@"10",@"font-pressed-color":@"#e50011",@"id":@"widget0_imagebutton0",@"txt_g":@"0.53333336",@"height":@"fill",@"p_txt_b":@"0.06666667",@"font_family":@"ArialMT",@"font-size":@"10",@"value":@"#{res.homepage}",@"icon-background-image":@"ecm_home.png",@"txt_b":@"0.53333336",@"p_txt_g":@"0.0",@"halign":@"center",@"width":@"0",@"icon-width":@"25",@"txt_r":@"0.5411765",@"istogglebutton":@"true",@"icon-height":@"25",@"color":@"#8a8888",@"onclick":@"toHome",@"icon-pressed-image":@"ecm_home_touch.png",@"font-family":@"default",@"valign":@"center",@"checked":@"false",@"icon-text-spacing":@"5"}];
    [(UMLayoutView*)_widget0_toolbar0 addSubUMXView:_widget0_imagebutton0];
    
    // --widget0_imagebutton2
    _widget0_imagebutton2 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{@"p_txt_r":@"0.8980392",@"weight":@"1",@"font_size":@"10",@"font-pressed-color":@"#e50011",@"id":@"widget0_imagebutton2",@"txt_g":@"0.53333336",@"height":@"fill",@"p_txt_b":@"0.06666667",@"font_family":@"ArialMT",@"font-size":@"10",@"value":@"#{res.ecm_discovery}",@"icon-background-image":@"ecm_discovery.png",@"txt_b":@"0.53333336",@"p_txt_g":@"0.0",@"halign":@"center",@"width":@"0",@"icon-width":@"25",@"txt_r":@"0.5411765",@"istogglebutton":@"true",@"icon-height":@"25",@"color":@"#8a8888",@"onclick":@"toDiscovery",@"icon-pressed-image":@"ecm_discovery_touch.png",@"font-family":@"default",@"valign":@"center",@"checked":@"false",@"icon-text-spacing":@"5"}];
    [(UMLayoutView*)_widget0_toolbar0 addSubUMXView:_widget0_imagebutton2];
    
    // --widget0_imagebutton4
    _widget0_imagebutton4 = [UMControl creatControl:@"UMXImageButton" container:self  params:@{@"p_txt_r":@"0.8980392",@"weight":@"1",@"font_size":@"10",@"font-pressed-color":@"#e50011",@"id":@"widget0_imagebutton4",@"txt_g":@"0.53333336",@"height":@"fill",@"p_txt_b":@"0.06666667",@"font_family":@"ArialMT",@"font-size":@"10",@"value":@"#{res.setting}",@"icon-background-image":@"ecm_set.png",@"txt_b":@"0.53333336",@"p_txt_g":@"0.0",@"halign":@"center",@"width":@"0",@"icon-width":@"25",@"txt_r":@"0.5411765",@"istogglebutton":@"true",@"icon-height":@"25",@"color":@"#8a8888",@"onclick":@"toSet",@"icon-pressed-image":@"ecm_set_touch.png",@"font-family":@"default",@"valign":@"center",@"checked":@"false",@"icon-text-spacing":@"5"}];
    [(UMLayoutView*)_widget0_toolbar0 addSubUMXView:_widget0_imagebutton4];
    
    
    [_viewObject adjustSize];
}

#pragma mark view on load

- (void)viewDidLoad
{
    [super viewDidLoad];
    [SysContext getInstance].CurrentViewController = self;
    [self.view addSubview:_viewObject.view];
    [self initChilds];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        self.view.bounds = CGRectMake(0, -20, self.view.frame.size.width, self.view.frame.size.height );
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(15, 194, 200, 30)];
    label.font = [UIFont systemFontOfSize:15];
    label.text = @"接收推送信息";
    label.textAlignment = UITextAlignmentLeft;
    
    [self.view addSubview:label];
    
    UISwitch *tempSwitch = [[UISwitch alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width - 70 , 194, 200, 30)];
    
    [self.view addSubview:tempSwitch];
    _iSwitch = tempSwitch;
    
    NSString *keyPushSwitch = @"nc.oa.push.switch";
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *status = [defaults objectForKey:keyPushSwitch];
    if ([status intValue] == 1) {
        _iSwitch.on = YES;
    }else{
        _iSwitch.on = NO;
    }
    
    
    [tempSwitch addTarget:self action:@selector(switchChange:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //加载JS
    [self performSelectorInBackground:@selector(umOnload) withObject:nil];
}

-(void)switchChange:(UISwitch *) iSwitch{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *keyPushSwitch = @"nc.oa.push.switch";
    if (iSwitch.isOn) {
        [defaults setObject:@"1" forKey:keyPushSwitch];
        [self openPush:nil args:nil withSwitch:YES];
    }else{
        [defaults setObject:@"0" forKey:keyPushSwitch];
        [self openPush:nil args:nil withSwitch:NO];
    }
}

- (void)openPush:(id<UMViewControl>)sender args:(XEventArgs *)args withSwitch:(BOOL)iSwitch{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"openPush" method:@"UMService.callAction" sender:sender]];
    
    [args putValue:@"nc.bs.oa.oama.ecm.EcmController" forKey:@"viewid"];
    
    [args putValue:@"setPush" forKey:@"action"];
    [args putValue:@"failed" forKey:@"error"];
    
    if (iSwitch) {
        [args putValue:@"true" forKey:@"enable"];
    }else{
        [args putValue:@"false" forKey:@"enable"];
    }
    
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)failed:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"beforeLogout" method:@"UMView.openDialog" sender:sender]];
    
    [args putValue:@"MA版本低" forKey:@"message"];
    
    [args putValue:@"消息" forKey:@"title"];
    
    [args putValue:@"#{res.ecm_ok}" forKey:@"okbuttontitle"];
    
    [args putValue:@"ok" forKey:@"style"];
    
    [UMCommonSevice callSeviceWithMethod:args];
     _iSwitch.on = NO;
     _iSwitch.enabled = NO;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *keyPushSwitch = @"nc.oa.push.switch";
    [defaults setObject:@"0" forKey:keyPushSwitch];
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
    
    [self initSet:nil  args:nil];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    [SysContext getInstance].CurrentViewController = self;
    
    if (!isResum) {//第二次进入调用
        
    }else {
        isResum = YES;
    }
    [_viewObject umviewAppear];
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self becomeFirstResponder];
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    [self bindAll];
    [_viewObject clearFinishedAdjustSize];
    [_viewObject adjustSize];
}

#pragma mark  actions

- (void)ecm_about:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"ecm_about" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_about" forKey:@"viewid"];
    
    [args putValue:@"true" forKey:@"iskeep"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)beforeLogout:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"beforeLogout" method:@"UMView.openDialog" sender:sender]];
    
    [args putValue:@"#{res.ecm_logout_confirm}" forKey:@"message"];
    
    [args putValue:@"#{res.flow_notice}" forKey:@"title"];
    
    [args putValue:@"logoutAction" forKey:@"okaction"];
    
    [args putValue:@"#{res.ecm_ok}" forKey:@"okbuttontitle"];
    
    [args putValue:@"ok-cancel" forKey:@"style"];
    
    [args putValue:@"#{res.ecm_cancel}" forKey:@"cancelbuttontitle"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)toLogin:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"toLogin" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_login" forKey:@"viewid"];
    
    [args putValue:@"false" forKey:@"iskeep"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)initSet:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"initSet" method:@"initSet" sender:sender]];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)logoutSuccess:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"logoutSuccess" method:@"UMService.writeConfigure" sender:sender]];
    
    [args putValue:@"toLogin" forKey:@"callback"];
    [args putValue:@"" forKey:@"password"];
    [args putValue:@"false" forKey:@"autologin"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)toSet:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"toSet" method:@"toSet" sender:sender]];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)logoutFailed:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"logoutFailed" method:@"logoutFailed" sender:sender]];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)toHome:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"toHome" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_main" forKey:@"viewid"];
    
    [args putValue:@"false" forKey:@"iskeep"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)resetConnet:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"resetConnet" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_connect" forKey:@"viewid"];
    
    [args putValue:@"true" forKey:@"isreset"];
    
    [args putValue:@"false" forKey:@"iskeep"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)logoutAction:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"logoutAction" method:@"UMService.callAction" sender:sender]];
    
    [args putValue:@"nc.bs.oa.oama.ecm.EcmController" forKey:@"viewid"];
    
    [args putValue:@"logoutFailed" forKey:@"error"];
    
    [args putValue:@"logout" forKey:@"action"];
    
    [args putValue:@"logoutSuccess" forKey:@"callback"];
    
    [args putValue:@"true" forKey:@"autodatabinding"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)toDiscovery:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"toDiscovery" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_discovery" forKey:@"viewid"];
    
    [args putValue:@"true" forKey:@"isdatacollect"];
    
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
    return UIInterfaceOrientationMaskPortrait;
}
- (CGRect)frameForOrientation:(UIInterfaceOrientation)orientation
{
    CGRect frame;
    if (orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight) {
        CGRect bounds = [UIScreen mainScreen].applicationFrame;
        CGRect bounds2 = [UIScreen mainScreen].bounds;
        frame = CGRectMake(bounds.origin.x, bounds.origin.y, bounds2.size.height, bounds.size.width-(bounds2.size.height - bounds.size.height));
    }else if (orientation == UIInterfaceOrientationPortrait ||orientation == UIInterfaceOrientationPortraitUpsideDown )
    {
        CGRect bounds = [UIScreen mainScreen].applicationFrame;
        CGRect bounds2 = [UIScreen mainScreen].bounds;
        frame = CGRectMake(bounds.origin.x, bounds.origin.y, bounds2.size.width, bounds.size.height-(bounds2.size.width - bounds.size.width));
    }
    return frame;
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    CGRect frame;
    frame = [self frameForOrientation:toInterfaceOrientation];
    _viewObject.frame = CGRectMake(0, 0, frame.size.width, frame.size.height);
    [self.viewObject clearFinishedAdjustSize];
    [self.viewObject adjustSize];
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
