#import "ecm_searchdeptController_listView.h"
@interface ecm_searchdeptController_listView_tableViewCell ()
{
	
}
@end
@implementation ecm_searchdeptController_listView_tableViewCell
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




    [_listView_childWgt0 setContainer:self];
    [_listView_childWgt0 addEvent:@"onclick" actionName:@"onItemClick"];

    _listView_childWgt0_unselectedLeftPanel = [[UMLayoutView alloc] init];
    _listView_childWgt0_unselectedLeftPanel.controlId = @"listView_childWgt0_unselectedLeftPanel";
    _listView_childWgt0_unselectedLeftPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt0 addSubUMView:_listView_childWgt0_unselectedLeftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0_unselectedLeftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"60",@"height",
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




// --listView_childWgt0_unselectedImg
    _listView_childWgt0_unselectedImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt0_unselectedImg",
                          @"margin-right":@"5",
                          @"height":@"20",
                          @"width":@"20",
                          @"onclick":@"onItemClick",
                          @"scaletype":@"fitcenter",
                          @"src":@"checkbox_noselect.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0_unselectedLeftPanel addSubUMXView:_listView_childWgt0_unselectedImg];

// --listView_childWgt0_unselectedName
    _listView_childWgt0_unselectedName = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_unselectedName",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"name"}];
    [(UMLayoutView*)_listView_childWgt0_unselectedLeftPanel addSubUMXView:_listView_childWgt0_unselectedName];

    _listView_childWgt0_unselectedRightPanel = [[UMLayoutView alloc] init];
    _listView_childWgt0_unselectedRightPanel.controlId = @"listView_childWgt0_unselectedRightPanel";
    _listView_childWgt0_unselectedRightPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_listView_childWgt0 addSubUMView:_listView_childWgt0_unselectedRightPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt0_unselectedRightPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"160",@"width",
                          @"60",@"height",
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




// --listView_childWgt0_unselectedMobile
    _listView_childWgt0_unselectedMobile = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobile",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_unselectedMobile",
                          @"txt_g":@"0.5568628",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"mobile"}];
    [(UMLayoutView*)_listView_childWgt0_unselectedRightPanel addSubUMXView:_listView_childWgt0_unselectedMobile];

// --listView_childWgt0_unselectedPosition
    _listView_childWgt0_unselectedPosition = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_unselectedPosition",
                          @"txt_g":@"0.5568628",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"position"}];
    [(UMLayoutView*)_listView_childWgt0_unselectedRightPanel addSubUMXView:_listView_childWgt0_unselectedPosition];

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




    [_listView_childWgt1 setContainer:self];
    [_listView_childWgt1 addEvent:@"onclick" actionName:@"onItemClick"];

    _listView_childWgt1_selectedLeftPanel = [[UMLayoutView alloc] init];
    _listView_childWgt1_selectedLeftPanel.controlId = @"listView_childWgt1_selectedLeftPanel";
    _listView_childWgt1_selectedLeftPanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_listView_childWgt1 addSubUMView:_listView_childWgt1_selectedLeftPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1_selectedLeftPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"60",@"height",
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




// --listView_childWgt1_selectedImg
    _listView_childWgt1_selectedImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt1_selectedImg",
                          @"margin-right":@"5",
                          @"height":@"20",
                          @"width":@"20",
                          @"onclick":@"onItemClick",
                          @"scaletype":@"fitcenter",
                          @"src":@"checkbox_select.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt1_selectedLeftPanel addSubUMXView:_listView_childWgt1_selectedImg];

// --listView_childWgt1_selectedName
    _listView_childWgt1_selectedName = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt1_selectedName",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"name"}];
    [(UMLayoutView*)_listView_childWgt1_selectedLeftPanel addSubUMXView:_listView_childWgt1_selectedName];

    _listView_childWgt1_selectedRightPanel = [[UMLayoutView alloc] init];
    _listView_childWgt1_selectedRightPanel.controlId = @"listView_childWgt1_selectedRightPanel";
    _listView_childWgt1_selectedRightPanel.layoutType = Layout_vbox;
    [(UMLayoutView*)_listView_childWgt1 addSubUMView:_listView_childWgt1_selectedRightPanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_listView_childWgt1_selectedRightPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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
                          @"NO",@"isWidthFill",
                          @"NO",@"isHeightWrap", 
                          @"NO",@"isWidthWrap",
                          @"0",@"left",
                          @"0",@"top",
                          @"160",@"width",
                          @"60",@"height",
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




// --listView_childWgt1_selectedMobile
    _listView_childWgt1_selectedMobile = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"mobile",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt1_selectedMobile",
                          @"txt_g":@"0.5568628",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"mobile"}];
    [(UMLayoutView*)_listView_childWgt1_selectedRightPanel addSubUMXView:_listView_childWgt1_selectedMobile];

// --listView_childWgt1_selectedPosition
    _listView_childWgt1_selectedPosition = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"position",
                          @"halign":@"right",
                          @"weight":@"1",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt1_selectedPosition",
                          @"txt_g":@"0.5568628",
                          @"height":@"0",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"position"}];
    [(UMLayoutView*)_listView_childWgt1_selectedRightPanel addSubUMXView:_listView_childWgt1_selectedPosition];

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

	[self umcontrol:_listView_childWgt0_unselectedName controlid:@"listView_childWgt0_unselectedName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_unselectedMobile controlid:@"listView_childWgt0_unselectedMobile" bindfield:@"mobile"];
[self umcontrol:_listView_childWgt0_unselectedPosition controlid:@"listView_childWgt0_unselectedPosition" bindfield:@"position"];
[self umcontrol:_listView_childWgt1_selectedName controlid:@"listView_childWgt1_selectedName" bindfield:@"name"];
[self umcontrol:_listView_childWgt1_selectedMobile controlid:@"listView_childWgt1_selectedMobile" bindfield:@"mobile"];
[self umcontrol:_listView_childWgt1_selectedPosition controlid:@"listView_childWgt1_selectedPosition" bindfield:@"position"];

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


@interface ecm_searchdeptController_listView_group ()
{
	
}
@end
@implementation ecm_searchdeptController_listView_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listView_childWgt0_unselectedName controlid:@"listView_childWgt0_unselectedName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_unselectedMobile controlid:@"listView_childWgt0_unselectedMobile" bindfield:@"mobile"];
[self umcontrol:_listView_childWgt0_unselectedPosition controlid:@"listView_childWgt0_unselectedPosition" bindfield:@"position"];
[self umcontrol:_listView_childWgt1_selectedName controlid:@"listView_childWgt1_selectedName" bindfield:@"name"];
[self umcontrol:_listView_childWgt1_selectedMobile controlid:@"listView_childWgt1_selectedMobile" bindfield:@"mobile"];
[self umcontrol:_listView_childWgt1_selectedPosition controlid:@"listView_childWgt1_selectedPosition" bindfield:@"position"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface ecm_searchdeptController_listView_cellHeight ()
{
	
}
@end
@implementation ecm_searchdeptController_listView_cellHeight

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
