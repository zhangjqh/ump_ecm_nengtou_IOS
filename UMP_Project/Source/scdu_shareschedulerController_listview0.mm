#import "scdu_shareschedulerController_listview0.h"
@interface scdu_shareschedulerController_listview0_tableViewCell ()
{
	
}
@end
@implementation scdu_shareschedulerController_listview0_tableViewCell
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
                          @"20",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"20",@"paddingRightUMP",
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




    _listview0_childWgt0_panel3 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel3.controlId = @"listview0_childWgt0_panel3";
    _listview0_childWgt0_panel3.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel3];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel3 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"25",@"marginRight",
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
                          @"25",@"width",
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
                          @"height":@"70",
                          @"width":@"12",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_head.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel3 addSubUMXView:_listview0_childWgt0_image0];

    _listview0_childWgt0_panel4 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel4.controlId = @"listview0_childWgt0_panel4";
    _listview0_childWgt0_panel4.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt0 addSubUMView:_listview0_childWgt0_panel4];
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




    [_listview0_childWgt0_panel4 setContainer:self];
    [_listview0_childWgt0_panel4 addEvent:@"onclick" actionName:@"toSchedulerDetail"];

    _listview0_childWgt0_panel12 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel12.controlId = @"listview0_childWgt0_panel12";
    _listview0_childWgt0_panel12.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMView:_listview0_childWgt0_panel12];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt0_panel12 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"9",@"marginTop",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"theme",
                          @"halign":@"left",
                          @"width":@"fill",
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
    [(UMLayoutView*)_listview0_childWgt0_panel12 addSubUMXView:_listview0_childWgt0_label0];

    _listview0_childWgt0_panel13 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel13.controlId = @"listview0_childWgt0_panel13";
    _listview0_childWgt0_panel13.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMView:_listview0_childWgt0_panel13];
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
                          @"18",@"height",
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




// --listview0_childWgt0_image4
    _listview0_childWgt0_image4 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"priorityimg",
                          @"id":@"listview0_childWgt0_image4",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMXView:_listview0_childWgt0_image4];

// --listview0_childWgt0_label1
    _listview0_childWgt0_label1 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"typename",
                          @"halign":@"center",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label1",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMXView:_listview0_childWgt0_label1];

// --listview0_childWgt0_label6
    _listview0_childWgt0_label6 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sharedby",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label6",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel13 addSubUMXView:_listview0_childWgt0_label6];

    _listview0_childWgt0_panel14 = [[UMLayoutView alloc] init];
    _listview0_childWgt0_panel14.controlId = @"listview0_childWgt0_panel14";
    _listview0_childWgt0_panel14.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt0_panel4 addSubUMView:_listview0_childWgt0_panel14];
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
                          @"NO",@"isHeightFill",
                          @"YES",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"0",@"width",
                          @"15",@"height",
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
                          @"bindfield":@"showbegintime",
                          @"halign":@"left",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label2",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel14 addSubUMXView:_listview0_childWgt0_label2];

// --listview0_childWgt0_label3
    _listview0_childWgt0_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label3",
                          @"txt_g":@"0.0",
                          @"margin-right":@"3",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0063}"}];
    [(UMLayoutView*)_listview0_childWgt0_panel14 addSubUMXView:_listview0_childWgt0_label3];

// --listview0_childWgt0_label4
    _listview0_childWgt0_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showendtime",
                          @"halign":@"right",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label4",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0_panel14 addSubUMXView:_listview0_childWgt0_label4];

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
                          @"20",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"20",@"paddingRightUMP",
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




    _listview0_childWgt1_panel5 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel5.controlId = @"listview0_childWgt1_panel5";
    _listview0_childWgt1_panel5.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel5];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel5 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"25",@"marginRight",
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
                          @"25",@"width",
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
                          @"height":@"fill",
                          @"width":@"12",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_body.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel5 addSubUMXView:_listview0_childWgt1_image1];

    _listview0_childWgt1_panel6 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel6.controlId = @"listview0_childWgt1_panel6";
    _listview0_childWgt1_panel6.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt1 addSubUMView:_listview0_childWgt1_panel6];
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




    [_listview0_childWgt1_panel6 setContainer:self];
    [_listview0_childWgt1_panel6 addEvent:@"onclick" actionName:@"toSchedulerDetail"];

    _listview0_childWgt1_panel15 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel15.controlId = @"listview0_childWgt1_panel15";
    _listview0_childWgt1_panel15.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel6 addSubUMView:_listview0_childWgt1_panel15];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel15 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"9",@"marginTop",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt1_label5
    _listview0_childWgt1_label5 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"theme",
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
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel15 addSubUMXView:_listview0_childWgt1_label5];

    _listview0_childWgt1_panel16 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel16.controlId = @"listview0_childWgt1_panel16";
    _listview0_childWgt1_panel16.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel6 addSubUMView:_listview0_childWgt1_panel16];
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
                          @"18",@"height",
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
                          @"bindfield":@"priorityimg",
                          @"id":@"listview0_childWgt1_image5",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel16 addSubUMXView:_listview0_childWgt1_image5];

// --listview0_childWgt1_label11
    _listview0_childWgt1_label11 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"typename",
                          @"halign":@"center",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label11",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel16 addSubUMXView:_listview0_childWgt1_label11];

// --listview0_childWgt1_label16
    _listview0_childWgt1_label16 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sharedby",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label16",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel16 addSubUMXView:_listview0_childWgt1_label16];

    _listview0_childWgt1_panel17 = [[UMLayoutView alloc] init];
    _listview0_childWgt1_panel17.controlId = @"listview0_childWgt1_panel17";
    _listview0_childWgt1_panel17.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt1_panel6 addSubUMView:_listview0_childWgt1_panel17];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt1_panel17 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"15",@"height",
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




// --listview0_childWgt1_label7
    _listview0_childWgt1_label7 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showbegintime",
                          @"halign":@"left",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label7",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel17 addSubUMXView:_listview0_childWgt1_label7];

// --listview0_childWgt1_label8
    _listview0_childWgt1_label8 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label8",
                          @"txt_g":@"0.0",
                          @"margin-right":@"3",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0063}"}];
    [(UMLayoutView*)_listview0_childWgt1_panel17 addSubUMXView:_listview0_childWgt1_label8];

// --listview0_childWgt1_label9
    _listview0_childWgt1_label9 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showendtime",
                          @"halign":@"right",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label9",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1_panel17 addSubUMXView:_listview0_childWgt1_label9];

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
                          @"20",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"20",@"paddingRightUMP",
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




    _listview0_childWgt2_panel7 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel7.controlId = @"listview0_childWgt2_panel7";
    _listview0_childWgt2_panel7.layoutType = Layout_vbox;
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
                          @"25",@"marginRight",
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
                          @"25",@"width",
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




// --listview0_childWgt2_image2
    _listview0_childWgt2_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image2",
                          @"height":@"70",
                          @"width":@"12",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_foot.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel7 addSubUMXView:_listview0_childWgt2_image2];

    _listview0_childWgt2_panel8 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel8.controlId = @"listview0_childWgt2_panel8";
    _listview0_childWgt2_panel8.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt2 addSubUMView:_listview0_childWgt2_panel8];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel8 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt2_panel8 setContainer:self];
    [_listview0_childWgt2_panel8 addEvent:@"onclick" actionName:@"toSchedulerDetail"];

    _listview0_childWgt2_panel18 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel18.controlId = @"listview0_childWgt2_panel18";
    _listview0_childWgt2_panel18.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel18];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel18 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"9",@"marginTop",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt2_label10
    _listview0_childWgt2_label10 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"theme",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label10",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel18 addSubUMXView:_listview0_childWgt2_label10];

    _listview0_childWgt2_panel19 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel19.controlId = @"listview0_childWgt2_panel19";
    _listview0_childWgt2_panel19.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel19];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel19 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"18",@"height",
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




// --listview0_childWgt2_image6
    _listview0_childWgt2_image6 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"priorityimg",
                          @"id":@"listview0_childWgt2_image6",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel19 addSubUMXView:_listview0_childWgt2_image6];

// --listview0_childWgt2_label20
    _listview0_childWgt2_label20 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"typename",
                          @"halign":@"center",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label20",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel19 addSubUMXView:_listview0_childWgt2_label20];

// --listview0_childWgt2_label21
    _listview0_childWgt2_label21 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sharedby",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label21",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel19 addSubUMXView:_listview0_childWgt2_label21];

    _listview0_childWgt2_panel20 = [[UMLayoutView alloc] init];
    _listview0_childWgt2_panel20.controlId = @"listview0_childWgt2_panel20";
    _listview0_childWgt2_panel20.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt2_panel8 addSubUMView:_listview0_childWgt2_panel20];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt2_panel20 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"15",@"height",
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




// --listview0_childWgt2_label12
    _listview0_childWgt2_label12 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showbegintime",
                          @"halign":@"left",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label12",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel20 addSubUMXView:_listview0_childWgt2_label12];

// --listview0_childWgt2_label13
    _listview0_childWgt2_label13 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label13",
                          @"txt_g":@"0.0",
                          @"margin-right":@"3",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0063}"}];
    [(UMLayoutView*)_listview0_childWgt2_panel20 addSubUMXView:_listview0_childWgt2_label13];

// --listview0_childWgt2_label14
    _listview0_childWgt2_label14 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showendtime",
                          @"halign":@"right",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label14",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2_panel20 addSubUMXView:_listview0_childWgt2_label14];

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
                          @"20",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"20",@"paddingRightUMP",
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




    _listview0_childWgt3_panel10 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel10.controlId = @"listview0_childWgt3_panel10";
    _listview0_childWgt3_panel10.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt3 addSubUMView:_listview0_childWgt3_panel10];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel10 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"0",@"marginTop",
                          @"25",@"marginRight",
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
                          @"25",@"width",
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




// --listview0_childWgt3_image3
    _listview0_childWgt3_image3 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt3_image3",
                          @"height":@"70",
                          @"width":@"12",
                          @"scaletype":@"fitcenter",
                          @"src":@"oasche_one.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel10 addSubUMXView:_listview0_childWgt3_image3];

    _listview0_childWgt3_panel11 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel11.controlId = @"listview0_childWgt3_panel11";
    _listview0_childWgt3_panel11.layoutType = Layout_vbox;
    [(UMLayoutView*)_listview0_childWgt3 addSubUMView:_listview0_childWgt3_panel11];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel11 info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_listview0_childWgt3_panel11 setContainer:self];
    [_listview0_childWgt3_panel11 addEvent:@"onclick" actionName:@"toSchedulerDetail"];

    _listview0_childWgt3_panel21 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel21.controlId = @"listview0_childWgt3_panel21";
    _listview0_childWgt3_panel21.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel11 addSubUMView:_listview0_childWgt3_panel21];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel21 info:[NSDictionary dictionaryWithObjectsAndKeys:
                          @"0",@"weightUMPView",
                          @"0",@"paddingLeftUMP",
                          @"0",@"paddingTopUMP",
                          @"0",@"paddingRightUMP",
                          @"0",@"paddingBottomUMP",
                          @"0",@"marginLeft",
                          @"9",@"marginTop",
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
                          @"0",@"border-radius",
                          nil] container:self];




// --listview0_childWgt3_label15
    _listview0_childWgt3_label15 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"theme",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label15",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel21 addSubUMXView:_listview0_childWgt3_label15];

    _listview0_childWgt3_panel22 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel22.controlId = @"listview0_childWgt3_panel22";
    _listview0_childWgt3_panel22.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel11 addSubUMView:_listview0_childWgt3_panel22];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel22 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"18",@"height",
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




// --listview0_childWgt3_image7
    _listview0_childWgt3_image7 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"priorityimg",
                          @"id":@"listview0_childWgt3_image7",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel22 addSubUMXView:_listview0_childWgt3_image7];

// --listview0_childWgt3_label22
    _listview0_childWgt3_label22 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"typename",
                          @"halign":@"center",
                          @"width":@"100",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label22",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel22 addSubUMXView:_listview0_childWgt3_label22];

// --listview0_childWgt3_label23
    _listview0_childWgt3_label23 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"sharedby",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label23",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel22 addSubUMXView:_listview0_childWgt3_label23];

    _listview0_childWgt3_panel23 = [[UMLayoutView alloc] init];
    _listview0_childWgt3_panel23.controlId = @"listview0_childWgt3_panel23";
    _listview0_childWgt3_panel23.layoutType = Layout_hbox;
    [(UMLayoutView*)_listview0_childWgt3_panel11 addSubUMView:_listview0_childWgt3_panel23];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listview0_childWgt3_panel23 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"15",@"height",
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




// --listview0_childWgt3_label17
    _listview0_childWgt3_label17 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showbegintime",
                          @"halign":@"left",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label17",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel23 addSubUMXView:_listview0_childWgt3_label17];

// --listview0_childWgt3_label18
    _listview0_childWgt3_label18 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"20",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label18",
                          @"txt_g":@"0.0",
                          @"margin-right":@"3",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"#{res.scdu_oascheduler_0063}"}];
    [(UMLayoutView*)_listview0_childWgt3_panel23 addSubUMXView:_listview0_childWgt3_label18];

// --listview0_childWgt3_label19
    _listview0_childWgt3_label19 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"showendtime",
                          @"halign":@"right",
                          @"widthwrap":@"80.0",
                          @"width":@"wrap",
                          @"font_size":@"13",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt3_label19",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"13",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt3_panel23 addSubUMXView:_listview0_childWgt3_label19];

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

	[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt0_image4 controlid:@"listview0_childWgt0_image4" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt0_label6 controlid:@"listview0_childWgt0_label6" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt0_label4 controlid:@"listview0_childWgt0_label4" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt1_label5 controlid:@"listview0_childWgt1_label5" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt1_image5 controlid:@"listview0_childWgt1_image5" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt1_label11 controlid:@"listview0_childWgt1_label11" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt1_label16 controlid:@"listview0_childWgt1_label16" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt1_label7 controlid:@"listview0_childWgt1_label7" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt2_label10 controlid:@"listview0_childWgt2_label10" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt2_image6 controlid:@"listview0_childWgt2_image6" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt2_label20 controlid:@"listview0_childWgt2_label20" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt2_label21 controlid:@"listview0_childWgt2_label21" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt2_label12 controlid:@"listview0_childWgt2_label12" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt2_label14 controlid:@"listview0_childWgt2_label14" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt3_label15 controlid:@"listview0_childWgt3_label15" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt3_image7 controlid:@"listview0_childWgt3_image7" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt3_label22 controlid:@"listview0_childWgt3_label22" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt3_label23 controlid:@"listview0_childWgt3_label23" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt3_label17 controlid:@"listview0_childWgt3_label17" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt3_label19 controlid:@"listview0_childWgt3_label19" bindfield:@"showendtime"];

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


@interface scdu_shareschedulerController_listview0_group ()
{
	
}
@end
@implementation scdu_shareschedulerController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt0_image4 controlid:@"listview0_childWgt0_image4" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt0_label1 controlid:@"listview0_childWgt0_label1" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt0_label6 controlid:@"listview0_childWgt0_label6" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt0_label2 controlid:@"listview0_childWgt0_label2" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt0_label4 controlid:@"listview0_childWgt0_label4" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt1_label5 controlid:@"listview0_childWgt1_label5" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt1_image5 controlid:@"listview0_childWgt1_image5" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt1_label11 controlid:@"listview0_childWgt1_label11" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt1_label16 controlid:@"listview0_childWgt1_label16" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt1_label7 controlid:@"listview0_childWgt1_label7" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt1_label9 controlid:@"listview0_childWgt1_label9" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt2_label10 controlid:@"listview0_childWgt2_label10" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt2_image6 controlid:@"listview0_childWgt2_image6" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt2_label20 controlid:@"listview0_childWgt2_label20" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt2_label21 controlid:@"listview0_childWgt2_label21" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt2_label12 controlid:@"listview0_childWgt2_label12" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt2_label14 controlid:@"listview0_childWgt2_label14" bindfield:@"showendtime"];
[self umcontrol:_listview0_childWgt3_label15 controlid:@"listview0_childWgt3_label15" bindfield:@"theme"];
[self umcontrol:_listview0_childWgt3_image7 controlid:@"listview0_childWgt3_image7" bindfield:@"priorityimg"];
[self umcontrol:_listview0_childWgt3_label22 controlid:@"listview0_childWgt3_label22" bindfield:@"typename"];
[self umcontrol:_listview0_childWgt3_label23 controlid:@"listview0_childWgt3_label23" bindfield:@"sharedby"];
[self umcontrol:_listview0_childWgt3_label17 controlid:@"listview0_childWgt3_label17" bindfield:@"showbegintime"];
[self umcontrol:_listview0_childWgt3_label19 controlid:@"listview0_childWgt3_label19" bindfield:@"showendtime"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface scdu_shareschedulerController_listview0_cellHeight ()
{
	
}
@end
@implementation scdu_shareschedulerController_listview0_cellHeight

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
