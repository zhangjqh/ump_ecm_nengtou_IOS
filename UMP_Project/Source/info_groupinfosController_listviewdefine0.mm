#import "info_groupinfosController_listviewdefine0.h"
@interface info_groupinfosController_listviewdefine0_tableViewCell ()
{
	
}
@end
@implementation info_groupinfosController_listviewdefine0_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 1:
{
    _listviewdefine0_childWgt0 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0.controlId = @"listviewdefine0_childWgt0";
    _listviewdefine0_childWgt0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"70",@"height",
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




    _listviewdefine0_childWgt0_panel16 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel16.controlId = @"listviewdefine0_childWgt0_panel16";
    _listviewdefine0_childWgt0_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0 addSubUMView:_listviewdefine0_childWgt0_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt0_image0
    _listviewdefine0_childWgt0_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listviewdefine0_childWgt0_image0",
                          @"height":@"35",
                          @"width":@"35",
                          @"scaletype":@"fitcenter",
                          @"src":@"inforead.png",@"value":@""}];
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel16 addSubUMXView:_listviewdefine0_childWgt0_image0];

    _listviewdefine0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel3.controlId = @"listviewdefine0_childWgt0_panel3";
    _listviewdefine0_childWgt0_panel3.layoutType = Layout_vbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0 addSubUMView:_listviewdefine0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"5",@"marginLeft",
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




    [_listviewdefine0_childWgt0_panel3 setContainer:self];
    [_listviewdefine0_childWgt0_panel3 addEvent:@"onclick" actionName:@"toInformation"];

    _listviewdefine0_childWgt0_panel5 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel5.controlId = @"listviewdefine0_childWgt0_panel5";
    _listviewdefine0_childWgt0_panel5.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel3 addSubUMView:_listviewdefine0_childWgt0_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"6",@"paddingTopUMP",
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




    _listviewdefine0_childWgt0_panel8 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel8.controlId = @"listviewdefine0_childWgt0_panel8";
    _listviewdefine0_childWgt0_panel8.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel5 addSubUMView:_listviewdefine0_childWgt0_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt0_label2
    _listviewdefine0_childWgt0_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"infotitle",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.0",
                          @"font_size":@"16",
                          @"id":@"listviewdefine0_childWgt0_label2",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel8 addSubUMXView:_listviewdefine0_childWgt0_label2];

    _listviewdefine0_childWgt0_panel10 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel10.controlId = @"listviewdefine0_childWgt0_panel10";
    _listviewdefine0_childWgt0_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel5 addSubUMView:_listviewdefine0_childWgt0_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"76",@"width",
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




// --listviewdefine0_childWgt0_label3
    _listviewdefine0_childWgt0_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"publishdate",
                          @"halign":@"center",
                          @"width":@"fill",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listviewdefine0_childWgt0_label3",
                          @"txt_g":@"0.32156864",
                          @"height":@"20",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",@"value":@""}];
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel10 addSubUMXView:_listviewdefine0_childWgt0_label3];

    _listviewdefine0_childWgt0_panel13 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt0_panel13.controlId = @"listviewdefine0_childWgt0_panel13";
    _listviewdefine0_childWgt0_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel3 addSubUMView:_listviewdefine0_childWgt0_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt0_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt0_label6
    _listviewdefine0_childWgt0_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"infosummary",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"14",
                          @"id":@"listviewdefine0_childWgt0_label6",
                          @"txt_g":@"0.44705883",
                          @"height":@"30",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_childWgt0_panel13 addSubUMXView:_listviewdefine0_childWgt0_label6];

[self.contentView addSubview:_listviewdefine0_childWgt0.content];
self.cellHeight = @"70";
break;
}
case 2:
{
    _listviewdefine0_childWgt1 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1.controlId = @"listviewdefine0_childWgt1";
    _listviewdefine0_childWgt1.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"70",@"height",
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




    _listviewdefine0_childWgt1_panel17 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel17.controlId = @"listviewdefine0_childWgt1_panel17";
    _listviewdefine0_childWgt1_panel17.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1 addSubUMView:_listviewdefine0_childWgt1_panel17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel17 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt1_image1
    _listviewdefine0_childWgt1_image1 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listviewdefine0_childWgt1_image1",
                          @"height":@"35",
                          @"width":@"35",
                          @"scaletype":@"fitcenter",
                          @"src":@"infounread.png",@"value":@""}];
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel17 addSubUMXView:_listviewdefine0_childWgt1_image1];

    _listviewdefine0_childWgt1_panel4 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel4.controlId = @"listviewdefine0_childWgt1_panel4";
    _listviewdefine0_childWgt1_panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1 addSubUMView:_listviewdefine0_childWgt1_panel4];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel4 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"5",@"marginLeft",
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




    [_listviewdefine0_childWgt1_panel4 setContainer:self];
    [_listviewdefine0_childWgt1_panel4 addEvent:@"onclick" actionName:@"toInformation"];

    _listviewdefine0_childWgt1_panel6 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel6.controlId = @"listviewdefine0_childWgt1_panel6";
    _listviewdefine0_childWgt1_panel6.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel4 addSubUMView:_listviewdefine0_childWgt1_panel6];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel6 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"6",@"paddingTopUMP",
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




    _listviewdefine0_childWgt1_panel11 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel11.controlId = @"listviewdefine0_childWgt1_panel11";
    _listviewdefine0_childWgt1_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel6 addSubUMView:_listviewdefine0_childWgt1_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt1_label4
    _listviewdefine0_childWgt1_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"infotitle",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.0",
                          @"font_size":@"16",
                          @"id":@"listviewdefine0_childWgt1_label4",
                          @"txt_g":@"0.0",
                          @"height":@"20",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel11 addSubUMXView:_listviewdefine0_childWgt1_label4];

    _listviewdefine0_childWgt1_panel12 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel12.controlId = @"listviewdefine0_childWgt1_panel12";
    _listviewdefine0_childWgt1_panel12.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel6 addSubUMView:_listviewdefine0_childWgt1_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"76",@"width",
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




// --listviewdefine0_childWgt1_label5
    _listviewdefine0_childWgt1_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"publishdate",
                          @"halign":@"center",
                          @"width":@"fill",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listviewdefine0_childWgt1_label5",
                          @"txt_g":@"0.32156864",
                          @"height":@"20",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",@"value":@""}];
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel12 addSubUMXView:_listviewdefine0_childWgt1_label5];

    _listviewdefine0_childWgt1_panel14 = [[UMLayoutView alloc] init];
    _listviewdefine0_childWgt1_panel14.controlId = @"listviewdefine0_childWgt1_panel14";
    _listviewdefine0_childWgt1_panel14.layoutType = Layout_vbox;
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel4 addSubUMView:_listviewdefine0_childWgt1_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_childWgt1_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_childWgt1_label7
    _listviewdefine0_childWgt1_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"infosummary",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"14",
                          @"id":@"listviewdefine0_childWgt1_label7",
                          @"txt_g":@"0.44705883",
                          @"height":@"30",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_childWgt1_panel14 addSubUMXView:_listviewdefine0_childWgt1_label7];

[self.contentView addSubview:_listviewdefine0_childWgt1.content];
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

	[self umcontrol:_listviewdefine0_groupWgt_label0 controlid:@"listviewdefine0_groupWgt_label0" bindfield:@"initinfogrouptitle"];
[self umcontrol:_listviewdefine0_childWgt0_label2 controlid:@"listviewdefine0_childWgt0_label2" bindfield:@"infotitle"];
[self umcontrol:_listviewdefine0_childWgt0_label3 controlid:@"listviewdefine0_childWgt0_label3" bindfield:@"publishdate"];
[self umcontrol:_listviewdefine0_childWgt0_label6 controlid:@"listviewdefine0_childWgt0_label6" bindfield:@"infosummary"];
[self umcontrol:_listviewdefine0_childWgt1_label4 controlid:@"listviewdefine0_childWgt1_label4" bindfield:@"infotitle"];
[self umcontrol:_listviewdefine0_childWgt1_label5 controlid:@"listviewdefine0_childWgt1_label5" bindfield:@"publishdate"];
[self umcontrol:_listviewdefine0_childWgt1_label7 controlid:@"listviewdefine0_childWgt1_label7" bindfield:@"infosummary"];

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
     case 1:
{
[self setWgtFrame:_listviewdefine0_childWgt0];
[self bindAll:_ctx];
[_listviewdefine0_childWgt0 adjustSizeForParentest:self];
break;
}
case 2:
{
[self setWgtFrame:_listviewdefine0_childWgt1];
[self bindAll:_ctx];
[_listviewdefine0_childWgt1 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface info_groupinfosController_listviewdefine0_group ()
{
	
}
@end
@implementation info_groupinfosController_listviewdefine0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    self.listGroup = @"true";
    _listviewdefine0_groupWgt = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt.controlId = @"listviewdefine0_groupWgt";
    _listviewdefine0_groupWgt.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"30",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"col_bj.png",@"backgroundImagePath",
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




self.sectionHeight = @"30";
    _listviewdefine0_groupWgt_panel1 = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt_panel1.controlId = @"listviewdefine0_groupWgt_panel1";
    _listviewdefine0_groupWgt_panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_groupWgt addSubUMView:_listviewdefine0_groupWgt_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_groupWgt_label0
    _listviewdefine0_groupWgt_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"initinfogrouptitle",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"14",
                          @"id":@"listviewdefine0_groupWgt_label0",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_groupWgt_panel1 addSubUMXView:_listviewdefine0_groupWgt_label0];

    _listviewdefine0_groupWgt_panel2 = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt_panel2.controlId = @"listviewdefine0_groupWgt_panel2";
    _listviewdefine0_groupWgt_panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_groupWgt addSubUMView:_listviewdefine0_groupWgt_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"50",@"width",
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




// --listviewdefine0_groupWgt_label1
    _listviewdefine0_groupWgt_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"12",
                          @"id":@"listviewdefine0_groupWgt_label1",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"onclick":@"toColumnInfos",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"更多..."}];
    [(UMLayoutView*)_listviewdefine0_groupWgt_panel2 addSubUMXView:_listviewdefine0_groupWgt_label1];

[self addSubUMXView:_listviewdefine0_groupWgt];

 self.groupLayout = _listviewdefine0_groupWgt;

    self.ctx=_ctx;
    [self umcontrol:_listviewdefine0_groupWgt_label0 controlid:@"listviewdefine0_groupWgt_label0" bindfield:@"initinfogrouptitle"];
[self umcontrol:_listviewdefine0_childWgt0_label2 controlid:@"listviewdefine0_childWgt0_label2" bindfield:@"infotitle"];
[self umcontrol:_listviewdefine0_childWgt0_label3 controlid:@"listviewdefine0_childWgt0_label3" bindfield:@"publishdate"];
[self umcontrol:_listviewdefine0_childWgt0_label6 controlid:@"listviewdefine0_childWgt0_label6" bindfield:@"infosummary"];
[self umcontrol:_listviewdefine0_childWgt1_label4 controlid:@"listviewdefine0_childWgt1_label4" bindfield:@"infotitle"];
[self umcontrol:_listviewdefine0_childWgt1_label5 controlid:@"listviewdefine0_childWgt1_label5" bindfield:@"publishdate"];
[self umcontrol:_listviewdefine0_childWgt1_label7 controlid:@"listviewdefine0_childWgt1_label7" bindfield:@"infosummary"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface info_groupinfosController_listviewdefine0_cellHeight ()
{
	
}
@end
@implementation info_groupinfosController_listviewdefine0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
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
	self.listGroup = @"true";
    _listviewdefine0_groupWgt = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt.controlId = @"listviewdefine0_groupWgt";
    _listviewdefine0_groupWgt.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"30",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"col_bj.png",@"backgroundImagePath",
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




self.sectionHeight = @"30";
    _listviewdefine0_groupWgt_panel1 = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt_panel1.controlId = @"listviewdefine0_groupWgt_panel1";
    _listviewdefine0_groupWgt_panel1.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_groupWgt addSubUMView:_listviewdefine0_groupWgt_panel1];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt_panel1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listviewdefine0_groupWgt_label0
    _listviewdefine0_groupWgt_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"initinfogrouptitle",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"14",
                          @"id":@"listviewdefine0_groupWgt_label0",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"label"}];
    [(UMLayoutView*)_listviewdefine0_groupWgt_panel1 addSubUMXView:_listviewdefine0_groupWgt_label0];

    _listviewdefine0_groupWgt_panel2 = [[UMLayoutView alloc] init];
    _listviewdefine0_groupWgt_panel2.controlId = @"listviewdefine0_groupWgt_panel2";
    _listviewdefine0_groupWgt_panel2.layoutType = Layout_hbox;
    [(UMLayoutView*)_listviewdefine0_groupWgt addSubUMView:_listviewdefine0_groupWgt_panel2];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listviewdefine0_groupWgt_panel2 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"50",@"width",
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




// --listviewdefine0_groupWgt_label1
    _listviewdefine0_groupWgt_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"left",
                          @"width":@"fill",
                          @"txt_r":@"0.44705883",
                          @"font_size":@"12",
                          @"id":@"listviewdefine0_groupWgt_label1",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"color":@"#727272",
                          @"font_family":@"ArialMT",
                          @"font-size":@"12",
                          @"onclick":@"toColumnInfos",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",@"value":@"更多..."}];
    [(UMLayoutView*)_listviewdefine0_groupWgt_panel2 addSubUMXView:_listviewdefine0_groupWgt_label1];

[self addSubUMXView:_listviewdefine0_groupWgt];

 self.groupLayout = _listviewdefine0_groupWgt;


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
