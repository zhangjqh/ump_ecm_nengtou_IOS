//
//  UMSQLite.h
//  AnimationDemo
//
//  Created by dingheng on 13-8-9.
//  Copyright (c) 2013年 dingheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XEventArgs.h"
#import "UMEntityContext.h"
/*
 * Sqlite服务
 */
@interface UMSQLite : NSObject


/*
 *  @brief	初始化一个数据库，如果已经初始化过了，就忽略
 *
 *	@param 	 db         数据库的文件名
 *
 */
+(void)openDB:(XEventArgs *)args;



/*
 *  @brief	删除一个数据库
 *
 *	@param 	 db         数据库的文件名
 *
 */
+(void)deleteDB:(XEventArgs *)args;


/*
 *  @brief	执行一句SQL，无返回值
 *
 *	@param 	 db         数据库的文件名(初始化后，使用初始的db，不用再写db)
 *           sql            SQL
 *
 */
+(void)execSql:(XEventArgs *)args;


+(NSString *)exist:(XEventArgs *)args;

+(id)queryByPage:(XEventArgs *)args;

/*
 *  @brief	执行一句SQL，有返回值，返回的结果转为JSON对象放到指定的Ctx路径
 *
 *	@param 	 db         数据库的文件名(初始化后，使用初始的db，不用再写db)
 *           sql            SQL
             pagesize：一页数据数，默认10（可选参数）
             start：起始索引，默认0（可选参数）
 *           content        返回的值绑到Ctx的路径
 *
 */
+(id)querySql:(XEventArgs *)args;

/*
 * @brief 返回查询结果记录数
 *
 * @pram  db：数据库名字
          sql：sql语句
 */
+(void)queryRecordCount:(XEventArgs *)args;
/*
 * @brief 返回查询结果记录数
 *
 * @pram  db：数据库名字
          sql：sql语句
 */
+(void)queryPageCount:(XEventArgs *)args;
/*
 * @brief 返回查询结果记录数
 *
 * @pram   db：数据库名字
           sql：sql语句
           pagesize：一页数据数，默认10（可选参数）
           start：起始索引，默认0（可选参数）
           pageno：起始页索引，默认0（可选参数）
 */
+(void)queryByPageNo:(XEventArgs *)args;
/*
 * @brief 查询所有数据
 *
 * @pram  db：数据库名字
          sql：sql语句
 */
+(void)queryAll:(XEventArgs *)args;
/*
 * @brief Context对象转成数据库数据
 *
 * @pram  db：数据库名字
          tablename：数据表名字
 */
+(void)ctxToSqlite:(XEventArgs *)args;


+(NSString *)checkTable:(XEventArgs *)args;

/**
 *  获取version
 *
 *  @param args {"db":"name"}
 *
 *  @return version
 */
+(NSString *)getVersion:(XEventArgs *)args;

/**
 *  设置version
 *
 *  @param args {"db":"name","version":"1"}
 */
+(NSString *)setVersion:(XEventArgs *)args;

@end
