/*!
 @header WASearchBnsHandler.m
 @abstract 可用量搜索的的bnshandler
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import "WASearchBnsHandler.h"
#import "WASearchDef.h"
#import "WAFileUtil.h"

@implementation CWASearchBnsHandler

static NSString * WA_LISTCACHE_HISTORYKEY = @"histroy";

//存储历史记录
-(BOOL)saveASearchHistory:(NSString*)aSearchHistory 
                 WithPath:(NSString*)aCachePath
{
    BOOL isOperateSec = NO;
    //保存最近5条数据    
    //得到文件指针，并初始化文件
    NSFileManager* fileManager=[NSFileManager defaultManager];
    //如果无此文件，则设立文件
    if(![fileManager fileExistsAtPath:aCachePath])
    {
        [CWAFileUtil createFileWithPath:aCachePath content:nil];
    }
    
    //取数据
    NSMutableArray *iRecentContactArray =
    [[NSMutableArray alloc] initWithContentsOfFile:aCachePath];
    NSMutableArray   *tempArray = [[NSMutableArray alloc] init];
    if ([iRecentContactArray count]!=0)
    {
        for (NSDictionary* contactInfo in iRecentContactArray) 
        {
            NSString * aHistory = [contactInfo objectForKey:WA_LISTCACHE_HISTORYKEY];
            [tempArray addObject:aHistory];
        }
    }
    
    NSMutableArray *aSearchArray = [[NSMutableArray alloc] initWithArray:iRecentContactArray];
    //如果第一条和当前要存储的文本相同,不存储
    if ([aSearchArray count]>=1) 
    {
        NSString * searchHistroy = [[aSearchArray objectAtIndex:0] 
                                    objectForKey:WA_LISTCACHE_HISTORYKEY];
        if (![searchHistroy isEqualToString:aSearchHistory])
        {
            //不相同
            if ([aSearchArray count] >=5) 
            {
                [aSearchArray removeLastObject];
            }
            NSDictionary* contactInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                         aSearchHistory,WA_LISTCACHE_HISTORYKEY,nil];
            [aSearchArray insertObject:contactInfo atIndex:0];
        }
    }
    else 
    {
        NSDictionary* contactInfo = [NSDictionary dictionaryWithObjectsAndKeys:
                                     aSearchHistory,WA_LISTCACHE_HISTORYKEY,nil];
        [aSearchArray insertObject:contactInfo atIndex:0];
    }
    //写文件
    [aSearchArray writeToFile:aCachePath atomically:YES];
    
    return isOperateSec;
}

//获取历史记录数组
-(NSMutableArray*)getHistoryArray:(NSString*)aCachePath
{
    //得到文件指针，并初始化文件
    NSFileManager* fileManager=[NSFileManager defaultManager];
    //如果无此文件，则设立文件
    if(![fileManager fileExistsAtPath:aCachePath])
    {
        [CWAFileUtil createFileWithPath:aCachePath content:nil];
    }
    //取数据
    NSMutableArray *iRecentContactArray =
    [[NSMutableArray alloc] initWithContentsOfFile:aCachePath];
    
    NSMutableArray   *tempArray = [[NSMutableArray alloc] init];
    
    if ([iRecentContactArray count]!=0)
    {
        for (NSDictionary* contactInfo in iRecentContactArray) 
        {
            NSString * aHistory = [contactInfo objectForKey:WA_LISTCACHE_HISTORYKEY];
            [tempArray addObject:aHistory];
        }
    }
    return tempArray;
}

@end
