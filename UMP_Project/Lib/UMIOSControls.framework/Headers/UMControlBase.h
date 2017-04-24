//
//  UMViewControl.h
//  UMIOSControls
//
//  Created by xiongyy on 14-9-9.
//  Copyright (c) 2014年 xiongyy. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol UMDataAccessor <NSObject>
@required
-(NSString *)getValue:(NSString *)path;
-(void)setValue:(NSString *)path source:(NSString*)source;
@end

@protocol UMEventArgsProtocol <NSObject>
@required
-(void) putValue:(id)value forKey:(NSString *)key;
-(id) getValue:(NSString *)key;
-(id) getValueWithDefault:(id)value key:(NSString *)key;
-(NSString *) getString:(NSString *)key;
-(NSString *) getStringWithDefault:(NSString *)value key:(NSString *)key;
-(BOOL) getBOOL:(NSString *)key;
-(BOOL) getBOOLWithDefault:(BOOL)value key:(NSString *)key;
-(int) getInt:(NSString *)key;
-(int) getIntWithDefault:(int)value key:(NSString *)key;
-(void)removeKey:(NSString *)key;

@end

@protocol UMContainerProtocol <NSObject>
@optional
-(void) doAction:(NSString *)name sender:(id)sender eventArgs:(id<UMEventArgsProtocol>)args;
-(id<UMDataAccessor>)getContext;
-(NSMutableDictionary *) getBindGroup;
-(NSMutableDictionary *) getControlGroup;
-(NSMutableDictionary *) getBindPropertyGroup;
-(id)getControl:(NSString *)controlId;
-(void) bindAll;
-(void) collectAll;
-(NSString *) getControllID;
-(NSString *) getNameSpace;
-(void)umcontrol:(id)control controlid:(NSString *)controlid bindfield:(NSString *)bindfiled;
@end


@protocol UMViewControl <NSObject>
@required
-(NSString *) getControlId;        //View控件的ID
-(UIView *) getControl;
-(void) setControl:(UIView *)control;
-(void) setContainer:(id)controller;
-(id) getContainer;
-(BOOL) setProperty:(NSString *)name propValue:(NSString *)value;
-(void) setProperty:(NSString *)prop,...;
-(NSString *) getProperty:(NSString *)name;
-(void) addEvent:(NSString *)name actionName:(NSString *)action;
-(void) doEvent:(NSString *)name args:(NSDictionary *)args;
-(void) addView:(id<UMViewControl>)view;
-(void) addNativeView:(UIView *)view;
-(id<UMDataAccessor>)getDataSource;
-(void) setDataSource:(id<UMDataAccessor>)accessor;
-(NSString *) getBindField;
-(void) setBindField:(NSString *)field;
-(void) bind;
-(void) collect;
-(void) listCollect:(NSString *)path ctx:(id<UMDataAccessor>)ctx;
-(void) umrefresh;
//@optional
//-(void) protocolNameB:(NSString*)string;
@end

