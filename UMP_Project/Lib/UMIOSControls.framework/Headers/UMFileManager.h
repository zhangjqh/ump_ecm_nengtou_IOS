//
//  UMFileManager.h
//  UMCommon
//
//   本地文件管理类
//
//  Created by dingheng on 13-4-17.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    UMFileReading = 0,    //只读
    UMFileUpdating,       //读写
    
}UMFileReaderModle;

typedef enum {
    
    UMFileReWriting=0,   //清空直接写入
    UMFileAddWriting,    //追加写入
    
}UMFileWriteModle;


@interface UMFileManager : NSObject

@property (nonatomic, readonly) NSString *homeDir;//app根目录
@property (nonatomic, readonly) NSString *documentDir;//app Document目录
@property (nonatomic, readonly) NSString *cacheDir;//app 缓存目录
@property (nonatomic, readonly) NSString *tempDir;//app temp目录
/*
 * 单例对象
 */
+ (UMFileManager *)sharedInstance;

-(BOOL)isExit:(NSString *)path;

/*
 *  @brief	读取本地文件数据
 *
 *	@param 	readModle 读取文件类型
 *          path 路径
 *
 *  @return data数据 or nil(打开错误)
 */
-(NSData *)openReader:(NSString *)path readModle:(UMFileReaderModle)readModle;
/*
 *  @brief	操作本地文件
 *
 *	@param 	writeModle 写入类型
 *          path 路径
 data 写入的数据
 *
 *  @return 成功标识
 */
-(BOOL)openWriter:(NSString *)path writeModle:(UMFileWriteModle)writeModle writeData:(NSData*)data;
/*
 *  @brief	关闭文件
 *
 *	@param 	path 路径
 *
 *  @return 成功标识
 */
-(BOOL)close:(NSString *)path;


/****--------------------IOS沙盒下，目录文件管理-----------------*****/

/*
 *  @brief	创建一个目录
 *
 *	@param 	name 目录名
 *          path 路径   if(path= nil) IOS默认在Docments目录下创建
 *
 *  @return 成功标识
 */
-(BOOL)creatDir:(NSString *)name filePath:(NSString *)path;
-(BOOL)creatDirpath:(NSString *)path;
/*
 *  @brief	创建本地文件并且写入数据
 *
 *	@param 	name 文件名字
 *          path 路径   if(path= nil) IOS默认在Docments目录下创建
 data json对象
 *          encoding 编码格式 默认:???
 *
 *  @return 成功标识
 */
-(BOOL)writeToLocal:(NSString *)name filePath:(NSString *)path data:(NSData *)data;

/*
 *  @brief	读取本地文件
 *
 *	@param 	name 文件名字
 *          path 路径   if(path= nil) IOS默认在Docments目录下创建
 *
 *  @return data数据
 */
-(NSData *)readFromLocal:(NSString *)name filePath:(NSString *)path;

/*
 *  @brief	移除本地文件
 *
 *	@param 	name 文件名字
 *          path 路径   if(path= nil) IOS默认在Docments目录下创建
 *
 *  @return 成功标识
 */
-(BOOL)removeFromLocal:(NSString *)name filePath:(NSString *)path;


-(BOOL)removeFile:(NSString *)path;

@end
