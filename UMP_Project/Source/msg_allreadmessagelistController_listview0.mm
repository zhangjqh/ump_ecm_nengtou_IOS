#import "msg_allreadmessagelistController_listview0.h"
@interface msg_allreadmessagelistController_listview0_tableViewCell ()
{
	
}
@end
@implementation msg_allreadmessagelistController_listview0_tableViewCell
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
    _listview0_childWgt0.layoutType = Layout_vbox;
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
                          @"100",@"height",
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
                          @"100",@"height",
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




    [_listview0_childWgt0_panel1 setContainer:self];
    [_listview0_childWgt0_panel1 addEvent:@"onclick" actionName:@"onItemClick"];

    _listview0_childWgt0_panel2 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel2.controlId = @"listview0_childWgt0_panel2";
    _listview0_childWgt0_panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMView:_listview0_childWgt0_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"15",@"marginLeft",
                          @"0",@"marginTop",
                          @"5",@"marginRight",
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
                          @"35",@"width",
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
                          @"height":@"35",
                          @"width":@"35",
                          @"scaletype":@"fitcenter",
                          @"src":@"infounread.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMXView:_listview0_childWgt0_image0];

    _listview0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel3.controlId = @"listview0_childWgt0_panel3";
    _listview0_childWgt0_panel3.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMView:_listview0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"8",@"marginRight",
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




    _listview0_childWgt0_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel8.controlId = @"listview0_childWgt0_panel8";
    _listview0_childWgt0_panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMView:_listview0_childWgt0_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"34",@"height",
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




    _listview0_childWgt0_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel9.controlId = @"listview0_childWgt0_panel9";
    _listview0_childWgt0_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel8 addSubUMView:_listview0_childWgt0_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt0_panel12 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel12.controlId = @"listview0_childWgt0_panel12";
    _listview0_childWgt0_panel12.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel9 addSubUMView:_listview0_childWgt0_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"topic",
                          @"halign":@"left",
                          @"width":@"173",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label0",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"topic"}];
    [(UMLayoutView*)_listview0_childWgt0_panel12 addSubUMXView:_listview0_childWgt0_label0];

    _listview0_childWgt0_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel11.controlId = @"listview0_childWgt0_panel11";
    _listview0_childWgt0_panel11.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel9 addSubUMView:_listview0_childWgt0_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"90",@"width",
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




// --listview0_childWgt0_label1
    _listview0_childWgt0_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"businessType",
                          @"halign":@"right",
                          @"widthwrap":@"94.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label1",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"businesstype"}];
    [(UMLayoutView*)_listview0_childWgt0_panel11 addSubUMXView:_listview0_childWgt0_label1];

    //添加邮件标题字段，列表两行布局变3行(panel3包含panel13包含msgtitle的label)
    _listview0_childWgt0_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel13.controlId = @"listview0_childWgt0_panel13";
    _listview0_childWgt0_panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMView:_listview0_childWgt0_panel13];
    //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMXView:_listview0_childWgt0_msgtitle];
    
    
    
    _listview0_childWgt0_panel5 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel5.controlId = @"listview0_childWgt0_panel5";
    _listview0_childWgt0_panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMView:_listview0_childWgt0_panel5];
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




    _listview0_childWgt0_panel6 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel6.controlId = @"listview0_childWgt0_panel6";
    _listview0_childWgt0_panel6.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMView:_listview0_childWgt0_panel6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"id":@"listview0_childWgt0_msgSendBy",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"19.0",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@"msgSendBy"}];
    [(UMLayoutView*)_listview0_childWgt0_panel6 addSubUMXView:_listview0_childWgt0_msgSendBy];

    _listview0_childWgt0_panel4 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel4.controlId = @"listview0_childWgt0_panel4";
    _listview0_childWgt0_panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMView:_listview0_childWgt0_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
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
                          @"0",@"border-radius",
                          nil] container:self];




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
                          @"ALIGN_LEFT",@"valignUMP",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt0_datetime
    _listview0_childWgt0_datetime = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendDate",
                          @"halign":@"right",
                          @"widthwrap":@"56.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_datetime",
                          @"txt_g":@"0.32156864",
                          @"height":@"20",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"datetime"}];
    [(UMLayoutView*)_listview0_childWgt0_panel7 addSubUMXView:_listview0_childWgt0_datetime];

    _listview0_childWgt0_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel10.controlId = @"listview0_childWgt0_panel10";
    _listview0_childWgt0_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMView:_listview0_childWgt0_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt0_image1
    _listview0_childWgt0_image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image1",
                          @"height":@"20",
                          @"width":@"10",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel10 addSubUMXView:_listview0_childWgt0_image1];

[self.contentView addSubview:_listview0_childWgt0.content];
self.cellHeight = @"100";
break;
}
case 1:
{
    _listview0_childWgt1 = [[UMLayoutView alloc] init];
    _listview0_childWgt1.controlId = @"listview0_childWgt1";
    _listview0_childWgt1.layoutType = Layout_vbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"100",@"height",
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




    _listview0_childWgt1_panel1 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel1.controlId = @"listview0_childWgt1_panel1";
    _listview0_childWgt1_panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"100",@"height",
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




    [_listview0_childWgt1_panel1 setContainer:self];
    [_listview0_childWgt1_panel1 addEvent:@"onclick" actionName:@"onItemClick"];

    _listview0_childWgt1_panel2 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel2.controlId = @"listview0_childWgt1_panel2";
    _listview0_childWgt1_panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel1 addSubUMView:_listview0_childWgt1_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"15",@"marginLeft",
                          @"0",@"marginTop",
                          @"5",@"marginRight",
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
                          @"35",@"width",
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




// --listview0_childWgt1_image0
    _listview0_childWgt1_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image0",
                          @"height":@"35",
                          @"width":@"35",
                          @"scaletype":@"fitcenter",
                          @"src":@"inforead.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel2 addSubUMXView:_listview0_childWgt1_image0];

    _listview0_childWgt1_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel3.controlId = @"listview0_childWgt1_panel3";
    _listview0_childWgt1_panel3.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel1 addSubUMView:_listview0_childWgt1_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"8",@"marginRight",
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




    _listview0_childWgt1_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel8.controlId = @"listview0_childWgt1_panel8";
    _listview0_childWgt1_panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel3 addSubUMView:_listview0_childWgt1_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"34",@"height",
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




    _listview0_childWgt1_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel9.controlId = @"listview0_childWgt1_panel9";
    _listview0_childWgt1_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel8 addSubUMView:_listview0_childWgt1_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt1_panel12 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel12.controlId = @"listview0_childWgt1_panel12";
    _listview0_childWgt1_panel12.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel9 addSubUMView:_listview0_childWgt1_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt1_label0
    _listview0_childWgt1_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"topic",
                          @"halign":@"left",
                          @"width":@"173",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label0",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"topic"}];
    [(UMLayoutView*)_listview0_childWgt1_panel12 addSubUMXView:_listview0_childWgt1_label0];

    _listview0_childWgt1_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel11.controlId = @"listview0_childWgt1_panel11";
    _listview0_childWgt1_panel11.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel9 addSubUMView:_listview0_childWgt1_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"90",@"width",
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




// --listview0_childWgt1_label1
    _listview0_childWgt1_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"businessType",
                          @"halign":@"right",
                          @"widthwrap":@"94.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label1",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"businesstype"}];
    [(UMLayoutView*)_listview0_childWgt1_panel11 addSubUMXView:_listview0_childWgt1_label1];

//添加邮件标题字段，列表两行布局变3行(panel3包含panel13包含msgtitle的label)
_listview0_childWgt1_panel13 = [[UMLayoutView alloc] init];
_listview0_childWgt1_panel13.controlId = @"listview0_childWgt1_panel13";
_listview0_childWgt1_panel13.layoutType = Layout_hbox;
[(UMLayoutView*)_listview0_childWgt1_panel3 addSubUMView:_listview0_childWgt1_panel13];
//设置控件基本属性
[UMCompatible initCommonProperty:_listview0_childWgt1_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
    
_listview0_childWgt1_msgtitle = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                         @"bindfield":@"msgtitle",
                         @"halign":@"left",
                         @"widthwrap":@"75.0",
                         @"width":@"wrap",
                         @"font_size":@"13",
                         @"txt_r":@"0.43529412",
                         @"txt_g":@"0.43529412",
                         @"id":@"listview0_childWgt1_msgtitle",
                         @"height":@"wrap",
                         @"font_family":@"ArialMT",
                         @"color":@"#6f6f6f",
                         @"heightwrap":@"19.0",
                         @"font-size":@"13",
                         @"layout":@"Layout_vbox",
                         @"font-family":@"default",
                         @"txt_b":@"0.43529412",
                         @"valign":@"center",@"value":@"msgtitle"}];
[(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMXView:_listview0_childWgt1_msgtitle];

    
    
    _listview0_childWgt1_panel5 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel5.controlId = @"listview0_childWgt1_panel5";
    _listview0_childWgt1_panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel3 addSubUMView:_listview0_childWgt1_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt1_panel6 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel6.controlId = @"listview0_childWgt1_panel6";
    _listview0_childWgt1_panel6.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel5 addSubUMView:_listview0_childWgt1_panel6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt1_msgSendBy
    _listview0_childWgt1_msgSendBy = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendBy",
                          @"halign":@"left",
                          @"widthwrap":@"75.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt1_msgSendBy",
                          @"txt_g":@"0.43529412",
                          @"height":@"wrap",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"heightwrap":@"19.0",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@"msgSendBy"}];
    [(UMLayoutView*)_listview0_childWgt1_panel6 addSubUMXView:_listview0_childWgt1_msgSendBy];

    _listview0_childWgt1_panel4 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel4.controlId = @"listview0_childWgt1_panel4";
    _listview0_childWgt1_panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel5 addSubUMView:_listview0_childWgt1_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
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
                          @"0",@"border-radius",
                          nil] container:self];




    _listview0_childWgt1_panel7 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel7.controlId = @"listview0_childWgt1_panel7";
    _listview0_childWgt1_panel7.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel5 addSubUMView:_listview0_childWgt1_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt1_datetime
    _listview0_childWgt1_datetime = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sendDate",
                          @"halign":@"right",
                          @"widthwrap":@"56.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_datetime",
                          @"txt_g":@"0.32156864",
                          @"height":@"20",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"datetime"}];
    [(UMLayoutView*)_listview0_childWgt1_panel7 addSubUMXView:_listview0_childWgt1_datetime];

    _listview0_childWgt1_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel10.controlId = @"listview0_childWgt1_panel10";
    _listview0_childWgt1_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel1 addSubUMView:_listview0_childWgt1_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt1_image1
    _listview0_childWgt1_image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image1",
                          @"height":@"20",
                          @"width":@"10",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_set_jt.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel10 addSubUMXView:_listview0_childWgt1_image1];

[self.contentView addSubview:_listview0_childWgt1.content];
self.cellHeight = @"100";
break;
}

          default:
             break;
        }
  
    }
    return self;
}
-(void)bindAll:(UMEntityContext *)_ctx{

	[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt0_msgSendBy controlid:@"listview0_childWgt0_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt0_datetime controlid:@"listview0_childWgt0_datetime" bindfield:@"sendDate"];
     [self umcontrol:_listview0_childWgt0_msgtitle controlid:@"listview0_childWgt0_msgtitle" bindfield:@"msgtitle"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt1_label1 controlid:@"listview0_childWgt1_label1" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt1_msgSendBy controlid:@"listview0_childWgt1_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt1_datetime controlid:@"listview0_childWgt1_datetime" bindfield:@"sendDate"];
     [self umcontrol:_listview0_childWgt1_msgtitle controlid:@"listview0_childWgt1_msgtitle" bindfield:@"msgtitle"];

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
case 1:
{
[self setWgtFrame:_listview0_childWgt1];
[self bindAll:_ctx];
[_listview0_childWgt1 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface msg_allreadmessagelistController_listview0_group ()
{
	
}
@end
@implementation msg_allreadmessagelistController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt0_msgSendBy controlid:@"listview0_childWgt0_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt0_datetime controlid:@"listview0_childWgt0_datetime" bindfield:@"sendDate"];
        [self umcontrol:_listview0_childWgt0_msgtitle controlid:@"listview0_childWgt0_msgtitle" bindfield:@"msgtitle"];
        
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"topic"];
[self umcontrol:_listview0_childWgt1_label1 controlid:@"listview0_childWgt1_label1" bindfield:@"businessType"];
[self umcontrol:_listview0_childWgt1_msgSendBy controlid:@"listview0_childWgt1_msgSendBy" bindfield:@"sendBy"];
[self umcontrol:_listview0_childWgt1_datetime controlid:@"listview0_childWgt1_datetime" bindfield:@"sendDate"];
         [self umcontrol:_listview0_childWgt1_msgtitle controlid:@"listview0_childWgt1_msgtitle" bindfield:@"msgtitle"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface msg_allreadmessagelistController_listview0_cellHeight ()
{
	
}
@end
@implementation msg_allreadmessagelistController_listview0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"100";
break;
case 1:
self.cellHeight = @"100";
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
