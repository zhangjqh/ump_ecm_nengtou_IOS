/*!
 @header WASearchController.m 
 @abstract 可用量搜索的controller
 @author xiaomumu
 @version 1.00 2012/7/6 Creation 
 */

#import "WASearchController.h"
#import "WAMenuViewController.h"
#import "WASearchViewController.h"
#import "WAUFTool.h"
@interface CWASearchController ()

/*!
 @method
 @abstract searchbar搜索按钮点击事件
 @author xiaomumu
 */
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar;

/*!
 @method
 @abstract searchBarcancel按钮点击事件
 */
- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar;

#pragma mark 如下这些操作可能会基于使用者的情况调用
/*!
 @mthod 
 @abstract 左侧按钮点击事件
 */
-(IBAction)leftBtAction:(id)sender;

/*!
 @mthod
 @abstract 右侧按钮点击事件
 */
-(IBAction)rightBtAction:(id)sender;

@end

@implementation CWASearchController
@synthesize iSearchControllerDelegate;
@synthesize iSearchBarStyle;
#pragma mark searchViewController 的委托

-(id)init
{
    self = [super init];
    if (self)
    {
        //初始化bnshanler
        iCWASearchBnsHandler = [[CWASearchBnsHandler alloc] init];
    }
    return self;
}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    //是否在当前界面显示
    BOOL bIsCurViewSearch = [self.iSearchControllerDelegate getIsCurViewSearch];
    if (bIsCurViewSearch == YES)
    {
        //是在当前界面搜索
        [searchBar setShowsCancelButton:YES animated:YES];
      if (WA_CURENT_OS_V<7.0&&iSearchBarStyle == ESTYLEIOS7SYS)
      {
        
        for (UIView *searchbuttons in searchBar.subviews)
        {
          if ([searchbuttons isKindOfClass:[UIButton class]])
          {
            UIButton *cancelButton = (UIButton*)searchbuttons;
            cancelButton.enabled = YES;
            [cancelButton setTitleColor:WACOLOR(104, 143, 223) forState:UIControlStateNormal];
            UIImage *bgImg = [[UIImage alloc]init];
            [cancelButton setBackgroundImage:bgImg forState:UIControlStateNormal];
            [cancelButton setBackgroundImage:bgImg forState:UIControlStateHighlighted];
            [cancelButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
            [cancelButton.titleLabel setShadowOffset:CGSizeMake(0, 0)];
            cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
            break;
          }
          
          
          
        }
        
      }

              //开始编辑显示历史记录
        [self.iSearchControllerDelegate showHistoryList];
        
        return YES;
    }
    else 
    {
        //不是当前界面搜索，要发送消息
        [self.iSearchControllerDelegate sendStartEditSeartBar];
        return NO;
    }
}

- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar
{
    //隐藏历史记录
    [self.iSearchControllerDelegate hiddenHistoryList];

    return YES;
}

- (BOOL)searchBar:(UISearchBar *)searchBar 
shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    NSString * curTextStr = [searchBar text];
    
    //当前已有的长度
    int curTextLength    = [curTextStr length];
    //要减去的长度
    int removeTextLength = range.length;
    //增加的长度
    int addTextLenght    = [text length];
    
    int resultLenght = curTextLength + addTextLenght - removeTextLength;
    //回车也会算一个字符，但是，如果回车不容许添加，则不回响应搜索事件,所以，是回车就不管数目了
    if (resultLenght >ConditionMaxLength && ![text isEqualToString:@"\n"])
    {
        return NO;
    }
    else 
    {
        return YES;
    }
}

//searchbar的搜索按钮
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    [searchBar resignFirstResponder];
    
    BOOL bIsCancelQuit = [self.iSearchControllerDelegate getIsCancelQuit];
    if (bIsCancelQuit)
    {
        [searchBar setShowsCancelButton:YES animated:NO];
    }
    else 
    {
        [searchBar setShowsCancelButton:NO animated:YES];
    }
    
    NSString * searchText  = searchBar.text;
    if([self getHistoryCachePath])
    {
      NSString * historyPath = [self getHistoryCachePath];
      //保存历史记录
      [iCWASearchBnsHandler saveASearchHistory:searchText WithPath:historyPath];
    }
    //重置搜索相关的状态
    [self.iSearchControllerDelegate setSearchPos];

    //开始搜索
    [self.iSearchControllerDelegate startQueryWithCondition:searchText];
}

//searchbar上的取消按钮
- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar
{
    [searchBar resignFirstResponder];
    BOOL bIsCancelQuit = [self.iSearchControllerDelegate getIsCancelQuit];
    if (bIsCancelQuit)
    {
        [searchBar setShowsCancelButton:YES animated:NO];
    }
    else 
    {
        [searchBar setShowsCancelButton:NO animated:YES];
    }
}

//缓存文件路径
-(NSString*)getHistoryCachePath
{
    if([self.iSearchControllerDelegate getHistoryCacheFileName])
    {
      NSString * name= [NSString stringWithFormat:@"%@", [self.iSearchControllerDelegate class]];
      NSString * fileName = [NSString stringWithFormat:@"%@%@History.wacf",name,
                             [self.iSearchControllerDelegate getHistoryCacheFileName]];
      NSString *path = [CWALocalStorageHandler
                        createDirOfLastLoginUserWithBtarget:@"SearchListCache"];
      path = [NSString stringWithFormat:@"%@/%@",path,fileName];
      return path;
    }
    else
    {
    return nil;
    }
}

//获取历史记录的array
-(NSMutableArray*)getHistoryArray
{
    if([self getHistoryCachePath])
    {
      NSString * path = [self getHistoryCachePath];
      NSMutableArray * tempArray = [iCWASearchBnsHandler getHistoryArray:path];
      return tempArray;
    }
    else
    {
      return nil;
    }
}

//取消按钮事件
-(IBAction)cancelSearchBtAction:(id)sender
{
    if ([self.iSearchControllerDelegate respondsToSelector:@selector(cancelSearch)])
    {
        [self.iSearchControllerDelegate cancelSearch];
    }
}

#pragma mark 如下这些操作可能会基于使用者的情况调用
//左侧按钮点击事件
-(IBAction)leftBtAction:(id)sender
{
    if ([self.iSearchControllerDelegate respondsToSelector:@selector(leftBtAction:)])
    {
        [self.iSearchControllerDelegate leftBtAction:sender];
    }
}

//右侧按钮点击事件
-(IBAction)rightBtAction:(id)sender
{
  if ([self.iSearchControllerDelegate respondsToSelector:@selector(rightBtAction:)])
    {
        [self.iSearchControllerDelegate rightBtAction:sender];
    }
}

@end
