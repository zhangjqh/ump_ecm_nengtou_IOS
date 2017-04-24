//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "ecm_aboutController.h"
#import "FeedbackSdk.h"






















@interface ecm_aboutController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation ecm_aboutController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize Ecm_About = _Ecm_About;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel0 = _panel0;

@synthesize panel7 = _panel7;




@synthesize panel1 = _panel1;

@synthesize panel2 = _panel2;

@synthesize panel3 = _panel3;

@synthesize panel5 = _panel5;

@synthesize panel6 = _panel6;




@synthesize panel4 = _panel4;








static NSString *controllerC = @"Ecm_AboutController";

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
        _Ecm_About = _viewObject;
        
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
    [(UMLayoutView*)_Ecm_About addSubUMView:_viewPage0];
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
                                                      [UIColor colorWithRed:0.9607843 green:0.9607843 blue:0.9607843 alpha:1],@"backgroundColor",
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
    
    
    
    
    _panel7 = [[UMLayoutView alloc] init];
    _panel7.controlId = @"panel7";
    _panel7.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel7];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                                                   @"80",@"height",
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
    
    
    
    
    // --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"p_txt_r":@"0.9490196",@"halign":@"center",@"pressed-image":@"btn_back_touch.png",@"width":@"64",@"font_size":@"17",@"txt_r":@"1.0",@"font-pressed-color":@"#f2adb2",@"txt_g":@"0.0",@"id":@"button0",@"p_txt_b":@"0.69803923",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#ff0000",@"font-size":@"17",@"value":@"#{res.ecm_back}",@"onclick":@"closeabout",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"p_txt_g":@"0.6784314",@"background-image":@"btn_back.png"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button0];
    
    // --label0
    _label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{@"halign":@"center",@"weight":@"1",@"width":@"0",@"font_size":@"17",@"txt_r":@"0.0",@"id":@"label0",@"txt_g":@"0.0",@"height":@"fill",@"color":@"#000000",@"font_family":@"ArialMT",@"font-size":@"17",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"value":@"#{res.ecm_about}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];
    
    // --button4
    _button4 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"center",@"p_txt_r":@"0.9490196",@"width":@"64",@"font_size":@"17",@"txt_r":@"0.8980392",@"font-pressed-color":@"#f2adb2",@"txt_g":@"0.0",@"id":@"button4",@"height":@"44",@"p_txt_b":@"0.69803923",@"font_family":@"ArialMT",@"color":@"#e50011",@"font-size":@"17",@"font-family":@"default",@"txt_b":@"0.06666667",@"valign":@"center",@"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button4];
    
    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel1];
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
                                                   @"150",@"height",
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
    
    
    
    
    _panel2 = [[UMLayoutView alloc] init];
    _panel2.controlId = @"panel2";
    _panel2.layoutType = Layout_vbox;
    //[(UMLayoutView*)_panel0 addSubUMView:_panel2];
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
                                                   @"ALIGN_LEFT",@"valignUMP",
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
    
    
    
    
    _panel3 = [[UMLayoutView alloc] init];
    _panel3.controlId = @"panel3";
    _panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel3];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                                                   @"1",@"height",
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
    
    
    
    
    // --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                                                                                @"id":@"image0",
                                                                                @"height":@"57",
                                                                                @"width":@"57",
                                                                                @"scaletype":@"fitcenter",
                                                                                @"src":@"app.png",
                                                                                @"margin-top":@"30",@"value":@""}];
    [(UMLayoutView*)_panel1 addSubUMXView:_image0];
    
    // --textbox0
    _textbox0 = [UMControl creatControl:@"UMXTextField" container:self  params:@{
                                                                                 @"padding-left":@"4",
                                                                                 @"halign":@"CENTER",
                                                                                 @"width":@"200",
                                                                                 @"font_size":@"15",
                                                                                 @"txt_r":@"0.5019608",
                                                                                 @"txt_g":@"0.5019608",
                                                                                 @"id":@"textbox0",
                                                                                 @"maxlength":@"256",
                                                                                 @"height":@"22",
                                                                                 @"font_family":@"ArialMT",
                                                                                 @"color":@"#808080",
                                                                                 @"font-size":@"15",
                                                                                 @"value":@"#{res.appname} #{app.versionName}",
                                                                                 @"font-family":@"default",
                                                                                 @"margin-top":@"10",
                                                                                 @"txt_b":@"0.5019608",
                                                                                 @"readonly":@"true"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_textbox0];
    
    // --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                                                                             @"halign":@"left",
                                                                             @"p_txt_r":@"0.8980392",
                                                                             @"width":@"fill",
                                                                             @"font_size":@"15",
                                                                             @"txt_r":@"0.0",
                                                                             @"font-pressed-color":@"#e50011",
                                                                             @"txt_g":@"0.0",
                                                                             @"id":@"button1",
                                                                             @"height":@"44",
                                                                             @"p_txt_b":@"0.06666667",
                                                                             @"font_family":@"ArialMT",
                                                                             @"color":@"#000000",
                                                                             @"font-size":@"15",
                                                                             @"value":@"#{res.ecm_updateversion}",
                                                                             @"font-family":@"default",
                                                                             @"txt_b":@"0.0",
                                                                             @"valign":@"center",
                                                                             @"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel2 addSubUMXView:_button1];
    
    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel3 addSubUMView:_panel4];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                                                   @"NO",@"isWidthFill",
                                                   @"NO",@"isHeightWrap",
                                                   @"NO",@"isWidthWrap",
                                                   @"0",@"left",
                                                   @"0",@"top",
                                                   @"15",@"width",
                                                   @"60",@"height",
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
    
    
    
    
    // --button2
    _button2 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"left",@"p_txt_r":@"0.8980392",@"weight":@"1",@"width":@"0",@"font_size":@"15",@"txt_r":@"0.0",@"font-pressed-color":@"#e50011",@"txt_g":@"0.0",@"id":@"button2",@"p_txt_b":@"0.06666667",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#000000",@"font-size":@"15",@"value":@"#{res.ecm_newcharacter}",@"onclick":@"newcharacter",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_button2];
    
    // --image1
    _image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{@"id":@"image1",@"height":@"13",@"width":@"8",@"scaletype":@"fitcenter",@"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_image1];
    
    // --button3
    _button3 = [UMControl creatControl:@"UMXButton" container:self  params:@{@"halign":@"left",@"p_txt_r":@"0.8980392",@"weight":@"1",@"width":@"0",@"font_size":@"15",@"txt_r":@"0.0",@"font-pressed-color":@"#e50011",@"txt_g":@"0.0",@"id":@"button3",@"p_txt_b":@"0.06666667",@"height":@"44",@"font_family":@"ArialMT",@"color":@"#000000",@"font-size":@"15",@"value":@"#{res.ecm_feedback}",@"onclick":@"feedback",@"font-family":@"default",@"txt_b":@"0.0",@"valign":@"center",@"p_txt_g":@"0.0"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_button3];
    
    // --image2
    _image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{@"id":@"image2",@"height":@"13",@"width":@"8",@"scaletype":@"fitcenter",@"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel6 addSubUMXView:_image2];
    
    // --textbox1
    _textbox1 = [UMControl creatControl:@"UMXTextField" container:self  params:@{@"padding-left":@"4",@"halign":@"CENTER",@"width":@"200",@"font_size":@"13",@"txt_r":@"0.5019608",@"id":@"textbox1",@"txt_g":@"0.5019608",@"maxlength":@"256",@"height":@"22",@"font_family":@"ArialMT",@"color":@"#808080",@"font-size":@"13",@"value":@"宝信软件 版权所有",@"font-family":@"default",@"txt_b":@"0.5019608",@"readonly":@"true"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_textbox1];
    
    // --textbox2
    _textbox2 = [UMControl creatControl:@"UMXTextField" container:self  params:@{@"padding-left":@"4",@"halign":@"CENTER",@"width":@"300",@"font_size":@"13",@"txt_r":@"0.5019608",@"id":@"textbox2",@"txt_g":@"0.5019608",@"maxlength":@"256",@"height":@"22",@"font_family":@"ArialMT",@"color":@"#808080",@"font-size":@"13",@"value":@"Copyright ©2015 Baosight software Co.,Ltd",@"font-family":@"default",@"txt_b":@"0.5019608",@"readonly":@"true"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_textbox2];
    
    
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //加载JS
    [self performSelectorInBackground:@selector(umOnload) withObject:nil];
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

- (void)feedback:(id<UMViewControl>)sender args:(XEventArgs *)args{
    FeedbackSdk *feedBack = [FeedbackSdk initFeedbackSdkWithAppKey:@"A0A000.nc.yonyou.com"];
    UINavigationController *iNav = [[UINavigationController alloc] initWithRootViewController:feedBack];
    [self presentModalViewController:iNav animated:YES];
}

- (void)newcharacter:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"newcharacter" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"ecm_welcome" forKey:@"viewid"];
    
    [args putValue:@"true" forKey:@"iskeep"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}
- (void)closeabout:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"closeabout" method:@"UMView.close" sender:sender]];
    
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
