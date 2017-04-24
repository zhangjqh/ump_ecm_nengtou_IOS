//
//  UIView+UMPExtension.h
//  UMPControls
//
//  Created by zhangnan on 13-3-24.
//
//

#import <UIKit/UIKit.h>
#import "UMBaseControlProperty.h"
@class UMBindInfo;

@interface UIView (UMPExtension)
@property(nonatomic,assign) int paddingLeftUMP;
@property(nonatomic,assign) int paddingRightUMP;
@property(nonatomic,assign) int paddingTopUMP;
@property(nonatomic,assign) int paddingBottomUMP;
//1,2,3
@property(nonatomic,assign) int alignUMP;
//weight,maybe width,maybe height.
@property(nonatomic,assign) int weightUMPView;

@property(nonatomic,strong) NSString* valueOfUMPControl;

@property(nonatomic,strong) UMBaseControlProperty* baseProperty;

@property(nonatomic,assign) int indexUMP;

-(void)setBindInfo:(UMBindInfo*)bindInfo controller:(UIViewController*)controller;

-(id)getModelDataFromModelName:(NSString*)modelName fieldName:(NSString*)fieldName;
-(void)updateModelDataToModelName:(NSString*)modelName fieldName:(NSString*)fieldName value:(id)value;

-(void)setBackgroundImageWithPathForUMP:(NSString*)imagePath;
@end
@interface UIViewController (UMPExtension)
@property(nonatomic,assign) int indexUMP;
@end