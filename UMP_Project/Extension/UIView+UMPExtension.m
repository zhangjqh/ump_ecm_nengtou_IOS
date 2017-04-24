//
//  UIView+UMPExtension.m
//  UMPControls
//
//  Created by zhangnan on 13-3-24.
//
//


#import "UIView+UMPExtension.h"
#import <objc/message.h>
#import <QuartzCore/QuartzCore.h>

static const char* paddingLeftKey = "paddingLeftKey";
static const char* paddingRightKey = "paddingRightKey";
static const char* paddingTopKey = "paddingTopKey";
static const char* paddingBottomKey = "paddingBottomKey";
static const char* weightUMPViewKey = "weightUMPViewKey";
static const char* alignUMPKey = "alignUMPKey";
static const char* valueOfUMPControlKey = "valueOfUMPControlKey";
static const char* basePropertyKey = "basePropertyKey";
static const char* indexUMPKey = "indexUMPKey";

@implementation UIViewController (UMPExtension)
@dynamic indexUMP;
- (void)setIndexUMP:(int)indexUMP
{
    NSNumber* value = [NSNumber numberWithInt:indexUMP];
    objc_setAssociatedObject(self, indexUMPKey, value, OBJC_ASSOCIATION_ASSIGN);
}

- (int)indexUMP
{
    NSNumber* value = objc_getAssociatedObject(self, indexUMPKey);
    
    return [value intValue];
}
@end


@implementation UIView (UMPExtension)
@dynamic paddingLeftUMP,paddingRightUMP,paddingTopUMP,paddingBottomUMP,weightUMPView,alignUMP,valueOfUMPControl,baseProperty,indexUMP;

-(void)setPaddingLeftUMP:(int)paddingLeft
{
    NSNumber* value = [NSNumber numberWithInt:paddingLeft];
    objc_setAssociatedObject(self, paddingLeftKey, value, OBJC_ASSOCIATION_ASSIGN);
}

-(int)paddingLeftUMP
{
    NSNumber* value = objc_getAssociatedObject(self, paddingLeftKey);
    return [value intValue];
}

-(void)setPaddingRightUMP:(int)paddingRight
{
    NSNumber* value = [NSNumber numberWithInt:paddingRight];
    objc_setAssociatedObject(self, paddingRightKey, value, OBJC_ASSOCIATION_ASSIGN);
}

-(int)paddingRightUMP
{
    NSNumber* value = objc_getAssociatedObject(self, paddingRightKey);
    return [value intValue];
}

-(void)setPaddingTopUMP:(int)paddingTop
{
    NSNumber* value = [NSNumber numberWithInt:paddingTop];
    objc_setAssociatedObject(self, paddingTopKey, value, OBJC_ASSOCIATION_ASSIGN);
}

-(int)paddingTopUMP
{
    NSNumber* value = objc_getAssociatedObject(self, paddingTopKey);
    return [value intValue];
}

-(void)setPaddingBottomUMP:(int)paddingBottom
{
    NSNumber* value = [NSNumber numberWithInt:paddingBottom];
    objc_setAssociatedObject(self, paddingBottomKey, value, OBJC_ASSOCIATION_ASSIGN);
}

-(int)paddingBottomUMP
{
    NSNumber* value = objc_getAssociatedObject(self, paddingBottomKey);
    return [value intValue];
}

-(void)setBackgroundImageWithPathForUMP:(NSString*)imagePath
{
    UIImage* image = [UIImage imageNamed:imagePath];
    self.layer.contents = (id)image.CGImage;
    self.layer.backgroundColor = [UIColor clearColor].CGColor;
}

- (void)setWeightUMPView:(int)myWeightUMPView
{
    NSNumber* value = [NSNumber numberWithInt:myWeightUMPView];
    objc_setAssociatedObject(self, weightUMPViewKey, value, OBJC_ASSOCIATION_ASSIGN);
}

- (int)weightUMPView
{
    NSNumber* value = objc_getAssociatedObject(self, weightUMPViewKey);
    
    return [value intValue];
}

- (void)setAlignUMP:(int)alignUMP
{
    NSNumber* value = [NSNumber numberWithInt:alignUMP];
    objc_setAssociatedObject(self, alignUMPKey, value, OBJC_ASSOCIATION_ASSIGN);
}

- (int)alignUMP
{
    NSNumber* value = objc_getAssociatedObject(self, alignUMPKey);
    
    return [value intValue];
}

- (void)setBaseProperty:(UMBaseControlProperty *)baseProperty
{
    objc_setAssociatedObject(self, basePropertyKey, baseProperty, OBJC_ASSOCIATION_RETAIN);
}

- (UMBaseControlProperty*)baseProperty
{
    UMBaseControlProperty* property = objc_getAssociatedObject(self, basePropertyKey);
    if (property == nil) {
        property = [[UMBaseControlProperty alloc]init];
        objc_setAssociatedObject(self, basePropertyKey, property, OBJC_ASSOCIATION_RETAIN);
    }
    
    return property;
}

-(void)setBindInfo:(UMBindInfo*)bindInfo controller:(UIViewController*)controller
{
    self.baseProperty.controller = controller;
    self.baseProperty.bindInfoData = bindInfo;
}

- (void)setValueOfUMPControl:(NSString*)valueOfControl
{
    objc_setAssociatedObject(self, valueOfUMPControlKey, valueOfControl, OBJC_ASSOCIATION_RETAIN);
}

- (NSString*)valueOfUMPControl
{
    return objc_getAssociatedObject(self, valueOfUMPControlKey);
}

-(id)getModelDataFromModelName:(NSString*)modelName fieldName:(NSString*)fieldName
{
    id obj = [self.baseProperty.controller performSelector:@selector(getContainer)];
    return @"list.png";//[obj performSelector:@selector(getValueFromModelName:fieldName:) withObject:modelName withObject:fieldName];
}

-(void)updateModelDataToModelName:(NSString*)modelName fieldName:(NSString*)fieldName value:(id)value
{
    id obj = [self.baseProperty.controller performSelector:@selector(getContainer)];
    objc_msgSend(obj,@selector(updateValueToModelName:fieldName:value:),modelName,fieldName,value);
}

- (void)setIndexUMP:(int)indexUMP
{
    NSNumber* value = [NSNumber numberWithInt:indexUMP];
    objc_setAssociatedObject(self, indexUMPKey, value, OBJC_ASSOCIATION_ASSIGN);
}

- (int)indexUMP
{
    NSNumber* value = objc_getAssociatedObject(self, indexUMPKey);
    
    return [value intValue];
}

@end