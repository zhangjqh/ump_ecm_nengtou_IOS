//
//  UMSerchList.h
//  UMIOSControls
//
//  Created by dingheng on 13-4-23.
//  Copyright (c) 2013年 zhangnan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UMBindView.h"

@interface UMSerchList : UMBindView
{
}
@property(nonatomic, strong) NSString*  keyword;
@property(nonatomic, strong) UIColor*   colorOfKey;
@property(nonatomic, strong) UIFont*    fontOfKey;

@property(nonatomic, strong) NSString*  placeholder;//搜索关键字
@property(nonatomic, assign) int        historyNumber;//历史记录数
@property(nonatomic, assign) boolean_t  localstorage;//是否启用本地存储存储搜索结果
@property(nonatomic, strong) NSString*  searchIconPath;
@property(nonatomic, strong) NSString*  searchDelIconPath;
-(void)addSearchClickAction:(id)control action:(SEL)SearchListAction;

- (id)getBindValue;
@end

