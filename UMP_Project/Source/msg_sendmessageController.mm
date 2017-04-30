//
//  viewController.m
//
//
//  Created by zhangyuv.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "msg_sendmessageController.h"



































@interface msg_sendmessageController ()
{
    BOOL isResum;//适配安卓resum事件
    BOOL isDialog;//dialog标记
}
@end

@implementation msg_sendmessageController
@synthesize navBarHidden = _navBarHidden;
@synthesize viewObject = _viewObject;
@synthesize msg_SendMessage = _msg_SendMessage;
@synthesize parentController = _parentController;
@synthesize currentContainer=_currentContainer;
@synthesize contextDictionary = _contextDictionary;
@synthesize context=_context;
@synthesize ctx = _ctx;

@synthesize viewPage0 = _viewPage0;

@synthesize navigatorbar0 = _navigatorbar0;

@synthesize panel1 = _panel1;

@synthesize panel3 = _panel3;

@synthesize panel4 = _panel4;





@synthesize panel6 = _panel6;




@synthesize panel7 = _panel7;



@synthesize panel0 = _panel0;

@synthesize panel2 = _panel2;

@synthesize panel5 = _panel5;


@synthesize panelEmail = _panelEmail;

@synthesize panelIM = _panelIM;

@synthesize panelPush = _panelPush;

@synthesize panelCSSMS = _panelCSSMS;











static NSString *controllerC = @"msg_SendMessageController";

static NSString *namespaceC = @"nc.bs.oa.oama.ecm";

static NSString *ModelName = @"msg_CreateMessage";


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
        _msg_SendMessage = _viewObject;

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
    [(UMLayoutView*)_msg_SendMessage addSubUMView:_viewPage0];
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



    [(UMLayoutView*)_viewPage0 addSubUMView:_navigatorbar0];
    if (![[_navigatorbar0 backgroundColor] isEqual:[UIColor clearColor]]) {
[UIApplication sharedApplication].keyWindow.backgroundColor = [_navigatorbar0 backgroundColor];
}
    _navBarHidden = NO;

    _panel1 = [[UMLayoutView alloc] init];
    _panel1.controlId = @"panel1";
    _panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_panel1 setContainer:self];
    [_panel1 addEvent:@"onclick" actionName:@"OpenRecipientList"];

    //新建消息时添加邮件标题 panel_msgtitle
    _panel_msgtitle = [[UMLayoutView alloc] init];
    _panel_msgtitle.controlId = @"panel_msgtitle";
    _panel_msgtitle.layoutType = Layout_hbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel_msgtitle];
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
                   @"0",@"border-radius",
                   nil] container:self];

    
    
    
    [_panel_msgtitle setContainer:self];
//    [_panel_msgtitle addEvent:@"onclick" actionName:@"OpenRecipientList"];
    

    
    
    
    
    _panel3 = [[UMLayoutView alloc] init];
    _panel3.controlId = @"panel3";
    _panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel3];
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




    _panel4 = [[UMLayoutView alloc] init];
    _panel4.controlId = @"panel4";
    _panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_viewPage0 addSubUMView:_panel4];
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
                          @"15",@"marginBottom",
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




// --btnCancle
    _btnCancle = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"padding-left":@"15",
                          @"p_txt_r":@"0.9490196",
                          @"halign":@"left",
                          @"pressed-image":@"btn_back_touch",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"btnCancle",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"color":@"#e50011",
                          @"font_family":@"ArialMT",
                          @"font-size":@"17",
                          @"value":@"#{res.msg_Return}",
                          @"onclick":@"OnClickCancel",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"background-image":@"btn_back",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_btnCancle];

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
                          @"valign":@"center",@"value":@"#{res.msg_CreateMessage}"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_label0];

// --button1
    _button1 = [UMControl creatControl:@"UMXButton" container:self  params:@{
                          @"halign":@"right",
                          @"p_txt_r":@"0.9490196",
                          @"width":@"64",
                          @"font_size":@"17",
                          @"txt_r":@"0.8980392",
                          @"font-pressed-color":@"#f2adb2",
                          @"txt_g":@"0.0",
                          @"id":@"button1",
                          @"margin-right":@"8",
                          @"p_txt_b":@"0.69803923",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#e50011",
                          @"font-size":@"17",
                          @"value":@"#{res.msg_Send}",
                          @"onclick":@"SendMessage",
                          @"font-family":@"default",
                          @"txt_b":@"0.06666667",
                          @"valign":@"center",
                          @"p_txt_g":@"0.6784314"}];
    [(UMLayoutView*)_navigatorbar0 addSubUMXView:_button1];

// --label1
    _label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label1",
                          @"txt_g":@"0.0",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_Recipient}"}];
    [(UMLayoutView*)_panel1 addSubUMXView:_label1];
    
// --label_msgtitle
    _label_msgtitle_title = [UMControl creatControl:@"UMXLabel" container:self params:@{
                  @"halign":@"left",
                  @"width":@"50",
                  @"font_size":@"14",
                  @"txt_r":@"0.0",
                  @"id":@"_label_msgtitle",
                  @"txt_g":@"0.0",
                  @"margin-right":@"10",
                  @"height":@"wrap",
                  @"font_family":@"ArialMT",
                  @"color":@"#000000",
                  @"heightwrap":@"20.0",
                  @"font-size":@"14",
                  @"font-family":@"default",
                  @"txt_b":@"0.0",
                  @"valign":@"center",@"value":@"#{res.msg_msgtitle}"}];
    [(UMLayoutView*)_panel_msgtitle addSubUMXView:_label_msgtitle_title];
    
    
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

// panel_msgtitle1 里层panel
    _panel_msgtitle1 = [[UMLayoutView alloc] init];
    _panel_msgtitle1.controlId = @"panel_msgtitle1";
    _panel_msgtitle1.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel_msgtitle addSubUMView:_panel_msgtitle1];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_panel_msgtitle1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
    




// --label4
    _label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"recipientNames",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label4",
                          @"margin-right":@"5",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"OpenRecipientList",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"false",@"value":@""}];
    [(UMLayoutView*)_panel6 addSubUMXView:_label4];
    
// --标题录入框
    _txt_msgtitle = [UMControl creatControl:@"UMXTextArea" container:self  params:@{
                      @"bindfield":@"msgtitle",
                      @"padding-right":@"15",
                      @"padding-left":@"15",
                      @"padding-top":@"1",
                      @"halign":@"LEFT",
                      @"placeholder":@"#{res.msg_Inputmsgtitle}",
                      @"width":@"fill",
                      @"font_size":@"14",
                      @"txt_r":@"0.0",
                      @"bg_r":@"1.0",
                      @"padding-bottom":@"1",
                      @"txt_g":@"0.0",
                      @"id":@"txt_msgtitle",
                      @"height":@"42",
                      @"color":@"#000000",
                      @"font_family":@"ArialMT",
                      @"background":@"#ffffff",
                      @"font-size":@"14",
                      @"left":@"0",
                      @"font-family":@"default",
                      @"bg_b":@"1.0",
                      @"txt_b":@"0.0",
                      @"bg_g":@"1.0",
                      @"top":@"0",@"value":@""}];
    [(UMLayoutView*)_panel_msgtitle1 addSubUMXView:_txt_msgtitle];

// --image1
    _image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image1",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel6 addSubUMXView:_image1];

// --label3
    _label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label3",
                          @"txt_g":@"0.0",
                          @"margin-right":@"10",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_Attachment}"}];
    [(UMLayoutView*)_panel3 addSubUMXView:_label3];

    _panel7 = [[UMLayoutView alloc] init];
    _panel7.controlId = @"panel7";
    _panel7.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel3 addSubUMView:_panel7];
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




// --label5
    _label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"label5",
                          @"margin-right":@"5",
                          @"height":@"44",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"OpenAttachmentEditList",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"false",@"value":@"0"}];
    [(UMLayoutView*)_panel7 addSubUMXView:_label5];

// --image0
    _image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_panel7 addSubUMXView:_image0];

    _panel0 = [[UMLayoutView alloc] init];
    _panel0.controlId = @"panel0";
    _panel0.layoutType = Layout_vbox;
    [(UMLayoutView*)_panel4 addSubUMView:_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"25",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:0.8901961 green:0.8901961 blue:0.8901961 alpha:1],@"backgroundColor",
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
    [(UMLayoutView*)_panel4 addSubUMView:_panel2];
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
    _panel5.layoutType = Layout_fixed;
    [(UMLayoutView*)_panel4 addSubUMView:_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --label2
    _label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"widthwrap":@"151.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"label2",
                          @"txt_g":@"0.0",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"onclick":@"label2_onclick",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_SendType}"}];
    [(UMLayoutView*)_panel0 addSubUMXView:_label2];

    _panelEmail = [[UMLayoutView alloc] init];
    _panelEmail.controlId = @"panelEmail";
    _panelEmail.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panelEmail];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panelEmail info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"76",@"width",
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




    _panelIM = [[UMLayoutView alloc] init];
    _panelIM.controlId = @"panelIM";
    _panelIM.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panelIM];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panelIM info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"76",@"width",
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




    _panelPush = [[UMLayoutView alloc] init];
    _panelPush.controlId = @"panelPush";
    _panelPush.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panelPush];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panelPush info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"70",@"width",
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




    _panelCSSMS = [[UMLayoutView alloc] init];
    _panelCSSMS.controlId = @"panelCSSMS";
    _panelCSSMS.layoutType = Layout_hbox;
    [(UMLayoutView*)_panel2 addSubUMView:_panelCSSMS];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_panelCSSMS info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"76",@"width",
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




// --checkbox0
    _checkbox0 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox0",
                          @"bindfield":@"chk4Email",
                          @"height":@"22",
                          @"width":@"22",
                          @"check-on-image":@"checkbox_select.png",
                          @"check-off-image":@"checkbox_noselect.png",@"value":@""}];
    [(UMLayoutView*)_panelEmail addSubUMXView:_checkbox0];

// --labelEmail
    _labelEmail = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"",
                          @"halign":@"center",
                          @"widthwrap":@"119.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"labelEmail",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"margin-left":@"6",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_Email}"}];
    [(UMLayoutView*)_panelEmail addSubUMXView:_labelEmail];

// --checkbox1
    _checkbox1 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox1",
                          @"bindfield":@"chk4IM",
                          @"height":@"22",
                          @"width":@"22",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panelIM addSubUMXView:_checkbox1];

// --labelIM
    _labelIM = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"",
                          @"halign":@"center",
                          @"widthwrap":@"17.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"labelIM",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"margin-left":@"6",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"IM"}];
    [(UMLayoutView*)_panelIM addSubUMXView:_labelIM];

// --checkbox2
    _checkbox2 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox2",
                          @"bindfield":@"chk4Push",
                          @"height":@"22",
                          @"width":@"22",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panelPush addSubUMXView:_checkbox2];

// --labelPush
    _labelPush = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"",
                          @"halign":@"center",
                          @"widthwrap":@"117.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"labelPush",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"margin-left":@"6",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_Push}"}];
    [(UMLayoutView*)_panelPush addSubUMXView:_labelPush];

// --checkbox3
    _checkbox3 = [UMControl creatControl:@"UMXXCheckBox" container:self  params:@{
                          @"id":@"checkbox3",
                          @"bindfield":@"chk4CSSMS",
                          @"height":@"22",
                          @"width":@"22",
                          @"check-on-image":@"checkbox_select",
                          @"check-off-image":@"checkbox_noselect",@"value":@""}];
    [(UMLayoutView*)_panelCSSMS addSubUMXView:_checkbox3];

// --labelCSSMS
    _labelCSSMS = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"",
                          @"halign":@"center",
                          @"widthwrap":@"132.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"txt_g":@"0.0",
                          @"id":@"labelCSSMS",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"heightwrap":@"20.0",
                          @"font-size":@"14",
                          @"margin-left":@"6",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.msg_CSSMS}"}];
    [(UMLayoutView*)_panelCSSMS addSubUMXView:_labelCSSMS];

// --txtContent
    _txtContent = [UMControl creatControl:@"UMXTextArea" container:self  params:@{
                          @"bindfield":@"content",
                          @"padding-right":@"15",
                          @"padding-left":@"15",
                          @"padding-top":@"14",
                          @"halign":@"LEFT",
                          @"placeholder":@"#{res.msg_InputMsgContent}",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"bg_r":@"1.0",
                          @"padding-bottom":@"14",
                          @"txt_g":@"0.0",
                          @"id":@"txtContent",
                          @"height":@"150",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"background":@"#ffffff",
                          @"font-size":@"14",
                          @"left":@"0",
                          @"font-family":@"default",
                          @"bg_b":@"1.0",
                          @"txt_b":@"0.0",
                          @"bg_g":@"1.0",
                          @"top":@"0",@"value":@""}];
    [(UMLayoutView*)_panel5 addSubUMXView:_txtContent];


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

     [self onLoadSendType:nil  args:nil];




















[self panelemail_onload:nil  args:nil];














}
- (void)viewWillAppear:(BOOL)animated
{
    [self resignFirstResponder];
    [super viewWillAppear:animated];
    [SysContext getInstance].CurrentViewController = self;

    if (isResum) {//第二次进入调用
        [self selectedCallback:nil  args:nil];  
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
    
    










[self umcontrol:_label4 controlid:@"label4" bindfield:@"recipientNames"];














[self umcontrol:_checkbox0 controlid:@"checkbox0" bindfield:@"chk4Email"];


[self umcontrol:_checkbox1 controlid:@"checkbox1" bindfield:@"chk4IM"];


[self umcontrol:_checkbox2 controlid:@"checkbox2" bindfield:@"chk4Push"];


[self umcontrol:_checkbox3 controlid:@"checkbox3" bindfield:@"chk4CSSMS"];


[self umcontrol:_txtContent controlid:@"txtContent" bindfield:@"content"];
    [self umcontrol:_txt_msgtitle controlid:@"txt_msgtitle" bindfield:@"msgtitle"];

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
- (void)GoBack:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"GoBack" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_unreadmessagelist" forKey:@"viewid"];

 [args putValue:@"false" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onCloseClick:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onCloseClick" method:@"onCloseClick" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)onLoadSendType:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"onLoadSendType" method:@"onLoadSendType" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)ExcuteResultDialog:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"ExcuteResultDialog" method:@"UMView.openDialog" sender:sender]];

 [args putValue:@"#{res.msg_SendSuccessful}" forKey:@"message"];

 [args putValue:@"#{res.msg_MessageNotice}" forKey:@"title"];

 [args putValue:@"onCloseClick" forKey:@"okaction"];

 [args putValue:@"OK" forKey:@"okbuttontitle"];

 [args putValue:@"ok" forKey:@"style"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OnClickCancel:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OnClickCancel" method:@"OnClickCancel" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)selectedCallback:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"selectedCallback" method:@"selectedCallback" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)SendMessage:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"SendMessage" method:@"SendMessage" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"ResultValue" forKey:@"contextmapping"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)beforeCancel:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"beforeCancel" method:@"UMView.openDialog" sender:sender]];

 [args putValue:@"#{res.msg_IsCancelEdit}" forKey:@"message"];

 [args putValue:@"#{res.msg_MessageNotice}" forKey:@"title"];

 [args putValue:@"onCloseClick" forKey:@"okaction"];

 [args putValue:@"#{res.msg_OK}" forKey:@"okbuttontitle"];

 [args putValue:@"ok-cancel" forKey:@"style"];

 [args putValue:@"#{res.msg_Cancel}" forKey:@"cancelbuttontitle"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OpenRecipientList:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OpenRecipientList" method:@"UMView.open" sender:sender]];

 [args putValue:@"ecm_searchdept" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"iskeep"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)panelemail_onload:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"panelemail_onload" method:@"this.panel5_onload()" sender:sender]];

 [args putValue:@"true" forKey:@"issystem"];

 [args putValue:@"javascript" forKey:@"language"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)errorDialog:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"errorDialog" method:@"errorDialog" sender:sender]];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)AttachmentCallback:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"AttachmentCallback" method:@"AttachmentCallback" sender:sender]];

 [args putValue:@"true" forKey:@"isDataCollect"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)OpenAttachmentEditList:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"OpenAttachmentEditList" method:@"UMView.open" sender:sender]];

 [args putValue:@"msg_attachmentlist" forKey:@"viewid"];

 [args putValue:@"true" forKey:@"isDataCollect"];

 [args putValue:@"AttachmentCallback" forKey:@"callback"];

 [args putValue:@"true" forKey:@"iskeep"];

 [args putValue:@"#{attachmentlist}" forKey:@"attachment"];
[UMCommonSevice callSeviceWithMethod:args];

}
- (void)sendTypeCallback:(id<UMViewControl>)sender args:(XEventArgs *)args{
if(args==nil) {
  args = [[XEventArgs alloc] init:self];
}
[args setInvoke:[self getInvokeInfo:@"sendTypeCallback" method:@"sendTypeCallback" sender:sender]];
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
