//
//  UMLogin.h
//  UMIOSControls
//
//  Created by zhangnan on 13-4-23.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import "UMView.h"

@interface UMLogin : UMView{
    
}

@property(nonatomic, assign) NSString   *uerNameLabelText;
@property(nonatomic, assign) NSString   *userName;
@property(nonatomic, assign) NSString   *passwordLabelText;
@property(nonatomic, assign) NSString   *password;
@property(nonatomic, assign) NSString   *titleText;

-(void)addTarget:(id)loginTarget loginAction:(SEL)action;
@end
