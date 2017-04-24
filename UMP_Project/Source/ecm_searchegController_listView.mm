#import "ecm_searchegController_listView.h"
@interface ecm_searchegController_listView_tableViewCell ()
{
	
}
@end
@implementation ecm_searchegController_listView_tableViewCell
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

// --listView_childWgt0_entName
    _listView_childWgt0_entName = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"name",
                          @"halign":@"left",
                          @"weight":@"1",
                          @"width":@"0",
                          @"font_size":@"16",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_entName",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#000000",
                          @"font-size":@"16",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"EntName"}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_entName];

// --listView_childWgt0_entNum
    _listView_childWgt0_entNum = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"bindfield":@"num",
                          @"halign":@"right",
                          @"width":@"50",
                          @"font_size":@"14",
                          @"txt_r":@"0.5568628",
                          @"id":@"listView_childWgt0_entNum",
                          @"txt_g":@"0.5568628",
                          @"height":@"fill",
                          @"font_family":@"ArialMT",
                          @"color":@"#8e8e93",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.5764706",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@"Num"}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_entNum];

// --listView_childWgt0_entSpace
    _listView_childWgt0_entSpace = [UMControl creatControl:@"UMXLabel" container:self  params:@{
                          @"halign":@"center",
                          @"width":@"15",
                          @"font_size":@"14",
                          @"txt_r":@"0.0",
                          @"id":@"listView_childWgt0_entSpace",
                          @"txt_g":@"0.0",
                          @"height":@"fill",
                          @"color":@"#000000",
                          @"font_family":@"ArialMT",
                          @"font-size":@"14",
                          @"font-family":@"default",
                          @"txt_b":@"0.0",
                          @"valign":@"center",
                          @"readonly":@"true",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_entSpace];

// --listView_childWgt0_entImg
    _listView_childWgt0_entImg = [UMControl creatControl:@"UMXXImageView" container:self  params:@{
                          @"id":@"listView_childWgt0_entImg",
                          @"height":@"13",
                          @"width":@"8",
                          @"scaletype":@"fitcenter",
                          @"src":@"oa_ecm_right.png",@"value":@""}];
    [(UMLayoutView*)_listView_childWgt0 addSubUMXView:_listView_childWgt0_entImg];

[self.contentView addSubview:_listView_childWgt0.content];
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

	[self umcontrol:_listView_childWgt0_entName controlid:@"listView_childWgt0_entName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_entNum controlid:@"listView_childWgt0_entNum" bindfield:@"num"];

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

     
	default:
                break;
        }
        
    [self setNeedsDisplay];
    return;
}


@end


@interface ecm_searchegController_listView_group ()
{
	
}
@end
@implementation ecm_searchegController_listView_group

-(id)initWithSectionPath:(NSString *)sectionPath withCtx:(UMEntityContext *)_ctx
{
    self = [super init];
    if(self)
    {
    
    self.ctx=_ctx;
    [self umcontrol:_listView_childWgt0_entName controlid:@"listView_childWgt0_entName" bindfield:@"name"];
[self umcontrol:_listView_childWgt0_entNum controlid:@"listView_childWgt0_entNum" bindfield:@"num"];

    }
    
    [self bindAll];



    return self;
}

@end

@interface ecm_searchegController_listView_cellHeight ()
{
	
}
@end
@implementation ecm_searchegController_listView_cellHeight

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
