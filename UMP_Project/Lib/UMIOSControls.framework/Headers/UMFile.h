//
//  UMFile.h
//  AnimationDemo
//
//  Created by dingheng on 13+8+9.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMEntityContext.h"
#import "UMEventArgs.h"
#import "XEventArgs.h"


#define DOCMENT  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES) objectAtIndex:0]


/*
 * 文件服务
 */
@interface UMFile : NSObject

/*
 *  @brief	写文件
 *
 *	@param 	 path      文件路径
 *           content   内容,支持Ctx变量
 *           append    写入方式
 *           charset   编码格式
 *
 */
+(void)write:(XEventArgs *)args;

+(BOOL)deleteDir:(XEventArgs *)args;

+(NSString *)isExists:(XEventArgs *)args;

+(NSString *)webSourcePath:(XEventArgs *)args;

/*
 *  @brief	读文件
 *
 *	@param 	 path         文件路径
 *           content      内容,返回的值绑到Ctx的路径
 *           maxlength    读取文件的最大长度,+1表示不限制
 *           charset      编码格式
 *
 */
+(void)read:(XEventArgs *)args;


/*
 *  @brief	删除文件
 *
 *	@param 	 path         文件路径
 *
 */
+(void)delete:(XEventArgs *)args;


/*
 *  @brief	创建目录
 *
 *	@param 	 path         文件路径
 *
 */
+(void)createDir:(XEventArgs *)args;

+(void)download:(XEventArgs *)args;

+(void)upload:(XEventArgs *)args;



+(void)upZipFile:(XEventArgs *)args;
+(NSString *)getFilesDir:(XEventArgs *)args;

/*
 *  @brief	获取文件信息 返回json
 *
 *	@param 	modifiedTime 修改时间/建立时间
            size         文件大小
            path         绝对路径
 *
 */
+(NSString *)getFileInfo:(XEventArgs *)args;

/*
 *  @brief	打开文件浏览器
 *
 *	@param 	filter：文件过滤条件，正则表达式，只显示符合条件的文件，文件夹始终显示
            path:起始的文件路径,iOS只能访问应用内文件，所以这个属性不生效
            callback：选中文件时调用callback事件，取消时不触发
 *
 */
+(void)openFileSelector:(XEventArgs *)args;

@end
