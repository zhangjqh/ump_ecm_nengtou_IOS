//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "msg_messagecontentdetailController.h"




























@interface msg_messagecontentdetailController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation msg_messagecontentdetailController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize msg_MessageContentDetail = _msg_MessageContentDetail;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize panel1 = _panel1;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel2 = _panel2;

@synthesize panel3 = _panel3;

@synthesize panel5 = _panel5;

@synthesize panelAttachment = _panelAttachment;

@synthesize panel6 = _panel6;

@synthesize panel7 = _panel7;











@synthesize panel0 = _panel0;

@synthesize panel4 = _panel4;

@synthesize panel8 = _panel8;






static NSString *controllerC = @"msg_MessageContentDetailController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"msg_MessageDetail";


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
        _msg_MessageContentDetail = _viewObject;

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
    [(UMLayoutView*)_msg_MessageContentDetail addSubUMView:_viewPage0];
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



    [(UMLayoutView*)_panel1 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

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
                          @"5",@"marginTop",
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
                          @"list_row_mid1.png",@"backgroundImagePath",
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
    
    //明细界面添加标题字段msgtitle panel1包含panel_msgtitle包含label_msgtitle
    _panel_msgtitle = [[UMLayoutView alloc] init];
    _panel_msgtitle.controlId = @"panel_msgtitle";
    _panel_msgtitle.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel_msgtitle];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel_msgtitle info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                       @"list_row_mid1.png",@"backgroundImagePath",
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
                       @"0",@"border-radius", nil] container:self];

    

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
                          @"list_row_mid1.png",@"backgroundImagePath",
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
                          @"list_row_mid1.png",@"backgroundImagePath",
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




    _panelAttachment = [[UMLayoutView alloc] init];
    _panelAttachment.controlId = @"panelAttachment";
    _panelAttachment.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panelAttachment];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panelAttachment info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"list_row_mid1.png",@"backgroundImagePath",
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
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"15",@"marginLeft",
                          @"0",@"marginTop",
                          @"15",@"marginRight",
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




    _panel7 = [[UMLayoutView alloc] init];
    _panel7.controlId = @"panel7";
    _panel7.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"5",@"paddingRightUMP",
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




// --button0
    _button0 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"15",
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button0",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"#{res.msg_Return}",
                          @"onclick":@"GoBack",
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
                          @"valign":@"center",@"value":@"#{res.msg_MessageDetail}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"center",
                          @"p_txt_r":@"0.9490196",
                          @"visible":@"false",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button1",
                          @"height":@"44",
                          @"p_txt_b":@"0.69803923",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"0.6784314",@"value":@""}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button1];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"70",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_SendPerson}"}];
    [(UMLayoutView*)_panel2 addSubUMXView:_label1];

// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendBy",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.43529412",
                          @"txt_g":@"0.43529412",
                          @"id":@"label2",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"onclick":@"label2_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel2 addSubUMXView:_label2];
    
// --label_msgtitle_title
    _label_msgtitle_title = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                 @"halign":@"left",
                 @"width":@"70",
                 @"font_size":@"16",
                 @"txt_r":@"0.0",
                 @"id":@"label_msgtitle_title",
                 @"txt_g":@"0.0",
                 @"margin-right":@"15",
                 @"height":@"wrap",
                 @"font_family":@"ArialMT",
                 @"color":@"#000000",
                 @"heightwrap":@"23.0",
                 @"font-size":@"16",
                 @"font-family":@"default",
                 @"txt_b":@"0.0",
                 @"valign":@"center",@"value":@"#{res.msg_msgtitle}"}];
    [(UMLayoutView*)_panel_msgtitle addSubUMXView:_label_msgtitle_title];
    
// --label_msgtitle
    _label_msgtitle = [UMControl creatControl:@"UMXLabel" container:self params:@{
                          @"bindfield":@"msgtitle",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.43529412",
                          @"txt_g":@"0.43529412",
                          @"id":@"label_msgtitle",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"onclick":@"label_msgtitle_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel_msgtitle addSubUMXView:_label_msgtitle];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"70",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"label3",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_MessageType}"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label3];

// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"msgType",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.43529412",
                          @"id":@"label4",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label4];

// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"70",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"label5",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_SendOutTime}"}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label5];

// --label6
    _label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendDate",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.43529412",
                          @"id":@"label6",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_label6];

// --label9
    _label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"70",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"label9",
                          @"txt_g":@"0.0",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"23.0",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_Attachment}"}];
    [(UMLayoutView*)_panelAttachment addSubUMXView:_label9];

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_panelAttachment addSubUMView:_panel0];
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




    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
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




    _panel8 = [[UMLayoutView alloc] init];
    _panel8.controlId = @"panel8";
    _panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel0 addSubUMView:_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"10",@"width",
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




// --label8
    _label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"attachment",
                          @"halign":@"right",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label8",
                          @"txt_g":@"0.0",
                          @"margin-right":@"5",
                          @"height":@"23",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"OpenAttachmentList4View",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_panel4 addSubUMXView:_label8];

// --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image0",
                          @"height":@"20",
                          @"width":@"10",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel8 addSubUMXView:_image0];

// --label7
    _label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"widthwrap":@"202.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.43529412",
                          @"id":@"label7",
                          @"txt_g":@"0.43529412",
                          @"margin-right":@"15",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@"#{res.msg_MessageContent}"}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label7];

// --label10
    _label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"content",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.43529412",
                          @"type":@"multiline",
                          @"id":@"label10",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"190.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"top",@"value":@""}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label10];
    
    
    
    //最下方添加按钮组
    _panel_buttongroup = [[UMLayoutView alloc] init];
    _panel_buttongroup.controlId = @"panel_buttongroup";
    _panel_buttongroup.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel1 addSubUMView:_panel_buttongroup];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel_buttongroup info:[NSDictionary dictionaryWithObjectsAndKeys:
                   @"0",@"weightUMPView",
                   @"15",@"paddingLeftUMP",
                   @"0",@"paddingTopUMP",
                   @"15",@"paddingRightUMP",
                   @"0",@"paddingBottomUMP",
                   @"0",@"marginLeft",
                   @"5",@"marginTop",
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
 
    //--添加回复按钮和转发按钮
    // --_button_reply
    _button_reply = [UMControl creatControl:@"UMXButton" container:self  params:@{
             @"padding-left":@"35",
             @"p_txt_r":@"0.9490196",
             @"halign":@"left",
             @"pressed-image":@"",
             @"width":@"0",
             @"weight":@"1",
             @"font_size":@"17",
             @"txt_r":@"0.8980392",
             @"font-pressed-color":@"#f2adb2",
             @"txt_g":@"0.0",
             @"id":@"button_reply",
             @"p_txt_b":@"0.69803923",
             @"height":@"44",
             @"color":@"#e50011",
             @"font_family":@"ArialMT",
             @"font-size":@"17",
             @"value":@"回复",
             @"onclick":@"Reply",
             @"font-family":@"default",
             @"txt_b":@"0.06666667",
             @"valign":@"center",
             @"background-image":@"",
             @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_panel_buttongroup addSubUMXView:_button_reply];

    // --_button_reply
    _button_transter = [UMControl creatControl:@"UMXButton" container:self  params:@{
                  @"padding-right":@"35",
                  @"p_txt_r":@"0.9490196",
                  @"halign":@"right",
                  @"pressed-image":@"",
                  @"width":@"0",
                  @"weight":@"1",
                  @"font_size":@"17",
                  @"txt_r":@"0.8980392",
                  @"font-pressed-color":@"#f2adb2",
                  @"txt_g":@"0.0",
                  @"id":@"button_transter",
                  @"p_txt_b":@"0.69803923",
                  @"height":@"44",
                  @"color":@"#e50011",
                  @"font_family":@"ArialMT",
                  @"font-size":@"17",
                  @"value":@"转发",
                  @"onclick":@"Transfer",
                  @"font-family":@"default",
                  @"txt_b":@"0.06666667",
                  @"valign":@"center",
                  @"background-image":@"",
                  @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_panel_buttongroup addSubUMXView:_button_transter];


   

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

     [self OnLoadMsgDetail:nil  args:nil];



























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
    
    













[self umcontrol:_label2 controlid:@"label2" bindfield:@"sendBy"];


[self umcontrol:_label4 controlid:@"label4" bindfield:@"msgType"];


[self umcontrol:_label6 controlid:@"label6" bindfield:@"sendDate"];





[self umcontrol:_label8 controlid:@"label8" bindfield:@"attachment"];



[self umcontrol:_label10 controlid:@"label10" bindfield:@"content"];
    
    [self umcontrol:_label_msgtitle controlid:@"label_msgtitle" bindfield:@"msgtitle"];

    [self bindAll];
   [_viewObject clearFinishedAdjustSize];
   [_viewObject adjustSize];
}

#pragma mark  actions

- (void)label2_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"label2_onclick" method:@"this.label2_onclick()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}

- (void)label_msgtitle_onclick:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"label_msgtitle_onclick" method:@"this.label_msgtitle_onclick()" sender:sender]];
    
    [args putValue:@"true" forKey:@"issystem"];
    
    [args putValue:@"javascript" forKey:@"language"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}

- (void)GoBack:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"GoBack" method:@"UMView.close" sender:sender]];

 [args putValue:@"15" forKey:@"resultcode"];
[UMCommonSevice callSeviceWithMethod:args];

}

//回复触发的事件
- (void)Reply:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"NewMessage" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"msg_sendmessage" forKey:@"viewid"];
    
    [args putValue:@"OnLoadUnreadMsgData" forKey:@"callback"];
    
    [args putValue:@"true" forKey:@"iskeep"];
    
    [args putValue:@"Reply" forKey:@"actionType"];
    
    [args putValue:@"#{msgtitle}" forKey:@"msgtitle"];
    [args putValue:@"#{sendBy}" forKey:@"sendBy"];
    [args putValue:@"#{receiveBy}" forKey:@"receiveBy"];
    [args putValue:@"#{senderid}" forKey:@"senderid"];
    [args putValue:@"#{receiverid}" forKey:@"receiverid"];
    [args putValue:@"#{content}" forKey:@"content"];
    [args putValue:@"#{sendDate}" forKey:@"sendDate"];
    [UMCommonSevice callSeviceWithMethod:args];
}

//转发触发的事件
- (void)Transfer:(id<UMViewControl>)sender args:(XEventArgs *)args{
    if(args==nil) {
        args = [[XEventArgs alloc] init:self];
    }
    [args setInvoke:[self getInvokeInfo:@"NewMessage" method:@"UMView.open" sender:sender]];
    
    [args putValue:@"msg_sendmessage" forKey:@"viewid"];
    
    [args putValue:@"OnLoadUnreadMsgData" forKey:@"callback"];
    
    [args putValue:@"true" forKey:@"iskeep"];
    
    [args putValue:@"Transfer" forKey:@"actionType"];
    
    [args putValue:@"#{msgtitle}" forKey:@"msgtitle"];
    [args putValue:@"#{sendBy}" forKey:@"sendBy"];
    [args putValue:@"#{receiveBy}" forKey:@"receiveBy"];
    [args putValue:@"#{senderid}" forKey:@"senderid"];
    [args putValue:@"#{receiverid}" forKey:@"receiverid"];
    [args putValue:@"#{content}" forKey:@"content"];
    [args putValue:@"#{sendDate}" forKey:@"sendDate"];
    [UMCommonSevice callSeviceWithMethod:args];
    
}

- (void)OnLoadMsgDetail:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OnLoadMsgDetail" method:@"OnLoadMsgDetail" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OpenAttachmentList4View:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OpenAttachmentList4View" method:@"UMView.open" sender:sender]];

 [args putValue:@"#{msgID}" forKey:@"msgid"];

 [args putValue:@"msg_attachmentlist4view" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

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
