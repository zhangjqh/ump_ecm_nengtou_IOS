#import "flow_floweditController_listView.h"
@interface flow_floweditController_listView_tableViewCell ()
{
	
}
@end
@implementation flow_floweditController_listView_tableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier withCtx:(UMEntityContext *)_ctx withContainer:(UMView *)container
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
       NSArray *reuseIdentifierArr = [reuseIdentifier componentsSeparatedByString:@"_"];
       NSInteger index = [reuseIdentifierArr[reuseIdentifierArr.count-1] integerValue];
        switch (index) {
          case 0:
{
    _itemPanel = [[UMLayoutView alloc] init];
    _itemPanel.controlId = @"itemPanel";
    _itemPanel.layoutType = Layout_hbox;
     //设置控件基本属性
    [UMCompatible initCommonProperty:_itemPanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




    [_itemPanel setContainer:self];
    [_itemPanel addEvent:@"onclick" actionName:@"onItemClick"];

// --noLabel
    _noLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"index",
                          @"halign":@"left",
                          @"width":@"32",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"noLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"no"}];
    [(UMLayoutView*)_itemPanel addSubUMXView:_noLabel];

// --nameLabel
    _nameLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"names",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"nameLabel",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"names"}];
    [(UMLayoutView*)_itemPanel addSubUMXView:_nameLabel];

// --ruleLabel
    _ruleLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"rulename",
                          @"halign":@"right",
                          @"width":@"50",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"ruleLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"rule"}];
    [(UMLayoutView*)_itemPanel addSubUMXView:_ruleLabel];

// --spaceLabel
    _spaceLabel = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"txt_r":@"0.5568628",
                          @"font_size":@"16",
                          @"id":@"spaceLabel",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"color":@"#8e8e93",
                          @"font_family":@"ArialMT",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_itemPanel addSubUMXView:_spaceLabel];

    _movePanel = [[UMLayoutView alloc] init];
    _movePanel.controlId = @"movePanel";
    _movePanel.layoutType = Layout_hbox;
    [(UMLayoutView*)_itemPanel addSubUMView:_movePanel];
     //设置控件基本属性
    [UMCompatible initCommonProperty:_movePanel info:[NSDictionary dictionaryWithObjectsAndKeys:
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




// --itemImg
    _itemImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"itemImg",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"ecm_arrow_right.png",@"value":@""}];
    [(UMLayoutView*)_movePanel addSubUMXView:_itemImg];

[self.contentView addSubview:_itemPanel.content];
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

	[self umcontrol:_noLabel controlid:@"noLabel" bindfield:@"index"];
[self umcontrol:_nameLabel controlid:@"nameLabel" bindfield:@"names"];
[self umcontrol:_ruleLabel controlid:@"ruleLabel" bindfield:@"rulename"];

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
[self setWgtFrame:_itemPanel];
[self bindAll:_ctx];
[_itemPanel adjustSizeForParentest:self];
break;
}

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface flow_floweditController_listView_group ()
{
	
}
@end
@implementation flow_floweditController_listView_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_noLabel controlid:@"noLabel" bindfield:@"index"];
[self umcontrol:_nameLabel controlid:@"nameLabel" bindfield:@"names"];
[self umcontrol:_ruleLabel controlid:@"ruleLabel" bindfield:@"rulename"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface flow_floweditController_listView_cellHeight ()
{
	
}
@end
@implementation flow_floweditController_listView_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"44";
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
