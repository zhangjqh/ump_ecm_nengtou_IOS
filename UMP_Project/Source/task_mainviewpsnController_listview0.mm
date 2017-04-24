#import "task_mainviewpsnController_listview0.h"
@interface task_mainviewpsnController_listview0_tableViewCell ()
{
	
}
@end
@implementation task_mainviewpsnController_listview0_tableViewCell
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




    [_listview0_childWgt0 setContainer:self];
    [_listview0_childWgt0 addEvent:@"onclick" actionName:@"showItemDetail"];

    _listview0_childWgt0_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel21.controlId = @"listview0_childWgt0_panel21";
    _listview0_childWgt0_panel21.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
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




    _listview0_childWgt0_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel8.controlId = @"listview0_childWgt0_panel8";
    _listview0_childWgt0_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_panel21 addSubUMView:_listview0_childWgt0_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"12",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"12",@"paddingBottomUMP",
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
                          @"list_row_down3.png",@"backgroundImagePath",
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




    _listview0_childWgt0_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel10.controlId = @"listview0_childWgt0_panel10";
    _listview0_childWgt0_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel8 addSubUMView:_listview0_childWgt0_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"8",@"marginBottom",
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
                          @"15",@"height",
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




// --listview0_childWgt0_label4
    _listview0_childWgt0_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label4",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel10 addSubUMXView:_listview0_childWgt0_label4];

// --listview0_childWgt0_image0
    _listview0_childWgt0_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image0",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel10 addSubUMXView:_listview0_childWgt0_image0];

// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel10 addSubUMXView:_listview0_childWgt0_label0];

    _listview0_childWgt0_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel11.controlId = @"listview0_childWgt0_panel11";
    _listview0_childWgt0_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel8 addSubUMView:_listview0_childWgt0_panel11];
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




// --listview0_childWgt0_label5
    _listview0_childWgt0_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel11 addSubUMXView:_listview0_childWgt0_label5];

    _listview0_childWgt0_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel9.controlId = @"listview0_childWgt0_panel9";
    _listview0_childWgt0_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel21 addSubUMView:_listview0_childWgt0_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"23",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_row_down3.png",@"backgroundImagePath",
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




// --listview0_childWgt0_image2
    _listview0_childWgt0_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image2",
                          @"height":@"13",
                          @"width":@"fill",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel9 addSubUMXView:_listview0_childWgt0_image2];

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




    [_listview0_childWgt1 setContainer:self];
    [_listview0_childWgt1 addEvent:@"onclick" actionName:@"showItemDetail"];

    _listview0_childWgt1_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel21.controlId = @"listview0_childWgt1_panel21";
    _listview0_childWgt1_panel21.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
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




    _listview0_childWgt1_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel8.controlId = @"listview0_childWgt1_panel8";
    _listview0_childWgt1_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_panel21 addSubUMView:_listview0_childWgt1_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"12",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"12",@"paddingBottomUMP",
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
                          @"list_row_down3.png",@"backgroundImagePath",
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




    _listview0_childWgt1_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel10.controlId = @"listview0_childWgt1_panel10";
    _listview0_childWgt1_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel8 addSubUMView:_listview0_childWgt1_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"8",@"marginBottom",
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
                          @"15",@"height",
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




// --listview0_childWgt1_label4
    _listview0_childWgt1_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label4",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel10 addSubUMXView:_listview0_childWgt1_label4];

// --listview0_childWgt1_label0
    _listview0_childWgt1_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel10 addSubUMXView:_listview0_childWgt1_label0];

    _listview0_childWgt1_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel11.controlId = @"listview0_childWgt1_panel11";
    _listview0_childWgt1_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel8 addSubUMView:_listview0_childWgt1_panel11];
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




// --listview0_childWgt1_label5
    _listview0_childWgt1_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel11 addSubUMXView:_listview0_childWgt1_label5];

    _listview0_childWgt1_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel9.controlId = @"listview0_childWgt1_panel9";
    _listview0_childWgt1_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel21 addSubUMView:_listview0_childWgt1_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"23",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_row_down3.png",@"backgroundImagePath",
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
                          @"height":@"13",
                          @"width":@"fill",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel9 addSubUMXView:_listview0_childWgt1_image2];

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




    [_listview0_childWgt2 setContainer:self];
    [_listview0_childWgt2 addEvent:@"onclick" actionName:@"showItemDetail"];

    _listview0_childWgt2_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel21.controlId = @"listview0_childWgt2_panel21";
    _listview0_childWgt2_panel21.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
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




    _listview0_childWgt2_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel8.controlId = @"listview0_childWgt2_panel8";
    _listview0_childWgt2_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt2_panel21 addSubUMView:_listview0_childWgt2_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"12",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"12",@"paddingBottomUMP",
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
                          @"list_row_down3.png",@"backgroundImagePath",
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
                          @"8",@"marginBottom",
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
                          @"15",@"height",
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




// --listview0_childWgt2_label4
    _listview0_childWgt2_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt2_label4",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label4];

// --listview0_childWgt2_label1
    _listview0_childWgt2_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt2_label1",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label1];

// --listview0_childWgt2_label6
    _listview0_childWgt2_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt2_label6",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label6];

// --listview0_childWgt2_image0
    _listview0_childWgt2_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image0",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_image0];

// --listview0_childWgt2_label0
    _listview0_childWgt2_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt2_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel10 addSubUMXView:_listview0_childWgt2_label0];

    _listview0_childWgt2_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel11.controlId = @"listview0_childWgt2_panel11";
    _listview0_childWgt2_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt2_label5
    _listview0_childWgt2_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel11 addSubUMXView:_listview0_childWgt2_label5];

    _listview0_childWgt2_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel9.controlId = @"listview0_childWgt2_panel9";
    _listview0_childWgt2_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel21 addSubUMView:_listview0_childWgt2_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"23",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_row_down3.png",@"backgroundImagePath",
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




// --listview0_childWgt2_image2
    _listview0_childWgt2_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image2",
                          @"height":@"13",
                          @"width":@"fill",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel9 addSubUMXView:_listview0_childWgt2_image2];

[self.contentView addSubview:_listview0_childWgt2.content];
self.cellHeight = @"70";
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




    [_listview0_childWgt3 setContainer:self];
    [_listview0_childWgt3 addEvent:@"onclick" actionName:@"showItemDetail"];

    _listview0_childWgt3_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel21.controlId = @"listview0_childWgt3_panel21";
    _listview0_childWgt3_panel21.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3 addSubUMView:_listview0_childWgt3_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"15",@"paddingLeftUMP",
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




    _listview0_childWgt3_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel8.controlId = @"listview0_childWgt3_panel8";
    _listview0_childWgt3_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt3_panel21 addSubUMView:_listview0_childWgt3_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"12",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"12",@"paddingBottomUMP",
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
                          @"list_row_down3.png",@"backgroundImagePath",
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




    _listview0_childWgt3_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel10.controlId = @"listview0_childWgt3_panel10";
    _listview0_childWgt3_panel10.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel8 addSubUMView:_listview0_childWgt3_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"8",@"marginBottom",
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
                          @"15",@"height",
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




// --listview0_childWgt3_label4
    _listview0_childWgt3_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt3_label4",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel10 addSubUMXView:_listview0_childWgt3_label4];

// --listview0_childWgt3_label1
    _listview0_childWgt3_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt3_label1",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt3_panel10 addSubUMXView:_listview0_childWgt3_label1];

// --listview0_childWgt3_label6
    _listview0_childWgt3_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt3_label6",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852a5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel10 addSubUMXView:_listview0_childWgt3_label6];

// --listview0_childWgt3_label0
    _listview0_childWgt3_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt3_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"14",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"13",
                          @"margin-left":@"5",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel10 addSubUMXView:_listview0_childWgt3_label0];

    _listview0_childWgt3_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel11.controlId = @"listview0_childWgt3_panel11";
    _listview0_childWgt3_panel11.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel8 addSubUMView:_listview0_childWgt3_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listview0_childWgt3_label5
    _listview0_childWgt3_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label5",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel11 addSubUMXView:_listview0_childWgt3_label5];

    _listview0_childWgt3_panel9 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel9.controlId = @"listview0_childWgt3_panel9";
    _listview0_childWgt3_panel9.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel21 addSubUMView:_listview0_childWgt3_panel9];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel9 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
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
                          @"YES",@"isHeightFill",
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"23",@"width",
                          @"0",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_row_down3.png",@"backgroundImagePath",
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




// --listview0_childWgt3_image2
    _listview0_childWgt3_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt3_image2",
                          @"height":@"13",
                          @"width":@"fill",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel9 addSubUMXView:_listview0_childWgt3_image2];

[self.contentView addSubview:_listview0_childWgt3.content];
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

	[self umcontrol:_listview0_childWgt0_label4 controlid:@"listview0_childWgt0_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt0_label5 controlid:@"listview0_childWgt0_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt1_label4 controlid:@"listview0_childWgt1_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt1_label5 controlid:@"listview0_childWgt1_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt2_label6 controlid:@"listview0_childWgt2_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt2_label0 controlid:@"listview0_childWgt2_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt2_label5 controlid:@"listview0_childWgt2_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt3_label4 controlid:@"listview0_childWgt3_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt3_label6 controlid:@"listview0_childWgt3_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt3_label0 controlid:@"listview0_childWgt3_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt3_label5 controlid:@"listview0_childWgt3_label5" bindfield:@"taskname"];

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

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface task_mainviewpsnController_listview0_group ()
{
	
}
@end
@implementation task_mainviewpsnController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label4 controlid:@"listview0_childWgt0_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt0_label5 controlid:@"listview0_childWgt0_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt1_label4 controlid:@"listview0_childWgt1_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt1_label5 controlid:@"listview0_childWgt1_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt2_label6 controlid:@"listview0_childWgt2_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt2_label0 controlid:@"listview0_childWgt2_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt2_label5 controlid:@"listview0_childWgt2_label5" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt3_label4 controlid:@"listview0_childWgt3_label4" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt3_label6 controlid:@"listview0_childWgt3_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt3_label0 controlid:@"listview0_childWgt3_label0" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt3_label5 controlid:@"listview0_childWgt3_label5" bindfield:@"taskname"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface task_mainviewpsnController_listview0_cellHeight ()
{
	
}
@end
@implementation task_mainviewpsnController_listview0_cellHeight

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
case 3:
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
