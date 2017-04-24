//
//  UMView.h
//  UMIOSControls
//
//  Created by zzyy on 13-7-17.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMObject.h"
#import "UMContentProtocol.h"
#import "UMControlBase.h"
#import "EventObject.h"
#import "XEventArgs.h"
#import "UIColor+UIColorHex.h"

@class LHTableViewCell;

//为了给没个控件加ontouch事件，每个空间声明control（content）的时候都得引用umview.h，并且控件content类如果重写touchbegin touchend touchcancel touchmoved需调用基类方法
//@interface UIView (ontouch)
//
//
//
//@end

static NSString* PROP_ON_LONG_CLICK=@"onlongclick";
static NSString* PROP_ON_CLICK=@"onclick";
static NSString* PROP_HEIGHT = @"height";
static NSString* PROP_WIDTH = @"width";
static NSString* PROP_LAYOUT_TYPE = @"layout-type";
static NSString* PROP_TEXT = @"text";
static NSString* PROP_VALUE = @"value";
static NSString* PROP_WEIGHT = @"weight";
static NSString* PROP_PADDING = @"padding";
static NSString* PROP_PADDING_LEFT = @"padding-left";
static NSString* PROP_PADDING_RIGHT = @"padding-right";
static NSString* PROP_PADDING_TOP = @"padding-top";
static NSString* PROP_PADDING_BOTTOM = @"padding-bottom";
static NSString* PROP_MARGIN_LEFT = @"margin-left";
static NSString* PROP_MARGIN_RIGHT = @"margin-right";
static NSString* PROP_MARGIN_TOP = @"margin-top";
static NSString* PROP_MARGIN_BOTTOM = @"margin-bottom";
static NSString* PROP_V_ALIGN = @"valign";
static NSString* PROP_H_ALIGN = @"halign";
static NSString* PROP_ALIGN = @"align";
static NSString* PROP_BACKGROUND = @"background";
static NSString* PROP_BACKGROUND_IMAGE = @"background-image";
static NSString* PROP_FONT_FAMILY = @"font-family";
static NSString* PROP_FONT_SIZE = @"font-size";
static NSString* PROP_FONT_COLOR = @"color";
static NSString* PROP_LEFT = @"left";
static NSString* PROP_TOP = @"top";
static NSString* PROP_VISIBLE = @"visible";
static NSString* PROP_DISABLED = @"disabled";
static NSString* PROP_DISPLAY = @"display";
static NSString* PROP_READONLY = @"readonly";
static NSString* OPACITY = @"opacity";
static NSString* ROUNDSTYLE = @"roundstyle";
static NSString* BORDER_RADIUS = @"border-radius";
static NSString* ROUND = @"round";
static NSString* PROP_DIV_PRESSED_COLOR = @"pressed-color";
static NSString* PROP_DIV_PRESSED_IMAGE = @"pressed-image";
static NSString* PROP_ON_DOUBLE_CLICK = @"ondoubletap";
static NSString* PROP_ON_SWIPE_LEFT = @"onswipeleft";
static NSString* PROP_ON_SWIPE_DOWN = @"onswipedown";
static NSString* PROP_ON_SWIPE_UP = @"onswipeup";
static NSString* PROP_ON_SWIPE_RIGHT = @"onswiperight";
static NSString* PROP_MINI_HEIGHT = @"min-height";


/*
 *  边框
 */
static NSString* BORDER_TOP_WIDTH = @"border-top-width";
static NSString* BORDER_TOP_STYLE = @"border-top-style";
static NSString* BORDER_TOP_COLOR = @"border-top-color";

static NSString* BORDER_LEFT_WIDTH = @"border-left-width";
static NSString* BORDER_LEFT_STYLE = @"border-left-style";
static NSString* BORDER_LEFT_COLOR = @"border-left-color";

static NSString* BORDER_RIGHT_WIDTH = @"border-right-width";
static NSString* BORDER_RIGHT_STYLE = @"border-right-style";
static NSString* BORDER_RIGHT_COLOR = @"border-right-color";

static NSString* BORDER_BOTTOM_WIDTH = @"border-bottom-width";
static NSString* BORDER_BOTTOM_STYLE = @"border-bottom-style";
static NSString* BORDER_BOTTOM_COLOR = @"border-bottom-color";

enum ALIGN_TYPE{
    ALIGN_LEFT = 0,
    ALIGN_TOP = 0,
    ALIGN_CENTER = 1,
    ALIGN_RIGHT = 2,
    ALIGN_BOTTOM = 2,
    ALIGN_NUM,
};


//type://动画效果
//kCATransitionFade ,//淡淡消失
//kCATransitionPush,//推挤
//kCATransitionReveal,//揭开
//kCATransitionMoveIn,//覆盖
//@"cube",//立方体
//@"suckEffect",//吸收
//@"oglFlip",//翻转
//@"rippleEffect";//波纹
//@"pageCurl";//上翻页
//@"pageUnCurl";//下翻页
//@"cameraIrisHollowOpen";//相机开
//@"cameraIrisHollowClose";//相机关
typedef enum
{
    FADE,
    PUSH,
    REVEAL,
    MOVEIN,
    SUCK,
    FLIP,
    CAMERAOPEN,
    CAMERACLOSE
} ANNIMATIONTYPE;



@interface UMView : UMObject<UMViewControl,UMContentDelegate,NSCopying>
{
    UIView* _content;
    int _hAlignUMP;
    int _vAlignUMP;
    id _targetEvent;
    SEL _actionEvent;
    BOOL _disabled;
    @protected
    NSInteger _idxInBrothers;
    BOOL _nodeOnTree;
    NSString* _backgroundImagePath;
    int _paddingLeft;
    int _paddingRight;
    int _paddingTop;
    int _paddingBottom;
    BOOL _readOnly;
}
@property(nonatomic, strong) NSMutableDictionary * otherPropertyDictionary;
@property(nonatomic, strong) NSString * onintercepttouch;
@property(nonatomic, strong) NSString * ontouch;
@property (nonatomic,strong) NSString * ondoubleTap;
@property (nonatomic,strong) NSString * onlongPress;//长按
@property (nonatomic,strong) NSString * onswipeLeft;//左滑动
@property (nonatomic,strong) NSString * onswipeRight;
@property (nonatomic,strong) NSString * onswipeUp;
@property (nonatomic,strong) NSString * onswipeDown;
@property (nonatomic,strong) NSString * onrotate;//旋转
@property (nonatomic,strong) NSString * onpinch;//捏合\展开
@property(nonatomic, strong) NSString * touchEventParams;
@property(nonatomic, strong) NSString * controlId;
@property(nonatomic, strong) NSString * bindfield;
@property(nonatomic,strong) NSString *classname;//控件的样式，只能在设计器上设置，不能js set，只能get
@property(nonatomic,weak) id container;

@property(nonatomic, strong) UIColor* backgroundColor;
@property(nonatomic, strong) NSString* backgroundImagePath;
@property(nonatomic, strong) NSString   *background_image_dis;

@property(nonatomic, strong) UIColor    *background_color_dis;

@property(nonatomic,assign) int paddingLeft;
@property(nonatomic,assign) int paddingRight;
@property(nonatomic,assign) int paddingTop;
@property(nonatomic,assign) int paddingBottom;

@property(nonatomic,assign) int marginLeft;
@property(nonatomic,assign) int marginRight;
@property(nonatomic,assign) int marginTop;
@property(nonatomic,assign) int marginBottom;
@property(nonatomic,strong) NSString * gradient;//渐变色
@property(nonatomic,strong) NSString * gradient_orientation;//渐变色样式

@property(nonatomic,strong) NSString * umnamespace;
@property(nonatomic,strong) NSString * umcontroller;

//圆角边框
@property(nonatomic,strong) NSString *border_radius;


//1,2,3
@property(nonatomic,assign) int hAlignUMP;
@property(nonatomic,assign) int vAlignUMP;

//weight,maybe width,maybe height.
@property(nonatomic,assign) int weightUMPView;
//wrap
@property(nonatomic,assign) BOOL isHeightWrap;
@property(nonatomic,assign) BOOL isWidthWrap;
@property(nonatomic,assign) int  wrapHeight;
@property(nonatomic,assign) int  wrapWidth;

//fill
@property(nonatomic,assign) BOOL isWidthFill;
@property(nonatomic,assign) BOOL isHeightFill;

@property(nonatomic,assign) CGRect frame;
@property(nonatomic,readonly,strong) UIView* view;
@property(nonatomic,strong) UIView* content;

@property(nonatomic,assign) BOOL   disabled;
@property(nonatomic,strong)NSString *disabledValue;//记录disable的set值，返回的时候返回
@property(nonatomic,assign) BOOL   readOnly;

@property(nonatomic,assign) ANNIMATIONTYPE annimationOfVisible;

@property(nonatomic,weak) UMView* umSuperView;
@property(nonatomic,assign) NSInteger indexOfInParent;

@property(nonatomic,weak) UMView* parent;
@property(nonatomic,strong) NSMutableArray* children;

@property(nonatomic,assign) BOOL finishedAdjustSize;

@property(nonatomic,assign) CGRect view_size;


@property(nonatomic,assign) CGPoint umRtPoint;
@property(nonatomic,assign) CGPoint umLbPoint;

@property(nonatomic,assign) BOOL bDisplay;
@property(nonatomic,strong) NSString *displayValue;//记录display的set值，返回的时候返回
@property(nonatomic,assign) BOOL bVisible;
@property(nonatomic,strong) NSString *visibleValue;//记录visible的set值，返回的时候返回

@property(nonatomic,strong)NSString *opacity;
@property(nonatomic,strong)NSString *roundType;//圆角类型


@property(nonatomic,strong)NSString * border_style;
@property(nonatomic,strong)NSString * border_width;
@property(nonatomic,strong)NSString * border_color;

@property(nonatomic,strong)NSString *border_top_width;
@property(nonatomic,strong)NSString *border_top_style;
@property(nonatomic,strong)NSString *border_top_color;
@property (nonatomic,assign) BOOL dashTop;

@property(nonatomic,strong)NSString *border_left_width;
@property(nonatomic,strong)NSString *border_left_style;
@property(nonatomic,strong)NSString *border_left_color;
@property (nonatomic,assign) BOOL dashLeft;

@property(nonatomic,strong)NSString *border_right_width;
@property(nonatomic,strong)NSString *border_right_style;
@property(nonatomic,strong)NSString *border_right_color;
@property (nonatomic,assign) BOOL dashRight;

@property(nonatomic,strong)NSString *border_bottom_width;
@property(nonatomic,strong)NSString *border_bottom_style;
@property(nonatomic,strong)NSString *border_bottom_color;
@property (nonatomic,assign) BOOL dashBottom;


@property(nonatomic,strong)NSMutableDictionary * dyPropertyList;
@property(nonatomic,strong)NSMutableDictionary * dyActionList;

@property(nonatomic,strong)NSString * mini_height;

@property (nonatomic,strong) NSMutableDictionary *events;
@property(nonatomic,strong)NSMutableDictionary *eventsParam;

@property(nonatomic,assign)BOOL isPacketControl;//是否是容器控件，例如togglebuttongroup sliding viewflipper，用在动态上判断是否应该addview addsubumxview



/**
 *  初始化属性完成 setproperty 标识，为了控件在初始化避免重复处理布局或其他操作
 */
@property(nonatomic,assign)BOOL initPropertyFinish;


//为新框架添加属性 by liuheng
//@property(nonatomic,assign) BOOL display;
@property(nonatomic,strong) NSMutableDictionary * mappingDic;

@property(nonatomic,strong) NSString *color;
@property(nonatomic,strong) NSString *font_weight;
- (id)init;


-(void)umviewWillAppear;
-(void)umViewDidLoad;
-(void)umViewDidUnLoad;
-(void)umviewAppear;
-(void)vmviewDisappear;

- (UIView*)content;

- (void) addTarget:(id)target action:(SEL)action;


//- (void)addChildSubView:(UMView*)childView;
- (void)addLayoutToSuperView;
- (void)removeLayoutFromSuperView;

- (NSString*)rebuildImagePath:(NSString*)imgPath;
-(void)addSubUMXViewNotAddUi:(UMView *)child;
- (void)addSubUMXView:(UMView*)child;
- (void)addSubUMXView:(UMView*)child withIndex:(NSUInteger)index;
- (void)addUMView:(UMView*)child;
- (void)addSubUMView:(UMView*)children;
- (void)removeSubUMView:(UMView*)children;
- (void)replaceSubUMView:(UMView*)oldChild withChildren:(UMView*)children;
- (void)insertSubUMView:(UMView*)child atIndex:(NSInteger)index;
- (void)adjustSize;
- (CGRect)draw;
- (CGRect)calcute4Vbox;
- (CGRect)calcute4Hbox;
- (void)adjustSizeForPop;
/**
 *  布局一个单独存在的umview对象
 *
 *  @param view 指定这个umview父umview的content
 */
-(void)adjustSizeForParentest:(LHTableViewCell *)contentview;

- (void)layoutWeight;
- (void)layoutWrap;
- (void)layoutScrollChildren;
- (void)singleFrameWithFillProperty;

- (void)needAdjustSize:(BOOL)flag;
- (void)clearFinishedAdjustSize;
- (void)drawBackgroundOfView;
//#pragma mark - UIColor转UIImage
//-(UIImage *)buttonImageFromColor:(UIColor *)color;

@property(nonatomic,assign) BOOL readonly;
@property(nonatomic,strong) NSString* display;
@property(nonatomic,strong) NSString* visible;
@property(nonatomic,strong) NSString* height;
@property(nonatomic,strong) NSString* background_image;
@property(nonatomic,strong) NSString* background;
@property(nonatomic,strong) NSString* left;
@property(nonatomic,strong) NSString* top;
@property(nonatomic,strong) NSString* width;
-(void) doOnClick;
-(void)updatewrap;
-(void)updateParentWrap;

//div触屏背景色和背景图片
@property (nonatomic,strong) NSString *div_pressed_color;
@property (nonatomic,strong) NSString *div_pressed_image;
@end

