//
//  Common.h
//  AnimationDemo

//  基础类库

//  Created by dingheng on 13-5-25.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Common : NSObject

#ifdef __cplusplus
extern "C" {
#endif
    
    // 从指定位置开始查找子串
    int findString(NSString* string, NSString* findWhat, int startPos);
    
    // 从指定位置开始查找字符
    int findChar(NSString* string, char findWhat, int startPos);
    int findCharCount(NSString* string, char findWhat, int startPos);
    
    // 从指定位置反向查找字符
    int reverseFindChar(NSString* string, char findWhat, int startPos);
    
    // 根据起始位置取子串
    NSString* subString(NSString* string, int start, int stop);
    
    // 根据收尾标识，返回匹配的首个子字符串
    NSString* findSubString(NSString* string, NSString* head, NSString* tail, int startPos);
    
    // 根据指定分隔符取指定序号的子串
    NSString* getField(NSString* source, int index, char delimiter);
    
    // 替换指定起始位置的字符串
    void replaceString(NSMutableString* string, int start, int stop, NSString* replaceWith);
    
    // 查找并替换
    NSString* findAndReplaceString(NSString* string, NSString* findWhat, NSString* replaceWith);
    
    // 判断指定字符串是否EMail地址
	BOOL isEMailAddress(NSString* string);
	
	// 判断并规范化电话号码
	NSString* regularPhoneNumber(NSString* string);
    
#ifdef __cplusplus
}
#endif


@end
