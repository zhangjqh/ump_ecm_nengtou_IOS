#import "addr_navgroupController_listview0.h"
@interface addr_navgroupController_listview0_tableViewCell ()
{
	
}
@end
@implementation addr_navgroupController_listview0_tableViewCell
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




    [_listview0_childWgt0 setContainer:self];
    [_listview0_childWgt0 addEvent:@"onclick" actionName:@"toChildNav"];

// --listview0_childWgt0_image8
    _listview0_childWgt0_image8 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt0_image8",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0 addSubUMXView:_listview0_childWgt0_image8];

// --listview0_childWgt0_label0
    _listview0_childWgt0_label0 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt0_label0",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"3",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0 addSubUMXView:_listview0_childWgt0_label0];

// --listview0_childWgt0_image0
    _listview0_childWgt0_image0 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt0_image0",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt0 addSubUMXView:_listview0_childWgt0_image0];

[self.contentView addSubview:_listview0_childWgt0.content];
self.cellHeight = @"44";
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




// --listview0_childWgt1_image9
    _listview0_childWgt1_image9 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt1_image9",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt1 addSubUMXView:_listview0_childWgt1_image9];

// --listview0_childWgt1_label3
    _listview0_childWgt1_label3 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"width":@"fill",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt1_label3",
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
    [(UMLayoutView*)_listview0_childWgt1 addSubUMXView:_listview0_childWgt1_label3];

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




    [_listview0_childWgt2 setContainer:self];
    [_listview0_childWgt2 addEvent:@"onclick" actionName:@"toPsnList"];

// --listview0_childWgt2_image10
    _listview0_childWgt2_image10 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"bindfield":@"navimage",
                          @"id":@"listview0_childWgt2_image10",
                          @"margin-right":@"8",
                          @"height":@"25",
                          @"width":@"25",
                          @"scaletype":@"fitcenter",
                          @"src":@"",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2 addSubUMXView:_listview0_childWgt2_image10];

// --listview0_childWgt2_label4
    _listview0_childWgt2_label4 = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"nameandnum",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listview0_childWgt2_label4",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"14",
                          @"margin-left":@"3",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2 addSubUMXView:_listview0_childWgt2_label4];

// --listview0_childWgt2_image2
    _listview0_childWgt2_image2 = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listview0_childWgt2_image2",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oaadl_arrow.png",@"value":@""}];
    [(UMLayoutView*)_listview0_childWgt2 addSubUMXView:_listview0_childWgt2_image2];

[self.contentView addSubview:_listview0_childWgt2.content];
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

	[self umcontrol:_listview0_childWgt0_image8 controlid:@"listview0_childWgt0_image8" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt1_image9 controlid:@"listview0_childWgt1_image9" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt1_label3 controlid:@"listview0_childWgt1_label3" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt2_image10 controlid:@"listview0_childWgt2_image10" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"nameandnum"];

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


@interface addr_navgroupController_listview0_group ()
{
	
}
@end
@implementation addr_navgroupController_listview0_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listview0_childWgt0_image8 controlid:@"listview0_childWgt0_image8" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt0_label0 controlid:@"listview0_childWgt0_label0" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt1_image9 controlid:@"listview0_childWgt1_image9" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt1_label3 controlid:@"listview0_childWgt1_label3" bindfield:@"nameandnum"];
[self umcontrol:_listview0_childWgt2_image10 controlid:@"listview0_childWgt2_image10" bindfield:@"navimage"];
[self umcontrol:_listview0_childWgt2_label4 controlid:@"listview0_childWgt2_label4" bindfield:@"nameandnum"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface addr_navgroupController_listview0_cellHeight ()
{
	
}
@end
@implementation addr_navgroupController_listview0_cellHeight

@synthesize container = container;

-(void)getCellHeightByIndex:(NSString *)index
{
    switch ([index integerValue]) {
    case 0:
self.cellHeight = @"44";
break;
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
