#import "addr_nearlycheckController_listview0.h"
@interface addr_nearlycheckController_listview0_tableViewCell ()
{
	
}
@end
@implementation addr_nearlycheckController_listview0_tableViewCell
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
                          @"8",@"paddingLeftUMP",
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
                          @"70",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"oaadl_70_down.png",@"backgroundImagePath",
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




    [_listview0_childWgt0 setContainer:self];
    [_listview0_childWgt0 addEvent:@"onclick" actionName:@"toPsnDetail"];

    _listview0_childWgt0_panel1 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel1.controlId = @"listview0_childWgt0_panel1";
    _listview0_childWgt0_panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"8",@"marginRight",
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
                          @"25",@"width",
                          @"70",@"height",
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
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_nosex.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel1 addSubUMXView:_listview0_childWgt0_image0];

    _listview0_childWgt0_panel2 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel2.controlId = @"listview0_childWgt0_panel2";
    _listview0_childWgt0_panel2.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"3",@"paddingLeftUMP",
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




    _listview0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel3.controlId = @"listview0_childWgt0_panel3";
    _listview0_childWgt0_panel3.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMView:_listview0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"13",@"marginTop",
                          @"0",@"marginRight",
                          @"7",@"marginBottom",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label0",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMXView:_listview0_childWgt0_label0];

// --listview0_childWgt0_label2
    _listview0_childWgt0_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label2",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMXView:_listview0_childWgt0_label2];

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
                          @"13",@"marginBottom",
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
                          @"17",@"height",
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
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt0_label1",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMXView:_listview0_childWgt0_label1];

// --listview0_childWgt0_label3
    _listview0_childWgt0_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt0_label3",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMXView:_listview0_childWgt0_label3];

    _listview0_childWgt0_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel15.controlId = @"listview0_childWgt0_panel15";
    _listview0_childWgt0_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"8",@"marginLeft",
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
                          @"8",@"width",
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




// --listview0_childWgt0_image3
    _listview0_childWgt0_image3 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image3",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_image3];

[self.contentView addSubview:_listview0_childWgt0.content];
self.cellHeight = @"70";
break;
}
case 1:
{
    _listview0_childWgt1 = [[UMLayoutView alloc] init];
    _listview0_childWgt1.controlId = @"listview0_childWgt1";
    _listview0_childWgt1.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
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
                          @"70",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"oaadl_70_down.png",@"backgroundImagePath",
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




    [_listview0_childWgt1 setContainer:self];
    [_listview0_childWgt1 addEvent:@"onclick" actionName:@"toPsnDetail"];

    _listview0_childWgt1_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel11.controlId = @"listview0_childWgt1_panel11";
    _listview0_childWgt1_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"8",@"marginRight",
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
                          @"25",@"width",
                          @"70",@"height",
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




// --listview0_childWgt1_image2
    _listview0_childWgt1_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image2",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_fm.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel11 addSubUMXView:_listview0_childWgt1_image2];

    _listview0_childWgt1_panel12 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel12.controlId = @"listview0_childWgt1_panel12";
    _listview0_childWgt1_panel12.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"3",@"paddingLeftUMP",
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




    _listview0_childWgt1_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel13.controlId = @"listview0_childWgt1_panel13";
    _listview0_childWgt1_panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel12 addSubUMView:_listview0_childWgt1_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"13",@"marginTop",
                          @"0",@"marginRight",
                          @"7",@"marginBottom",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt1_label8
    _listview0_childWgt1_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label8",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMXView:_listview0_childWgt1_label8];

// --listview0_childWgt1_label9
    _listview0_childWgt1_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label9",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMXView:_listview0_childWgt1_label9];

    _listview0_childWgt1_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel14.controlId = @"listview0_childWgt1_panel14";
    _listview0_childWgt1_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel12 addSubUMView:_listview0_childWgt1_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"13",@"marginBottom",
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
                          @"17",@"height",
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




// --listview0_childWgt1_label10
    _listview0_childWgt1_label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt1_label10",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel14 addSubUMXView:_listview0_childWgt1_label10];

// --listview0_childWgt1_label11
    _listview0_childWgt1_label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt1_label11",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel14 addSubUMXView:_listview0_childWgt1_label11];

    _listview0_childWgt1_panel17 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel17.controlId = @"listview0_childWgt1_panel17";
    _listview0_childWgt1_panel17.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel17 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"8",@"marginLeft",
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
                          @"8",@"width",
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




// --listview0_childWgt1_image5
    _listview0_childWgt1_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image5",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel17 addSubUMXView:_listview0_childWgt1_image5];

[self.contentView addSubview:_listview0_childWgt1.content];
self.cellHeight = @"70";
break;
}
case 2:
{
    _listview0_childWgt2 = [[UMLayoutView alloc] init];
    _listview0_childWgt2.controlId = @"listview0_childWgt2";
    _listview0_childWgt2.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
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
                          @"70",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"oaadl_70_down.png",@"backgroundImagePath",
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




    [_listview0_childWgt2 setContainer:self];
    [_listview0_childWgt2 addEvent:@"onclick" actionName:@"toPsnDetail"];

    _listview0_childWgt2_panel7 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel7.controlId = @"listview0_childWgt2_panel7";
    _listview0_childWgt2_panel7.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_panel7];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel7 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"8",@"marginRight",
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
                          @"25",@"width",
                          @"70",@"height",
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




// --listview0_childWgt2_image1
    _listview0_childWgt2_image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image1",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_fa.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel7 addSubUMXView:_listview0_childWgt2_image1];

    _listview0_childWgt2_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel8.controlId = @"listview0_childWgt2_panel8";
    _listview0_childWgt2_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"3",@"paddingLeftUMP",
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




    _listview0_childWgt2_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel9.controlId = @"listview0_childWgt2_panel9";
    _listview0_childWgt2_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"13",@"marginTop",
                          @"0",@"marginRight",
                          @"7",@"marginBottom",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt2_label4
    _listview0_childWgt2_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label4",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel9 addSubUMXView:_listview0_childWgt2_label4];

// --listview0_childWgt2_label5
    _listview0_childWgt2_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel9 addSubUMXView:_listview0_childWgt2_label5];

    _listview0_childWgt2_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel10.controlId = @"listview0_childWgt2_panel10";
    _listview0_childWgt2_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"13",@"marginBottom",
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
                          @"17",@"height",
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




// --listview0_childWgt2_label6
    _listview0_childWgt2_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt2_label6",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label6];

// --listview0_childWgt2_label7
    _listview0_childWgt2_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt2_label7",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label7];

    _listview0_childWgt2_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel16.controlId = @"listview0_childWgt2_panel16";
    _listview0_childWgt2_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"8",@"marginLeft",
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
                          @"8",@"width",
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




// --listview0_childWgt2_image4
    _listview0_childWgt2_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel16 addSubUMXView:_listview0_childWgt2_image4];

[self.contentView addSubview:_listview0_childWgt2.content];
self.cellHeight = @"70";
break;
}

          default:
             break;
        }
  
    }
    return self;
}
-(void)bindAll:(UMEntityContext *)_ctx{

	[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"name"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"position"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt0_label3 controlid:@"listview0_childWgt0_label3" bindfield:@"job"];
[self umcontrol:_listview0_childWgt1_label8 controlid:@"listview0_childWgt1_label8" bindfield:@"name"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"position"];
[self umcontrol:_listview0_childWgt1_label10 controlid:@"listview0_childWgt1_label10" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt1_label11 controlid:@"listview0_childWgt1_label11" bindfield:@"job"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"name"];
[self umcontrol:_listview0_childWgt2_label5 controlid:@"listview0_childWgt2_label5" bindfield:@"position"];
[self umcontrol:_listview0_childWgt2_label6 controlid:@"listview0_childWgt2_label6" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt2_label7 controlid:@"listview0_childWgt2_label7" bindfield:@"job"];

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
case 2:
{
[self setWgtFrame:_listview0_childWgt2];
[self bindAll:_ctx];
[_listview0_childWgt2 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface addr_nearlycheckController_listview0_group ()
{
	
}
@end
@implementation addr_nearlycheckController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"name"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"position"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt0_label3 controlid:@"listview0_childWgt0_label3" bindfield:@"job"];
[self umcontrol:_listview0_childWgt1_label8 controlid:@"listview0_childWgt1_label8" bindfield:@"name"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"position"];
[self umcontrol:_listview0_childWgt1_label10 controlid:@"listview0_childWgt1_label10" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt1_label11 controlid:@"listview0_childWgt1_label11" bindfield:@"job"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"name"];
[self umcontrol:_listview0_childWgt2_label5 controlid:@"listview0_childWgt2_label5" bindfield:@"position"];
[self umcontrol:_listview0_childWgt2_label6 controlid:@"listview0_childWgt2_label6" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt2_label7 controlid:@"listview0_childWgt2_label7" bindfield:@"job"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface addr_nearlycheckController_listview0_cellHeight ()
{
	
}
@end
@implementation addr_nearlycheckController_listview0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"70";
break;
case 1:
self.cellHeight = @"70";
break;
case 2:
self.cellHeight = @"70";
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
