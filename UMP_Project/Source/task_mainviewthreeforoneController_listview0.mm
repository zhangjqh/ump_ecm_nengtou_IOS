#import "task_mainviewthreeforoneController_listview0.h"
@interface task_mainviewthreeforoneController_listview0_tableViewCell ()
{
	
}
@end
@implementation task_mainviewthreeforoneController_listview0_tableViewCell
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




    [_listview0_childWgt0 setContainer:self];
    [_listview0_childWgt0 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt0_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_pane231.controlId = @"listview0_childWgt0_pane231";
    _listview0_childWgt0_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt0_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel13.controlId = @"listview0_childWgt0_panel13";
    _listview0_childWgt0_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0_pane231 addSubUMView:_listview0_childWgt0_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt0_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel15.controlId = @"listview0_childWgt0_panel15";
    _listview0_childWgt0_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMView:_listview0_childWgt0_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt0_label8
    _listview0_childWgt0_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label8",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_label8];

// --listview0_childWgt0_image5
    _listview0_childWgt0_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image5",
                          @"height":@"fill",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_image5];

// --listview0_childWgt0_label9
    _listview0_childWgt0_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label9",
                          @"txt_g":@"0.32156864",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"margin-left":@"8",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_label9];

// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_label0];

// --listview0_childWgt0_label2
    _listview0_childWgt0_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt0_label2",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel15 addSubUMXView:_listview0_childWgt0_label2];

    _listview0_childWgt0_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel16.controlId = @"listview0_childWgt0_panel16";
    _listview0_childWgt0_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMView:_listview0_childWgt0_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt0_label7
    _listview0_childWgt0_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label7",
                          @"txt_g":@"0.0",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel16 addSubUMXView:_listview0_childWgt0_label7];

// --listview0_childWgt0_label1
    _listview0_childWgt0_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt0_panel16 addSubUMXView:_listview0_childWgt0_label1];

    _listview0_childWgt0_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel0.controlId = @"listview0_childWgt0_panel0";
    _listview0_childWgt0_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMView:_listview0_childWgt0_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt0_progressbar0
    _listview0_childWgt0_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt0_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel0 addSubUMXView:_listview0_childWgt0_progressbar0];

    _listview0_childWgt0_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel14.controlId = @"listview0_childWgt0_panel14";
    _listview0_childWgt0_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_pane231 addSubUMView:_listview0_childWgt0_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt0_image4
    _listview0_childWgt0_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel14 addSubUMXView:_listview0_childWgt0_image4];

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
    [_listview0_childWgt1 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt1_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_pane231.controlId = @"listview0_childWgt1_pane231";
    _listview0_childWgt1_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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




    _listview0_childWgt1_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel13.controlId = @"listview0_childWgt1_panel13";
    _listview0_childWgt1_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1_pane231 addSubUMView:_listview0_childWgt1_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt1_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel15.controlId = @"listview0_childWgt1_panel15";
    _listview0_childWgt1_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMView:_listview0_childWgt1_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt1_label8
    _listview0_childWgt1_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label8",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel15 addSubUMXView:_listview0_childWgt1_label8];

// --listview0_childWgt1_label9
    _listview0_childWgt1_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label9",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel15 addSubUMXView:_listview0_childWgt1_label9];

// --listview0_childWgt1_label0
    _listview0_childWgt1_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel15 addSubUMXView:_listview0_childWgt1_label0];

// --listview0_childWgt1_label2
    _listview0_childWgt1_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt1_label2",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel15 addSubUMXView:_listview0_childWgt1_label2];

    _listview0_childWgt1_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel16.controlId = @"listview0_childWgt1_panel16";
    _listview0_childWgt1_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMView:_listview0_childWgt1_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt1_label7
    _listview0_childWgt1_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label7",
                          @"txt_g":@"0.0",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel16 addSubUMXView:_listview0_childWgt1_label7];

// --listview0_childWgt1_label1
    _listview0_childWgt1_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt1_panel16 addSubUMXView:_listview0_childWgt1_label1];

    _listview0_childWgt1_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel0.controlId = @"listview0_childWgt1_panel0";
    _listview0_childWgt1_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel13 addSubUMView:_listview0_childWgt1_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt1_progressbar0
    _listview0_childWgt1_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt1_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel0 addSubUMXView:_listview0_childWgt1_progressbar0];

    _listview0_childWgt1_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel14.controlId = @"listview0_childWgt1_panel14";
    _listview0_childWgt1_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_pane231 addSubUMView:_listview0_childWgt1_panel14];
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




// --listview0_childWgt1_image4
    _listview0_childWgt1_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt1_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel14 addSubUMXView:_listview0_childWgt1_image4];

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
    [_listview0_childWgt2 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt2_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_pane231.controlId = @"listview0_childWgt2_pane231";
    _listview0_childWgt2_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt2_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel13.controlId = @"listview0_childWgt2_panel13";
    _listview0_childWgt2_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt2_pane231 addSubUMView:_listview0_childWgt2_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt2_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel15.controlId = @"listview0_childWgt2_panel15";
    _listview0_childWgt2_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel13 addSubUMView:_listview0_childWgt2_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt2_label8
    _listview0_childWgt2_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label8",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel15 addSubUMXView:_listview0_childWgt2_label8];

// --listview0_childWgt2_image5
    _listview0_childWgt2_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image5",
                          @"height":@"fill",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important_gray.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel15 addSubUMXView:_listview0_childWgt2_image5];

// --listview0_childWgt2_label9
    _listview0_childWgt2_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label9",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"margin-left":@"8",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel15 addSubUMXView:_listview0_childWgt2_label9];

// --listview0_childWgt2_label0
    _listview0_childWgt2_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label0",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel15 addSubUMXView:_listview0_childWgt2_label0];

// --listview0_childWgt2_label2
    _listview0_childWgt2_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label2",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel15 addSubUMXView:_listview0_childWgt2_label2];

    _listview0_childWgt2_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel16.controlId = @"listview0_childWgt2_panel16";
    _listview0_childWgt2_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel13 addSubUMView:_listview0_childWgt2_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt2_label7
    _listview0_childWgt2_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label7",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel16 addSubUMXView:_listview0_childWgt2_label7];

// --listview0_childWgt2_label1
    _listview0_childWgt2_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt2_label1",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt2_panel16 addSubUMXView:_listview0_childWgt2_label1];

    _listview0_childWgt2_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel0.controlId = @"listview0_childWgt2_panel0";
    _listview0_childWgt2_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel13 addSubUMView:_listview0_childWgt2_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt2_progressbar0
    _listview0_childWgt2_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt2_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel0 addSubUMXView:_listview0_childWgt2_progressbar0];

    _listview0_childWgt2_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel14.controlId = @"listview0_childWgt2_panel14";
    _listview0_childWgt2_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_pane231 addSubUMView:_listview0_childWgt2_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt2_image4
    _listview0_childWgt2_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel14 addSubUMXView:_listview0_childWgt2_image4];

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
    [_listview0_childWgt3 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt3_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_pane231.controlId = @"listview0_childWgt3_pane231";
    _listview0_childWgt3_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3 addSubUMView:_listview0_childWgt3_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt3_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel13.controlId = @"listview0_childWgt3_panel13";
    _listview0_childWgt3_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt3_pane231 addSubUMView:_listview0_childWgt3_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt3_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel15.controlId = @"listview0_childWgt3_panel15";
    _listview0_childWgt3_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel13 addSubUMView:_listview0_childWgt3_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt3_label8
    _listview0_childWgt3_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label8",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel15 addSubUMXView:_listview0_childWgt3_label8];

// --listview0_childWgt3_label9
    _listview0_childWgt3_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label9",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel15 addSubUMXView:_listview0_childWgt3_label9];

// --listview0_childWgt3_label0
    _listview0_childWgt3_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label0",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel15 addSubUMXView:_listview0_childWgt3_label0];

// --listview0_childWgt3_label2
    _listview0_childWgt3_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label2",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel15 addSubUMXView:_listview0_childWgt3_label2];

    _listview0_childWgt3_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel16.controlId = @"listview0_childWgt3_panel16";
    _listview0_childWgt3_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel13 addSubUMView:_listview0_childWgt3_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt3_label7
    _listview0_childWgt3_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label7",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel16 addSubUMXView:_listview0_childWgt3_label7];

// --listview0_childWgt3_label1
    _listview0_childWgt3_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt3_label1",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt3_panel16 addSubUMXView:_listview0_childWgt3_label1];

    _listview0_childWgt3_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel0.controlId = @"listview0_childWgt3_panel0";
    _listview0_childWgt3_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel13 addSubUMView:_listview0_childWgt3_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt3_progressbar0
    _listview0_childWgt3_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt3_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"background":@"#c8c7cc",
                          @"width":@"fill",
                          @"progresscolor":@"#0852a5",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel0 addSubUMXView:_listview0_childWgt3_progressbar0];

    _listview0_childWgt3_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel14.controlId = @"listview0_childWgt3_panel14";
    _listview0_childWgt3_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_pane231 addSubUMView:_listview0_childWgt3_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt3_image4
    _listview0_childWgt3_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt3_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel14 addSubUMXView:_listview0_childWgt3_image4];

[self.contentView addSubview:_listview0_childWgt3.content];
self.cellHeight = @"70";
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




    [_listview0_childWgt4 setContainer:self];
    [_listview0_childWgt4 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt4_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_pane231.controlId = @"listview0_childWgt4_pane231";
    _listview0_childWgt4_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4 addSubUMView:_listview0_childWgt4_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt4_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel13.controlId = @"listview0_childWgt4_panel13";
    _listview0_childWgt4_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt4_pane231 addSubUMView:_listview0_childWgt4_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt4_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel15.controlId = @"listview0_childWgt4_panel15";
    _listview0_childWgt4_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_panel13 addSubUMView:_listview0_childWgt4_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt4_label8
    _listview0_childWgt4_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt4_label8",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label8];

// --listview0_childWgt4_label3
    _listview0_childWgt4_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt4_label3",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label3];

// --listview0_childWgt4_label6
    _listview0_childWgt4_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt4_label6",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label6];

// --listview0_childWgt4_image5
    _listview0_childWgt4_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt4_image5",
                          @"height":@"fill",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_image5];

// --listview0_childWgt4_label9
    _listview0_childWgt4_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt4_label9",
                          @"txt_g":@"0.32156864",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"margin-left":@"8",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label9];

// --listview0_childWgt4_label0
    _listview0_childWgt4_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt4_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label0];

// --listview0_childWgt4_label2
    _listview0_childWgt4_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt4_label2",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel15 addSubUMXView:_listview0_childWgt4_label2];

    _listview0_childWgt4_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel16.controlId = @"listview0_childWgt4_panel16";
    _listview0_childWgt4_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_panel13 addSubUMView:_listview0_childWgt4_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt4_label7
    _listview0_childWgt4_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt4_label7",
                          @"txt_g":@"0.0",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt4_panel16 addSubUMXView:_listview0_childWgt4_label7];

// --listview0_childWgt4_label1
    _listview0_childWgt4_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt4_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt4_panel16 addSubUMXView:_listview0_childWgt4_label1];

    _listview0_childWgt4_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel0.controlId = @"listview0_childWgt4_panel0";
    _listview0_childWgt4_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_panel13 addSubUMView:_listview0_childWgt4_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt4_progressbar0
    _listview0_childWgt4_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt4_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel0 addSubUMXView:_listview0_childWgt4_progressbar0];

    _listview0_childWgt4_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt4_panel14.controlId = @"listview0_childWgt4_panel14";
    _listview0_childWgt4_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt4_pane231 addSubUMView:_listview0_childWgt4_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt4_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt4_image4
    _listview0_childWgt4_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt4_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt4_panel14 addSubUMXView:_listview0_childWgt4_image4];

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




    [_listview0_childWgt5 setContainer:self];
    [_listview0_childWgt5 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt5_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_pane231.controlId = @"listview0_childWgt5_pane231";
    _listview0_childWgt5_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5 addSubUMView:_listview0_childWgt5_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt5_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel13.controlId = @"listview0_childWgt5_panel13";
    _listview0_childWgt5_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt5_pane231 addSubUMView:_listview0_childWgt5_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt5_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel15.controlId = @"listview0_childWgt5_panel15";
    _listview0_childWgt5_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_panel13 addSubUMView:_listview0_childWgt5_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt5_label8
    _listview0_childWgt5_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt5_label8",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label8];

// --listview0_childWgt5_label3
    _listview0_childWgt5_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.03137255",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt5_label3",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label3];

// --listview0_childWgt5_label6
    _listview0_childWgt5_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt5_label6",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label6];

// --listview0_childWgt5_label9
    _listview0_childWgt5_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt5_label9",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label9];

// --listview0_childWgt5_label0
    _listview0_childWgt5_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt5_label0",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"color":@"#0852A5",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label0];

// --listview0_childWgt5_label2
    _listview0_childWgt5_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.03137255",
                          @"id":@"listview0_childWgt5_label2",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852A5",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel15 addSubUMXView:_listview0_childWgt5_label2];

    _listview0_childWgt5_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel16.controlId = @"listview0_childWgt5_panel16";
    _listview0_childWgt5_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_panel13 addSubUMView:_listview0_childWgt5_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt5_label7
    _listview0_childWgt5_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt5_label7",
                          @"txt_g":@"0.0",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt5_panel16 addSubUMXView:_listview0_childWgt5_label7];

// --listview0_childWgt5_label1
    _listview0_childWgt5_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt5_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt5_panel16 addSubUMXView:_listview0_childWgt5_label1];

    _listview0_childWgt5_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel0.controlId = @"listview0_childWgt5_panel0";
    _listview0_childWgt5_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_panel13 addSubUMView:_listview0_childWgt5_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt5_progressbar0
    _listview0_childWgt5_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt5_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel0 addSubUMXView:_listview0_childWgt5_progressbar0];

    _listview0_childWgt5_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt5_panel14.controlId = @"listview0_childWgt5_panel14";
    _listview0_childWgt5_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt5_pane231 addSubUMView:_listview0_childWgt5_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt5_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt5_image4
    _listview0_childWgt5_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt5_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt5_panel14 addSubUMXView:_listview0_childWgt5_image4];

[self.contentView addSubview:_listview0_childWgt5.content];
self.cellHeight = @"70";
break;
}
case 6:
{
    _listview0_childWgt6 = [[UMLayoutView alloc] init];
    _listview0_childWgt6.controlId = @"listview0_childWgt6";
    _listview0_childWgt6.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt6 setContainer:self];
    [_listview0_childWgt6 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt6_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_pane231.controlId = @"listview0_childWgt6_pane231";
    _listview0_childWgt6_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt6 addSubUMView:_listview0_childWgt6_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt6_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_panel13.controlId = @"listview0_childWgt6_panel13";
    _listview0_childWgt6_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt6_pane231 addSubUMView:_listview0_childWgt6_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt6_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_panel15.controlId = @"listview0_childWgt6_panel15";
    _listview0_childWgt6_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt6_panel13 addSubUMView:_listview0_childWgt6_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt6_label8
    _listview0_childWgt6_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label8",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label8];

// --listview0_childWgt6_label3
    _listview0_childWgt6_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.78431374",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt6_label3",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label3];

// --listview0_childWgt6_label6
    _listview0_childWgt6_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label6",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label6];

// --listview0_childWgt6_image5
    _listview0_childWgt6_image5 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt6_image5",
                          @"height":@"fill",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oatask_important_gray.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_image5];

// --listview0_childWgt6_label9
    _listview0_childWgt6_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label9",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"margin-left":@"8",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label9];

// --listview0_childWgt6_label0
    _listview0_childWgt6_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label0",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label0];

// --listview0_childWgt6_label2
    _listview0_childWgt6_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label2",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt6_panel15 addSubUMXView:_listview0_childWgt6_label2];

    _listview0_childWgt6_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_panel16.controlId = @"listview0_childWgt6_panel16";
    _listview0_childWgt6_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt6_panel13 addSubUMView:_listview0_childWgt6_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt6_label7
    _listview0_childWgt6_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label7",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt6_panel16 addSubUMXView:_listview0_childWgt6_label7];

// --listview0_childWgt6_label1
    _listview0_childWgt6_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt6_label1",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt6_panel16 addSubUMXView:_listview0_childWgt6_label1];

    _listview0_childWgt6_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_panel0.controlId = @"listview0_childWgt6_panel0";
    _listview0_childWgt6_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt6_panel13 addSubUMView:_listview0_childWgt6_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt6_progressbar0
    _listview0_childWgt6_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt6_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt6_panel0 addSubUMXView:_listview0_childWgt6_progressbar0];

    _listview0_childWgt6_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt6_panel14.controlId = @"listview0_childWgt6_panel14";
    _listview0_childWgt6_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt6_pane231 addSubUMView:_listview0_childWgt6_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt6_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt6_image4
    _listview0_childWgt6_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt6_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt6_panel14 addSubUMXView:_listview0_childWgt6_image4];

[self.contentView addSubview:_listview0_childWgt6.content];
self.cellHeight = @"70";
break;
}
case 7:
{
    _listview0_childWgt7 = [[UMLayoutView alloc] init];
    _listview0_childWgt7.controlId = @"listview0_childWgt7";
    _listview0_childWgt7.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt7 setContainer:self];
    [_listview0_childWgt7 addEvent:@"onclick" actionName:@"showItemClick"];

    _listview0_childWgt7_pane231 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_pane231.controlId = @"listview0_childWgt7_pane231";
    _listview0_childWgt7_pane231.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt7 addSubUMView:_listview0_childWgt7_pane231];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_pane231 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"15",@"paddingRightUMP",
                          @"1",@"paddingBottomUMP",
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
                          [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1],@"backgroundColor",
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




    _listview0_childWgt7_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_panel13.controlId = @"listview0_childWgt7_panel13";
    _listview0_childWgt7_panel13.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt7_pane231 addSubUMView:_listview0_childWgt7_panel13];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_panel13 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"1",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"8",@"paddingTopUMP",
                          @"8",@"paddingRightUMP",
                          @"6",@"paddingBottomUMP",
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




    _listview0_childWgt7_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_panel15.controlId = @"listview0_childWgt7_panel15";
    _listview0_childWgt7_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt7_panel13 addSubUMView:_listview0_childWgt7_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"0",@"marginRight",
                          @"3",@"marginBottom",
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




// --listview0_childWgt7_label8
    _listview0_childWgt7_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"startdate",
                          @"halign":@"left",
                          @"width":@"50",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label8",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label8];

// --listview0_childWgt7_label3
    _listview0_childWgt7_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"txt_r":@"0.78431374",
                          @"font_size":@"13",
                          @"id":@"listview0_childWgt7_label3",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"#{res.task_to}"}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label3];

// --listview0_childWgt7_label6
    _listview0_childWgt7_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"enddate",
                          @"halign":@"center",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label6",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label6];

// --listview0_childWgt7_label9
    _listview0_childWgt7_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskstate",
                          @"halign":@"left",
                          @"width":@"60",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label9",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label9];

// --listview0_childWgt7_label0
    _listview0_childWgt7_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mewtask",
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label0",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"color":@"#c8c7cc",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label0];

// --listview0_childWgt7_label2
    _listview0_childWgt7_label2 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"urge",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"13",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label2",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt7_panel15 addSubUMXView:_listview0_childWgt7_label2];

    _listview0_childWgt7_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_panel16.controlId = @"listview0_childWgt7_panel16";
    _listview0_childWgt7_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt7_panel13 addSubUMView:_listview0_childWgt7_panel16];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_panel16 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
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




// --listview0_childWgt7_label7
    _listview0_childWgt7_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"taskname",
                          @"halign":@"left",
                          @"width":@"200",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label7",
                          @"txt_g":@"0.78039217",
                          @"margin-right":@"4",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt7_panel16 addSubUMXView:_listview0_childWgt7_label7];

// --listview0_childWgt7_label1
    _listview0_childWgt7_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"charger",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.78431374",
                          @"id":@"listview0_childWgt7_label1",
                          @"txt_g":@"0.78039217",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#c8c7cc",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.8",
                          @"valign":@"center",@"value":@"label"}];
    [(UMLayoutView*)_listview0_childWgt7_panel16 addSubUMXView:_listview0_childWgt7_label1];

    _listview0_childWgt7_panel0 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_panel0.controlId = @"listview0_childWgt7_panel0";
    _listview0_childWgt7_panel0.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt7_panel13 addSubUMView:_listview0_childWgt7_panel0];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_panel0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"10",@"height",
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




// --listview0_childWgt7_progressbar0
    _listview0_childWgt7_progressbar0 = [UMControl creatControl:@"UMXProgressBar" container:self  params:@{
                          @"bindfield":@"taskshedue",
                          @"id":@"listview0_childWgt7_progressbar0",
                          @"progress":@"0",
                          @"height":@"10",
                          @"max":@"100",
                          @"progresscolor":@"#0852a5",
                          @"width":@"fill",
                          @"background":@"#c8c7cc",
                          @"bg_r":@"0.78431374",
                          @"bg_b":@"0.8",
                          @"bg_g":@"0.78039217",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt7_panel0 addSubUMXView:_listview0_childWgt7_progressbar0];

    _listview0_childWgt7_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt7_panel14.controlId = @"listview0_childWgt7_panel14";
    _listview0_childWgt7_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt7_pane231 addSubUMView:_listview0_childWgt7_panel14];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt7_panel14 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"8",@"width",
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




// --listview0_childWgt7_image4
    _listview0_childWgt7_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt7_image4",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt7_panel14 addSubUMXView:_listview0_childWgt7_image4];

[self.contentView addSubview:_listview0_childWgt7.content];
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

	[self umcontrol:_listview0_childWgt0_label8 controlid:@"listview0_childWgt0_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt0_label9 controlid:@"listview0_childWgt0_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt0_label7 controlid:@"listview0_childWgt0_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt0_progressbar0 controlid:@"listview0_childWgt0_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt1_label8 controlid:@"listview0_childWgt1_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt1_label2 controlid:@"listview0_childWgt1_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt1_label7 controlid:@"listview0_childWgt1_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt1_label1 controlid:@"listview0_childWgt1_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt1_progressbar0 controlid:@"listview0_childWgt1_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt2_label8 controlid:@"listview0_childWgt2_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt2_label9 controlid:@"listview0_childWgt2_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt2_label0 controlid:@"listview0_childWgt2_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt2_label2 controlid:@"listview0_childWgt2_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt2_label7 controlid:@"listview0_childWgt2_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt2_label1 controlid:@"listview0_childWgt2_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt2_progressbar0 controlid:@"listview0_childWgt2_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt3_label8 controlid:@"listview0_childWgt3_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt3_label9 controlid:@"listview0_childWgt3_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt3_label0 controlid:@"listview0_childWgt3_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt3_label2 controlid:@"listview0_childWgt3_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt3_label7 controlid:@"listview0_childWgt3_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt3_label1 controlid:@"listview0_childWgt3_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt3_progressbar0 controlid:@"listview0_childWgt3_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt4_label8 controlid:@"listview0_childWgt4_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt4_label6 controlid:@"listview0_childWgt4_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt4_label9 controlid:@"listview0_childWgt4_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt4_label0 controlid:@"listview0_childWgt4_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt4_label2 controlid:@"listview0_childWgt4_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt4_label7 controlid:@"listview0_childWgt4_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt4_label1 controlid:@"listview0_childWgt4_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt4_progressbar0 controlid:@"listview0_childWgt4_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt5_label8 controlid:@"listview0_childWgt5_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt5_label6 controlid:@"listview0_childWgt5_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt5_label9 controlid:@"listview0_childWgt5_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt5_label0 controlid:@"listview0_childWgt5_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt5_label2 controlid:@"listview0_childWgt5_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt5_label7 controlid:@"listview0_childWgt5_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt5_label1 controlid:@"listview0_childWgt5_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt5_progressbar0 controlid:@"listview0_childWgt5_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt6_label8 controlid:@"listview0_childWgt6_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt6_label6 controlid:@"listview0_childWgt6_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt6_label9 controlid:@"listview0_childWgt6_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt6_label0 controlid:@"listview0_childWgt6_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt6_label2 controlid:@"listview0_childWgt6_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt6_label7 controlid:@"listview0_childWgt6_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt6_label1 controlid:@"listview0_childWgt6_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt6_progressbar0 controlid:@"listview0_childWgt6_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt7_label8 controlid:@"listview0_childWgt7_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt7_label6 controlid:@"listview0_childWgt7_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt7_label9 controlid:@"listview0_childWgt7_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt7_label0 controlid:@"listview0_childWgt7_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt7_label2 controlid:@"listview0_childWgt7_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt7_label7 controlid:@"listview0_childWgt7_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt7_label1 controlid:@"listview0_childWgt7_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt7_progressbar0 controlid:@"listview0_childWgt7_progressbar0" bindfield:@"taskshedue"];

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
case 6:
{
[self setWgtFrame:_listview0_childWgt6];
[self bindAll:_ctx];
[_listview0_childWgt6 adjustSizeForParentest:self];
break;
}
case 7:
{
[self setWgtFrame:_listview0_childWgt7];
[self bindAll:_ctx];
[_listview0_childWgt7 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface task_mainviewthreeforoneController_listview0_group ()
{
	
}
@end
@implementation task_mainviewthreeforoneController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label8 controlid:@"listview0_childWgt0_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt0_label9 controlid:@"listview0_childWgt0_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt0_label7 controlid:@"listview0_childWgt0_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt0_progressbar0 controlid:@"listview0_childWgt0_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt1_label8 controlid:@"listview0_childWgt1_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt1_label0 controlid:@"listview0_childWgt1_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt1_label2 controlid:@"listview0_childWgt1_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt1_label7 controlid:@"listview0_childWgt1_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt1_label1 controlid:@"listview0_childWgt1_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt1_progressbar0 controlid:@"listview0_childWgt1_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt2_label8 controlid:@"listview0_childWgt2_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt2_label9 controlid:@"listview0_childWgt2_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt2_label0 controlid:@"listview0_childWgt2_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt2_label2 controlid:@"listview0_childWgt2_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt2_label7 controlid:@"listview0_childWgt2_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt2_label1 controlid:@"listview0_childWgt2_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt2_progressbar0 controlid:@"listview0_childWgt2_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt3_label8 controlid:@"listview0_childWgt3_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt3_label9 controlid:@"listview0_childWgt3_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt3_label0 controlid:@"listview0_childWgt3_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt3_label2 controlid:@"listview0_childWgt3_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt3_label7 controlid:@"listview0_childWgt3_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt3_label1 controlid:@"listview0_childWgt3_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt3_progressbar0 controlid:@"listview0_childWgt3_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt4_label8 controlid:@"listview0_childWgt4_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt4_label6 controlid:@"listview0_childWgt4_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt4_label9 controlid:@"listview0_childWgt4_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt4_label0 controlid:@"listview0_childWgt4_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt4_label2 controlid:@"listview0_childWgt4_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt4_label7 controlid:@"listview0_childWgt4_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt4_label1 controlid:@"listview0_childWgt4_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt4_progressbar0 controlid:@"listview0_childWgt4_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt5_label8 controlid:@"listview0_childWgt5_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt5_label6 controlid:@"listview0_childWgt5_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt5_label9 controlid:@"listview0_childWgt5_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt5_label0 controlid:@"listview0_childWgt5_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt5_label2 controlid:@"listview0_childWgt5_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt5_label7 controlid:@"listview0_childWgt5_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt5_label1 controlid:@"listview0_childWgt5_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt5_progressbar0 controlid:@"listview0_childWgt5_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt6_label8 controlid:@"listview0_childWgt6_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt6_label6 controlid:@"listview0_childWgt6_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt6_label9 controlid:@"listview0_childWgt6_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt6_label0 controlid:@"listview0_childWgt6_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt6_label2 controlid:@"listview0_childWgt6_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt6_label7 controlid:@"listview0_childWgt6_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt6_label1 controlid:@"listview0_childWgt6_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt6_progressbar0 controlid:@"listview0_childWgt6_progressbar0" bindfield:@"taskshedue"];
[self umcontrol:_listview0_childWgt7_label8 controlid:@"listview0_childWgt7_label8" bindfield:@"startdate"];
[self umcontrol:_listview0_childWgt7_label6 controlid:@"listview0_childWgt7_label6" bindfield:@"enddate"];
[self umcontrol:_listview0_childWgt7_label9 controlid:@"listview0_childWgt7_label9" bindfield:@"taskstate"];
[self umcontrol:_listview0_childWgt7_label0 controlid:@"listview0_childWgt7_label0" bindfield:@"mewtask"];
[self umcontrol:_listview0_childWgt7_label2 controlid:@"listview0_childWgt7_label2" bindfield:@"urge"];
[self umcontrol:_listview0_childWgt7_label7 controlid:@"listview0_childWgt7_label7" bindfield:@"taskname"];
[self umcontrol:_listview0_childWgt7_label1 controlid:@"listview0_childWgt7_label1" bindfield:@"charger"];
[self umcontrol:_listview0_childWgt7_progressbar0 controlid:@"listview0_childWgt7_progressbar0" bindfield:@"taskshedue"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface task_mainviewthreeforoneController_listview0_cellHeight ()
{
	
}
@end
@implementation task_mainviewthreeforoneController_listview0_cellHeight

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
case 4:
self.cellHeight = @"70";
break;
case 5:
self.cellHeight = @"70";
break;
case 6:
self.cellHeight = @"70";
break;
case 7:
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
