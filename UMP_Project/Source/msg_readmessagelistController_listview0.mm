#import "msg_readmessagelistController_listview0.h"
@interface msg_readmessagelistController_listview0_tableViewCell ()
{
	
}
@end
@implementation msg_readmessagelistController_listview0_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 0:
{
    _listview0_childWgt0 = [[UMLayoutView alloc] init];
    _listview0_childWgt0.controlId = @"listview0_childWgt0";
    _listview0_childWgt0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"90",@"height",
                          @"",@"color",
                          [UIColor colorWithRed:1.0 green:1.0 blue:0.8784314 alpha:1],@"backgroundColor",
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




    _listview0_childWgt0_panel1 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel1.controlId = @"listview0_childWgt0_panel1";
    _listview0_childWgt0_panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"8",@"paddingBottomUMP",
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
                          @"90",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_row_mid3.png",@"backgroundImagePath",
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




    _listview0_childWgt0_panel2 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel2.controlId = @"listview0_childWgt0_panel2";
    _listview0_childWgt0_panel2.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMView:_listview0_childWgt0_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"5",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_TOP",@"valignUMP",
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
                          @"0",@"width",
                          @"90",@"height",
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




    _listview0_childWgt0_panel4 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel4.controlId = @"listview0_childWgt0_panel4";
    _listview0_childWgt0_panel4.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMView:_listview0_childWgt0_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"32",@"height",
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




    _listview0_childWgt0_panel20 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel20.controlId = @"listview0_childWgt0_panel20";
    _listview0_childWgt0_panel20.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMView:_listview0_childWgt0_panel20];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel20 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_TOP",@"valignUMP",
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
                          @"32",@"height",
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




// --listview0_childWgt0_topic
    _listview0_childWgt0_topic = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"topic",
                          @"halign":@"left",
                          @"width":@"185",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_topic",
                          @"txt_g":@"0.0",
                          @"height":@"23",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"topic"}];
    [(UMLayoutView*)_listview0_childWgt0_panel20 addSubUMXView:_listview0_childWgt0_topic];

    _listview0_childWgt0_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel21.controlId = @"listview0_childWgt0_panel21";
    _listview0_childWgt0_panel21.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMView:_listview0_childWgt0_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"ALIGN_RIGHT",@"halignUMP",
                          @"YES",@"visible",
                          @"NO",@"disabled",
                          @"NO",@"readOnly",
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"85",@"width",
                          @"32",@"height",
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




// --listview0_childWgt0_businessType
    _listview0_childWgt0_businessType = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"businessType",
                          @"halign":@"right",
                          @"widthwrap":@"85.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt0_businessType",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"19.0",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@"businessType"}];
    [(UMLayoutView*)_listview0_childWgt0_panel21 addSubUMXView:_listview0_childWgt0_businessType];
    
    //添加邮件标题字段，列表两行布局变3行(panel2包含panel6包含msgtitle的label)
    _listview0_childWgt0_panel6 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel6.controlId = @"listview0_childWgt0_panel6";
    _listview0_childWgt0_panel6.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMView:_listview0_childWgt0_panel6];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                           @"20",@"height",
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
                           @"0",@"border-radius", nil] container:self];
    // --listview0_childWgt0_msgtitle
    _listview0_childWgt0_msgtitle = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                             @"bindfield":@"msgtitle",
                             @"halign":@"left",
                             @"widthwrap":@"75.0",
                             @"width":@"wrap",
                             @"font_size":@"13",
                             @"txt_r":@"0.43529412",
                             @"txt_g":@"0.43529412",
                             @"id":@"listview0_childWgt0_msgtitle",
                             @"height":@"wrap",
                             @"font_family":@"ArialMT",
                             @"color":@"#6f6f6f",
                             @"heightwrap":@"19.0",
                             @"font-size":@"13",
                             @"layout":@"Layout_vbox",
                             @"font-family":@"default",
                             @"txt_b":@"0.43529412",
                             @"valign":@"center",@"value":@"msgtitle"}];
    [(UMLayoutView*)_listview0_childWgt0_panel6 addSubUMXView:_listview0_childWgt0_msgtitle];
    

    

    _listview0_childWgt0_panel5 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel5.controlId = @"listview0_childWgt0_panel5";
    _listview0_childWgt0_panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMView:_listview0_childWgt0_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"32",@"height",
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




    _listview0_childWgt0_panel19 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel19.controlId = @"listview0_childWgt0_panel19";
    _listview0_childWgt0_panel19.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMView:_listview0_childWgt0_panel19];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel19 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"23",@"height",
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




// --listview0_childWgt0_msgSendBy
    _listview0_childWgt0_msgSendBy = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendBy",
                          @"halign":@"left",
                          @"widthwrap":@"75.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"txt_g":@"0.43529412",
                          @"id":@"listview0_childWgt0_msgSendBy",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"19.0",
                          @"font-size":@"13",
                          @"layout":@"Layout_vbox",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@"msgSendBy"}];
    [(UMLayoutView*)_listview0_childWgt0_panel19 addSubUMXView:_listview0_childWgt0_msgSendBy];

    _listview0_childWgt0_panel7 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel7.controlId = @"listview0_childWgt0_panel7";
    _listview0_childWgt0_panel7.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMView:_listview0_childWgt0_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
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
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"23",@"height",
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




    _listview0_childWgt0_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel8.controlId = @"listview0_childWgt0_panel8";
    _listview0_childWgt0_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMView:_listview0_childWgt0_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"0",@"marginBottom",
                          @"ALIGN_TOP",@"valignUMP",
                          @"ALIGN_RIGHT",@"halignUMP",
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
                          @"23",@"height",
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




// --listview0_childWgt0_datetime
    _listview0_childWgt0_datetime = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendDate",
                          @"halign":@"center",
                          @"widthwrap":@"56.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_datetime",
                          @"txt_g":@"0.32156864",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"heightwrap":@"19.0",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"datetime"}];
    [(UMLayoutView*)_listview0_childWgt0_panel8 addSubUMXView:_listview0_childWgt0_datetime];

    _listview0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel3.controlId = @"listview0_childWgt0_panel3";
    _listview0_childWgt0_panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMView:_listview0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"15",@"marginRight",
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
                          @"10",@"width",
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




// --listview0_childWgt0_image0
    _listview0_childWgt0_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image0",
                          @"height":@"20",
                          @"width":@"10",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMXView:_listview0_childWgt0_image0];

[self.contentView addSubview:_listview0_childWgt0.content];
self.cellHeight = @"90";
break;
}

          default:
             break;
        }
  
    }
    return self;
}
-(void)bindAll:(UMEntityContext *)_ctx{

	[self umcontrol:_listview0_childWgt0_topic controlid:@"listview0_childWgt0_topic" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt0_businessType controlid:@"listview0_childWgt0_businessType" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt0_msgSendBy controlid:@"listview0_childWgt0_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt0_datetime controlid:@"listview0_childWgt0_datetime" bindfield:@"sendDate"];
    [self umcontrol:_listview0_childWgt0_msgtitle controlid:@"listview0_childWgt0_msgtitle" bindfield:@"msgtitle"];

    [self bindAll];
    
}    
-(void)setWgtFrame:(UMLayoutView *)layout{

    self.umtableView.tableView.currCellUmview = layout;
    self.layoutView = layout;
	if(layout.isWidthFill)
	{
		CGRect rect = layout.frame;
    	rect.size.width = CGRectGetWidth(self.umtableView.frame);
//    rect.size.width = self.frame.size.width;

        //处理外边距问题
        if (layout.marginRight) {
            
            rect.size.width -= layout.marginRight;
        }
        if (layout.marginLeft) {
            
            rect.size.width -= layout.marginLeft;
        }
    	layout.frame = rect;
    
    	layout.isWidthFill = NO;
    }
}
-(void)configCell:(NSInteger)index andCtx:(UMEntityContext *)_ctx
{
     switch (index) {
     case 0:
{
[self setWgtFrame:_listview0_childWgt0];
[self bindAll:_ctx];
[_listview0_childWgt0 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface msg_readmessagelistController_listview0_group ()
{
	
}
@end
@implementation msg_readmessagelistController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_topic controlid:@"listview0_childWgt0_topic" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt0_businessType controlid:@"listview0_childWgt0_businessType" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt0_msgSendBy controlid:@"listview0_childWgt0_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt0_datetime controlid:@"listview0_childWgt0_datetime" bindfield:@"sendDate"];
         [self umcontrol:_listview0_childWgt0_msgtitle controlid:@"listview0_childWgt0_msgtitle" bindfield:@"msgtitle"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface msg_readmessagelistController_listview0_cellHeight ()
{
	
}
@end
@implementation msg_readmessagelistController_listview0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"90";
break;

    default:
                break;
    }
}
-(void)getSectionHeightByIndex
{
	

}

-(void)addSubview:(UIView *)view
{
    
}
-(void)addSubUMXView:(UMView *)view
{
    
}
-(UMEntityContext *)getContext
{
    
    return self.ctx;
}

-(NSMutableDictionary *) getBindGroup
{
    return self.dataBindGroup;
}
@end
