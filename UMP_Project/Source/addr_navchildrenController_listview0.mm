#import "addr_navchildrenController_listview0.h"
@interface addr_navchildrenController_listview0_tableViewCell ()
{
	
}
@end
@implementation addr_navchildrenController_listview0_tableViewCell
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

    _listview0_childWgt0_panel2 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel2.controlId = @"listview0_childWgt0_panel2";
    _listview0_childWgt0_panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt0_image1
    _listview0_childWgt0_image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image1",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_nosex.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel2 addSubUMXView:_listview0_childWgt0_image1];

    _listview0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel3.controlId = @"listview0_childWgt0_panel3";
    _listview0_childWgt0_panel3.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt0_panel4 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel4.controlId = @"listview0_childWgt0_panel4";
    _listview0_childWgt0_panel4.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMView:_listview0_childWgt0_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt0_label1
    _listview0_childWgt0_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"navname",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMXView:_listview0_childWgt0_label1];

// --listview0_childWgt0_label5
    _listview0_childWgt0_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMXView:_listview0_childWgt0_label5];

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




// --listview0_childWgt0_label2
    _listview0_childWgt0_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt0_label2",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMXView:_listview0_childWgt0_label2];

// --listview0_childWgt0_label6
    _listview0_childWgt0_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt0_label6",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel5 addSubUMXView:_listview0_childWgt0_label6];

    _listview0_childWgt0_panel18 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel18.controlId = @"listview0_childWgt0_panel18";
    _listview0_childWgt0_panel18.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel18];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel18 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt0_image5
    _listview0_childWgt0_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image5",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel18 addSubUMXView:_listview0_childWgt0_image5];

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
                          @"oaadl_44_down.png",@"backgroundImagePath",
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
    [_listview0_childWgt1 addEvent:@"onclick" actionName:@"toChildNav"];

// --listview0_childWgt1_image8
    _listview0_childWgt1_image8 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt1_image8",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1 addSubUMXView:_listview0_childWgt1_image8];

// --listview0_childWgt1_label0
    _listview0_childWgt1_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label0",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"3",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1 addSubUMXView:_listview0_childWgt1_label0];

// --listview0_childWgt1_image0
    _listview0_childWgt1_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1 addSubUMXView:_listview0_childWgt1_image0];

[self.contentView addSubview:_listview0_childWgt1.content];
self.cellHeight = @"44";
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
                          @"oaadl_44_down.png",@"backgroundImagePath",
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




// --listview0_childWgt2_image9
    _listview0_childWgt2_image9 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt2_image9",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2 addSubUMXView:_listview0_childWgt2_image9];

// --listview0_childWgt2_label3
    _listview0_childWgt2_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label3",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"3",
                          @"scaletype":@"fitcenter",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2 addSubUMXView:_listview0_childWgt2_label3];

[self.contentView addSubview:_listview0_childWgt2.content];
self.cellHeight = @"44";
break;
}
case 3:
{
    _listview0_childWgt3 = [[UMLayoutView alloc] init];
    _listview0_childWgt3.controlId = @"listview0_childWgt3";
    _listview0_childWgt3.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"8",@"paddingLeftUMP",
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
                          @"oaadl_44_down.png",@"backgroundImagePath",
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




    [_listview0_childWgt3 setContainer:self];
    [_listview0_childWgt3 addEvent:@"onclick" actionName:@"toPsnList"];

// --listview0_childWgt3_image10
    _listview0_childWgt3_image10 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt3_image10",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3 addSubUMXView:_listview0_childWgt3_image10];

// --listview0_childWgt3_label4
    _listview0_childWgt3_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label4",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"3",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3 addSubUMXView:_listview0_childWgt3_label4];

// --listview0_childWgt3_image2
    _listview0_childWgt3_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt3_image2",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3 addSubUMXView:_listview0_childWgt3_image2];

[self.contentView addSubview:_listview0_childWgt3.content];
self.cellHeight = @"44";
break;
}
case 4:
{
    _listview0_childWgt4 = [[UMLayoutView alloc] init];
    _listview0_childWgt4.controlId = @"listview0_childWgt4";
    _listview0_childWgt4.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt4 setContainer:self];
    [_listview0_childWgt4 addEvent:@"onclick" actionName:@"toPsnDetail"];

    _listview0_childWgt4_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel14.controlId = @"listview0_childWgt4_panel14";
    _listview0_childWgt4_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4 addSubUMView:_listview0_childWgt4_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt4_image4
    _listview0_childWgt4_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt4_image4",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_fm.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel14 addSubUMXView:_listview0_childWgt4_image4];

    _listview0_childWgt4_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel15.controlId = @"listview0_childWgt4_panel15";
    _listview0_childWgt4_panel15.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt4 addSubUMView:_listview0_childWgt4_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt4_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel16.controlId = @"listview0_childWgt4_panel16";
    _listview0_childWgt4_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMView:_listview0_childWgt4_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt4_label11
    _listview0_childWgt4_label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"navname",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt4_label11",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel16 addSubUMXView:_listview0_childWgt4_label11];

// --listview0_childWgt4_label12
    _listview0_childWgt4_label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt4_label12",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel16 addSubUMXView:_listview0_childWgt4_label12];

    _listview0_childWgt4_panel17 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel17.controlId = @"listview0_childWgt4_panel17";
    _listview0_childWgt4_panel17.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMView:_listview0_childWgt4_panel17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel17 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt4_label13
    _listview0_childWgt4_label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt4_label13",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel17 addSubUMXView:_listview0_childWgt4_label13];

// --listview0_childWgt4_label14
    _listview0_childWgt4_label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt4_label14",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel17 addSubUMXView:_listview0_childWgt4_label14];

    _listview0_childWgt4_panel20 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel20.controlId = @"listview0_childWgt4_panel20";
    _listview0_childWgt4_panel20.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4 addSubUMView:_listview0_childWgt4_panel20];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel20 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt4_image7
    _listview0_childWgt4_image7 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt4_image7",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel20 addSubUMXView:_listview0_childWgt4_image7];

[self.contentView addSubview:_listview0_childWgt4.content];
self.cellHeight = @"70";
break;
}
case 5:
{
    _listview0_childWgt5 = [[UMLayoutView alloc] init];
    _listview0_childWgt5.controlId = @"listview0_childWgt5";
    _listview0_childWgt5.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt5 setContainer:self];
    [_listview0_childWgt5 addEvent:@"onclick" actionName:@"toPsnDetail"];

    _listview0_childWgt5_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel10.controlId = @"listview0_childWgt5_panel10";
    _listview0_childWgt5_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5 addSubUMView:_listview0_childWgt5_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt5_image3
    _listview0_childWgt5_image3 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt5_image3",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_detail_fa.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel10 addSubUMXView:_listview0_childWgt5_image3];

    _listview0_childWgt5_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel11.controlId = @"listview0_childWgt5_panel11";
    _listview0_childWgt5_panel11.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt5 addSubUMView:_listview0_childWgt5_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listview0_childWgt5_panel12 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel12.controlId = @"listview0_childWgt5_panel12";
    _listview0_childWgt5_panel12.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_panel11 addSubUMView:_listview0_childWgt5_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt5_label7
    _listview0_childWgt5_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"navname",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt5_label7",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel12 addSubUMXView:_listview0_childWgt5_label7];

// --listview0_childWgt5_label8
    _listview0_childWgt5_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"job",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt5_label8",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel12 addSubUMXView:_listview0_childWgt5_label8];

    _listview0_childWgt5_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel13.controlId = @"listview0_childWgt5_panel13";
    _listview0_childWgt5_panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_panel11 addSubUMView:_listview0_childWgt5_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt5_label9
    _listview0_childWgt5_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobileno",
                          @"halign":@"left",
                          @"width":@"123",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt5_label9",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"color":@"#6f6f6f",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel13 addSubUMXView:_listview0_childWgt5_label9];

// --listview0_childWgt5_label10
    _listview0_childWgt5_label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.43529412",
                          @"id":@"listview0_childWgt5_label10",
                          @"txt_g":@"0.43529412",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#6f6f6f",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.43529412",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel13 addSubUMXView:_listview0_childWgt5_label10];

    _listview0_childWgt5_panel19 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel19.controlId = @"listview0_childWgt5_panel19";
    _listview0_childWgt5_panel19.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5 addSubUMView:_listview0_childWgt5_panel19];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel19 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt5_image6
    _listview0_childWgt5_image6 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt5_image6",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel19 addSubUMXView:_listview0_childWgt5_image6];

[self.contentView addSubview:_listview0_childWgt5.content];
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

	[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt0_label5 controlid:@"listview0_childWgt0_label5" bindfield:@"job"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt0_label6 controlid:@"listview0_childWgt0_label6" bindfield:@"position"];
[self umcontrol:_listview0_childWgt1_image8 controlid:@"listview0_childWgt1_image8" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt2_image9 controlid:@"listview0_childWgt2_image9" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt2_label3 controlid:@"listview0_childWgt2_label3" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt3_image10 controlid:@"listview0_childWgt3_image10" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt3_label4 controlid:@"listview0_childWgt3_label4" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt4_label11 controlid:@"listview0_childWgt4_label11" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt4_label12 controlid:@"listview0_childWgt4_label12" bindfield:@"job"];
[self umcontrol:_listview0_childWgt4_label13 controlid:@"listview0_childWgt4_label13" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt4_label14 controlid:@"listview0_childWgt4_label14" bindfield:@"position"];
[self umcontrol:_listview0_childWgt5_label7 controlid:@"listview0_childWgt5_label7" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt5_label8 controlid:@"listview0_childWgt5_label8" bindfield:@"job"];
[self umcontrol:_listview0_childWgt5_label9 controlid:@"listview0_childWgt5_label9" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt5_label10 controlid:@"listview0_childWgt5_label10" bindfield:@"position"];

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
case 3:
{
[self setWgtFrame:_listview0_childWgt3];
[self bindAll:_ctx];
[_listview0_childWgt3 adjustSizeForParentest:self];
break;
}
case 4:
{
[self setWgtFrame:_listview0_childWgt4];
[self bindAll:_ctx];
[_listview0_childWgt4 adjustSizeForParentest:self];
break;
}
case 5:
{
[self setWgtFrame:_listview0_childWgt5];
[self bindAll:_ctx];
[_listview0_childWgt5 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface addr_navchildrenController_listview0_group ()
{
	
}
@end
@implementation addr_navchildrenController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt0_label5 controlid:@"listview0_childWgt0_label5" bindfield:@"job"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt0_label6 controlid:@"listview0_childWgt0_label6" bindfield:@"position"];
[self umcontrol:_listview0_childWgt1_image8 controlid:@"listview0_childWgt1_image8" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt2_image9 controlid:@"listview0_childWgt2_image9" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt2_label3 controlid:@"listview0_childWgt2_label3" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt3_image10 controlid:@"listview0_childWgt3_image10" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt3_label4 controlid:@"listview0_childWgt3_label4" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt4_label11 controlid:@"listview0_childWgt4_label11" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt4_label12 controlid:@"listview0_childWgt4_label12" bindfield:@"job"];
[self umcontrol:_listview0_childWgt4_label13 controlid:@"listview0_childWgt4_label13" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt4_label14 controlid:@"listview0_childWgt4_label14" bindfield:@"position"];
[self umcontrol:_listview0_childWgt5_label7 controlid:@"listview0_childWgt5_label7" bindfield:@"navname"];
[self umcontrol:_listview0_childWgt5_label8 controlid:@"listview0_childWgt5_label8" bindfield:@"job"];
[self umcontrol:_listview0_childWgt5_label9 controlid:@"listview0_childWgt5_label9" bindfield:@"mobileno"];
[self umcontrol:_listview0_childWgt5_label10 controlid:@"listview0_childWgt5_label10" bindfield:@"position"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface addr_navchildrenController_listview0_cellHeight ()
{
	
}
@end
@implementation addr_navchildrenController_listview0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"70";
break;
case 1:
self.cellHeight = @"44";
break;
case 2:
self.cellHeight = @"44";
break;
case 3:
self.cellHeight = @"44";
break;
case 4:
self.cellHeight = @"70";
break;
case 5:
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
