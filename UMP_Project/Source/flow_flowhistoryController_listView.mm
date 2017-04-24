#import "flow_flowhistoryController_listView.h"
@interface flow_flowhistoryController_listView_tableViewCell ()
{
	
}
@end
@implementation flow_flowhistoryController_listView_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 0:
{
    _listView_childWgt0 = [[UMLayoutView alloc] init];
    _listView_childWgt0.controlId = @"listView_childWgt0";
    _listView_childWgt0.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"list_split_70.png",@"backgroundImagePath",
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




    [_listView_childWgt0 setContainer:self];
    [_listView_childWgt0 addEvent:@"onclick" actionName:@"onTransactorClick"];

    _listView_childWgt0_nrowLeftPanel = [[UMLayoutView alloc] init];
    _listView_childWgt0_nrowLeftPanel.controlId = @"listView_childWgt0_nrowLeftPanel";
    _listView_childWgt0_nrowLeftPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_listView_childWgt0 addSubUMView:_listView_childWgt0_nrowLeftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0_nrowLeftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listView_childWgt0_nrowUpPanel = [[UMLayoutView alloc] init];
    _listView_childWgt0_nrowUpPanel.controlId = @"listView_childWgt0_nrowUpPanel";
    _listView_childWgt0_nrowUpPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt0_nrowLeftPanel addSubUMView:_listView_childWgt0_nrowUpPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0_nrowUpPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listView_childWgt0_nrowName
    _listView_childWgt0_nrowName = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_nrowName",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"name"}];
    [(UMLayoutView*)_listView_childWgt0_nrowUpPanel addSubUMXView:_listView_childWgt0_nrowName];

// --listView_childWgt0_nrowAction
    _listView_childWgt0_nrowAction = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"action",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.03137255",
                          @"id":@"listView_childWgt0_nrowAction",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"14",
                          @"onclick":@"",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"action"}];
    [(UMLayoutView*)_listView_childWgt0_nrowUpPanel addSubUMXView:_listView_childWgt0_nrowAction];

    _listView_childWgt0_nrowDownPanel = [[UMLayoutView alloc] init];
    _listView_childWgt0_nrowDownPanel.controlId = @"listView_childWgt0_nrowDownPanel";
    _listView_childWgt0_nrowDownPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt0_nrowLeftPanel addSubUMView:_listView_childWgt0_nrowDownPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0_nrowDownPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listView_childWgt0_nrowCommit
    _listView_childWgt0_nrowCommit = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"commit",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_nrowCommit",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"showTransCommit",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"commit"}];
    [(UMLayoutView*)_listView_childWgt0_nrowDownPanel addSubUMXView:_listView_childWgt0_nrowCommit];

// --listView_childWgt0_nrowDate
    _listView_childWgt0_nrowDate = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"date",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_nrowDate",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"date"}];
    [(UMLayoutView*)_listView_childWgt0_nrowDownPanel addSubUMXView:_listView_childWgt0_nrowDate];

// --listView_childWgt0_nrowSpaceLabel
    _listView_childWgt0_nrowSpaceLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_nrowSpaceLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"color":@"#8e8e93",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_nrowSpaceLabel];

// --listView_childWgt0_nrightImg
    _listView_childWgt0_nrightImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt0_nrightImg",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_nrightImg];

[self.contentView addSubview:_listView_childWgt0.content];
self.cellHeight = @"70";
break;
}
case 1:
{
    _listView_childWgt1 = [[UMLayoutView alloc] init];
    _listView_childWgt1.controlId = @"listView_childWgt1";
    _listView_childWgt1.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1 info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"list_split_70.png",@"backgroundImagePath",
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




    [_listView_childWgt1 setContainer:self];
    [_listView_childWgt1 addEvent:@"onclick" actionName:@"onTransactorClick"];

    _listView_childWgt1_hrowLeftPanel = [[UMLayoutView alloc] init];
    _listView_childWgt1_hrowLeftPanel.controlId = @"listView_childWgt1_hrowLeftPanel";
    _listView_childWgt1_hrowLeftPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_listView_childWgt1 addSubUMView:_listView_childWgt1_hrowLeftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1_hrowLeftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    _listView_childWgt1_hrowUpPanel = [[UMLayoutView alloc] init];
    _listView_childWgt1_hrowUpPanel.controlId = @"listView_childWgt1_hrowUpPanel";
    _listView_childWgt1_hrowUpPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt1_hrowLeftPanel addSubUMView:_listView_childWgt1_hrowUpPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1_hrowUpPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listView_childWgt1_hrowName
    _listView_childWgt1_hrowName = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_hrowName",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"name"}];
    [(UMLayoutView*)_listView_childWgt1_hrowUpPanel addSubUMXView:_listView_childWgt1_hrowName];

// --listView_childWgt1_hrowAction
    _listView_childWgt1_hrowAction = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"action",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.03137255",
                          @"id":@"listView_childWgt1_hrowAction",
                          @"txt_g":@"0.32156864",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#0852a5",
                          @"font-size":@"14",
                          @"onclick":@"",
                          @"font-family":@"default",
                          @"txt_b":@"0.64705884",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"action"}];
    [(UMLayoutView*)_listView_childWgt1_hrowUpPanel addSubUMXView:_listView_childWgt1_hrowAction];

    _listView_childWgt1_hrowDownPanel = [[UMLayoutView alloc] init];
    _listView_childWgt1_hrowDownPanel.controlId = @"listView_childWgt1_hrowDownPanel";
    _listView_childWgt1_hrowDownPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt1_hrowLeftPanel addSubUMView:_listView_childWgt1_hrowDownPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1_hrowDownPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --listView_childWgt1_commitImg
    _listView_childWgt1_commitImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt1_commitImg",
                          @"height":@"20",
                          @"width":@"20",
                          @"onclick":@"showHandWrite",
                          @"scaletype":@"fitcenter",
                          @"src":@"oa_freeflow_commit.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1_hrowDownPanel addSubUMXView:_listView_childWgt1_commitImg];

// --listView_childWgt1_itemSpaceLabel
    _listView_childWgt1_itemSpaceLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"5",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_itemSpaceLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1_hrowDownPanel addSubUMXView:_listView_childWgt1_itemSpaceLabel];

// --listView_childWgt1_hrowCommit
    _listView_childWgt1_hrowCommit = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"commit",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_hrowCommit",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"onclick":@"showTransCommit",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@"commit"}];
    [(UMLayoutView*)_listView_childWgt1_hrowDownPanel addSubUMXView:_listView_childWgt1_hrowCommit];

// --listView_childWgt1_hrowDate
    _listView_childWgt1_hrowDate = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"date",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt1_hrowDate",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"date"}];
    [(UMLayoutView*)_listView_childWgt1_hrowDownPanel addSubUMXView:_listView_childWgt1_hrowDate];

// --listView_childWgt1_hrowSpaceLabel
    _listView_childWgt1_hrowSpaceLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"font_size":@"16",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt1_hrowSpaceLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"color":@"#8e8e93",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_hrowSpaceLabel];

// --listView_childWgt1_hrightImg
    _listView_childWgt1_hrightImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt1_hrightImg",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_hrightImg];

[self.contentView addSubview:_listView_childWgt1.content];
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

	[self umcontrol:_listView_childWgt0_nrowName controlid:@"listView_childWgt0_nrowName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_nrowAction controlid:@"listView_childWgt0_nrowAction" bindfield:@"action"];
[self umcontrol:_listView_childWgt0_nrowCommit controlid:@"listView_childWgt0_nrowCommit" bindfield:@"commit"];
[self umcontrol:_listView_childWgt0_nrowDate controlid:@"listView_childWgt0_nrowDate" bindfield:@"date"];
[self umcontrol:_listView_childWgt1_hrowName controlid:@"listView_childWgt1_hrowName" bindfield:@"name"];
[self umcontrol:_listView_childWgt1_hrowAction controlid:@"listView_childWgt1_hrowAction" bindfield:@"action"];
[self umcontrol:_listView_childWgt1_hrowCommit controlid:@"listView_childWgt1_hrowCommit" bindfield:@"commit"];
[self umcontrol:_listView_childWgt1_hrowDate controlid:@"listView_childWgt1_hrowDate" bindfield:@"date"];

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
[self setWgtFrame:_listView_childWgt0];
[self bindAll:_ctx];
[_listView_childWgt0 adjustSizeForParentest:self];
break;
}
case 1:
{
[self setWgtFrame:_listView_childWgt1];
[self bindAll:_ctx];
[_listView_childWgt1 adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface flow_flowhistoryController_listView_group ()
{
	
}
@end
@implementation flow_flowhistoryController_listView_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listView_childWgt0_nrowName controlid:@"listView_childWgt0_nrowName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_nrowAction controlid:@"listView_childWgt0_nrowAction" bindfield:@"action"];
[self umcontrol:_listView_childWgt0_nrowCommit controlid:@"listView_childWgt0_nrowCommit" bindfield:@"commit"];
[self umcontrol:_listView_childWgt0_nrowDate controlid:@"listView_childWgt0_nrowDate" bindfield:@"date"];
[self umcontrol:_listView_childWgt1_hrowName controlid:@"listView_childWgt1_hrowName" bindfield:@"name"];
[self umcontrol:_listView_childWgt1_hrowAction controlid:@"listView_childWgt1_hrowAction" bindfield:@"action"];
[self umcontrol:_listView_childWgt1_hrowCommit controlid:@"listView_childWgt1_hrowCommit" bindfield:@"commit"];
[self umcontrol:_listView_childWgt1_hrowDate controlid:@"listView_childWgt1_hrowDate" bindfield:@"date"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface flow_flowhistoryController_listView_cellHeight ()
{
	
}
@end
@implementation flow_flowhistoryController_listView_cellHeight

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
