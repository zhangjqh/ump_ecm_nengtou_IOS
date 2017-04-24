//
//  UMLayoutView.h
//  UMControls
//
//  Created by zhangnan on 13-3-24.
//
//

#import "UMBindView.h"


typedef enum {
    Layout_hbox = 0,
    Layout_vbox = 1,
    Layout_fixed = 2
}Layout_Type;

//position
//--------------|
//|     rt|     |
//|       |     |
//|-------|     |
//|lb           |
//|             |
//|             |
//|             |
//|             |
//|-------------|

typedef enum {
    VIEW_RT = 0,
    VIEW_LB = 1
}Direction;

@interface UMLayoutView : UMBindView
{
    Layout_Type _layoutType;
    int _layoutSizeWidth;
    int _layoutSizeHeight;

}
@property(nonatomic,strong) NSMutableArray* subObjectsArr;
@property(nonatomic,assign) Layout_Type layoutType;
//righttop
@property(nonatomic,assign) CGPoint rtPosition;
//leftbottom
@property(nonatomic,assign) CGPoint lbPosition;

@property(nonatomic,strong) NSString *naviTitle;

- (id)init;
- (void)addLayoutSubView:(UMView*)children;
- (void)reLayout:(UMView*)childView;
- (void)removeLayoutSubView:(UMView*)children;

@property (nonatomic,strong) NSString* text;
@property (nonatomic,strong) NSString* value;

@property (nonatomic,strong) NSString* type;

@property (nonatomic,strong) NSString* font_size;
@property (nonatomic,strong) NSString* font;
@property (nonatomic,strong) NSString* font_family;

// 添加tabbar selectedindex属性
@property (nonatomic,strong) NSString* selectedindex;
@property (nonatomic,assign) int index;

@end
