#import "flow_mainController_listView.h"
@interface flow_mainController_listView_tableViewCell ()
{
	
}
@end
@implementation flow_mainController_listView_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 1:
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
                          @"44",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_split.png",@"backgroundImagePath",
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
    [_listView_childWgt0 addEvent:@"onclick" actionName:@"onItemClick"];

// --listView_childWgt0_cnameLabel
    _listView_childWgt0_cnameLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"title",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_cnameLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"common"}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_cnameLabel];

// --listView_childWgt0_cspace15Label
    _listView_childWgt0_cspace15Label = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_cspace15Label",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_cspace15Label];

// --listView_childWgt0_cdateLabel
    _listView_childWgt0_cdateLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"date",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_cdateLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"date"}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_cdateLabel];

[self.contentView addSubview:_listView_childWgt0.content];
self.cellHeight = @"44";
break;
}
case 2:
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
                          @"44",@"height",
                          @"",@"color",
                          [UIColor clearColor],@"backgroundColor",
                          @"list_split.png",@"backgroundImagePath",
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
    [_listView_childWgt1 addEvent:@"onclick" actionName:@"onItemClick"];

// --listView_childWgt1_importantImg
    _listView_childWgt1_importantImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt1_importantImg",
                          @"height":@"15",
                          @"width":@"15",
                          @"scaletype":@"fitcenter",
                          @"src":@"oa_freeflow_important.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_importantImg];

// --listView_childWgt1_ispace5Label
    _listView_childWgt1_ispace5Label = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"5",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_ispace5Label",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_ispace5Label];

// --listView_childWgt1_inameLabel
    _listView_childWgt1_inameLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"title",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_inameLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"important"}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_inameLabel];

// --listView_childWgt1_ispace15Label
    _listView_childWgt1_ispace15Label = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_ispace15Label",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_ispace15Label];

// --listView_childWgt1_idateLabel
    _listView_childWgt1_idateLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"date",
                          @"halign":@"right",
                          @"width":@"80",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt1_idateLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"date"}];
    [(UMLayoutView*)_listView_childWgt1 addSubUMXView:_listView_childWgt1_idateLabel];

[self.contentView addSubview:_listView_childWgt1.content];
self.cellHeight = @"44";
break;
}

          default:
             break;
        }
  
    }
    return self;
}
-(void)bindAll:(UMEntityContext *)_ctx{

	[self umcontrol:_listView_groupWgt_groupLabel controlid:@"listView_groupWgt_groupLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt0_cnameLabel controlid:@"listView_childWgt0_cnameLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt0_cdateLabel controlid:@"listView_childWgt0_cdateLabel" bindfield:@"date"];
[self umcontrol:_listView_childWgt1_inameLabel controlid:@"listView_childWgt1_inameLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt1_idateLabel controlid:@"listView_childWgt1_idateLabel" bindfield:@"date"];

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
[self setWgtFrame:_listView_childWgt0];
[self bindAll:_ctx];
[_listView_childWgt0 adjustSizeForParentest:self];
break;
}
case 2:
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


@interface flow_mainController_listView_group ()
{
	
}
@end
@implementation flow_mainController_listView_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    self.listGroup = @"true";
    _listView_groupWgt = [[UMLayoutView alloc] init];
    _listView_groupWgt.controlId = @"listView_groupWgt";
    _listView_groupWgt.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_groupWgt info:[NSDictionary dictionaryWithObjectsAndKeys:
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




self.sectionHeight = @"30";
// --listView_groupWgt_groupLabel
    _listView_groupWgt_groupLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"title",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.44705883",
                          @"id":@"listView_groupWgt_groupLabel",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#727272",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"group"}];
    [(UMLayoutView*)_listView_groupWgt addSubUMXView:_listView_groupWgt_groupLabel];

[self addSubUMXView:_listView_groupWgt];

 self.groupLayout = _listView_groupWgt;

    self.ctx=_ctx;
    [self umcontrol:_listView_groupWgt_groupLabel controlid:@"listView_groupWgt_groupLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt0_cnameLabel controlid:@"listView_childWgt0_cnameLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt0_cdateLabel controlid:@"listView_childWgt0_cdateLabel" bindfield:@"date"];
[self umcontrol:_listView_childWgt1_inameLabel controlid:@"listView_childWgt1_inameLabel" bindfield:@"title"];
[self umcontrol:_listView_childWgt1_idateLabel controlid:@"listView_childWgt1_idateLabel" bindfield:@"date"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface flow_mainController_listView_cellHeight ()
{
	
}
@end
@implementation flow_mainController_listView_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 1:
self.cellHeight = @"44";
break;
case 2:
self.cellHeight = @"44";
break;

    default:
                break;
    }
}
-(void)getSectionHeightByIndex
{
	self.listGroup = @"true";
    _listView_groupWgt = [[UMLayoutView alloc] init];
    _listView_groupWgt.controlId = @"listView_groupWgt";
    _listView_groupWgt.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_groupWgt info:[NSDictionary dictionaryWithObjectsAndKeys:
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




self.sectionHeight = @"30";
// --listView_groupWgt_groupLabel
    _listView_groupWgt_groupLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"title",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.44705883",
                          @"id":@"listView_groupWgt_groupLabel",
                          @"txt_g":@"0.44705883",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#727272",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.44705883",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"group"}];
    [(UMLayoutView*)_listView_groupWgt addSubUMXView:_listView_groupWgt_groupLabel];

[self addSubUMXView:_listView_groupWgt];

 self.groupLayout = _listView_groupWgt;


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
