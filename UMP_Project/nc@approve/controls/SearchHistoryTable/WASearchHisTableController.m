//
//  WASearchHisTableController.m
//  ChannelVisit
//
//  Created by 陈荣杭 on 13-12-14.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import "WASearchHisTableController.h"
#import "QuartzCore/QuartzCore.h"
#import "WAUFTool.h"

#define WA_TEXTFIELD_SEARCH_COLOR [UIColor colorWithRed:230.0f/250.0f green:230.0f/250.0f blue:230.0f/250.0f alpha:1.0f]

#define WA_TEXTFIELDSEARCH_CELLIMGODD     @"list_bg_1.png"
#define WA_TEXTFIELDSEARCH_CELLIMGNOTODD  @"list_bg_2.png"
@implementation CWASearchHisTableController
@synthesize iHistoryList;
@synthesize iHisToryKey;
@synthesize iMaxHistoryNum;
@synthesize iSearChtext;
@synthesize iserchtableSelectDelegate;
@synthesize iBaseView;
@synthesize iTable;
@synthesize isCurrentShowKeyBoard;

/*!
 	@abstract cell的高度
 	@discussion	
 */
static CGFloat  const WA_HISTORYCELLHEIGHT= 48.0f;

/*!
 	@abstract
 	@discussion	历史记录的个数
 */
static NSInteger const WA_HISTORY_NUM = 6;



#define WA_HISTORYCELL_FONT17 [UIFont fontWithName:@"STHeitiSC-Medium" size:17.0]
#define WA_HISTORYCELL_FONT24 [UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]


//初始化
-(id)initWithSavekey:(NSString *)key
                            
{
  self =[super init];
  if (self)
  {
    self.iHisToryKey = key;
    [self createHistory];
  }
  return self;
}
/*!
 @method
 @abstract
 @discussion
 @result	return 操作系统是IOS7以上 return YES
 */
-(BOOL)isHeigherIOSVersion

{
  BOOL flag = NO;
  if (WA_CURENT_OS_V >=7.0)
  {
    flag = YES;
  }
  return flag;
}
-(void)setExtraCellLineHidden: (UITableView *)tableView
{
  UIView *view =[ [UIView alloc]init];
  view.backgroundColor = [UIColor clearColor];
  [tableView setTableFooterView:view];
}
//添加table
-(void)addTable:(CGRect)tableFrame onSuperView:(UIView *)aView
{
 
  if (self.iMaxHistoryNum<=0)
  {
    self.iMaxHistoryNum = WA_HISTORY_NUM;
  }
  CGFloat height = self.iMaxHistoryNum *WA_HISTORYCELLHEIGHT;
  if (height > tableFrame.size.height)
  {
    tableFrame.size.height = height;
  }
  iBaseView = [[UIView alloc]initWithFrame:tableFrame];
  tableFrame.origin.x = 0;
  tableFrame.origin.y = 0;
  iTable = [[UITableView alloc]initWithFrame:tableFrame];
  [iBaseView addSubview:iTable];
  [aView addSubview:iBaseView];
  iBaseView.hidden = YES;
  iTable.hidden = YES;
  iTable.delegate = self;
  iTable.dataSource = self;
  UIColor *bgColor = nil;
  UIColor *seperateColor = nil;
  
    
    bgColor = WACOLOR(245, 245, 245);
    seperateColor = WACOLOR(223, 223, 223);
  if ([self.iTable respondsToSelector:@selector(setSeparatorInset:)])
  {
     //self.iTable.separatorInset = UIEdgeInsetsZero;
  }
  
    [self setExtraCellLineHidden:self.iTable];
 
  
	[self.iTable setBackgroundColor:bgColor];
  
  self.iTable.separatorColor = seperateColor;
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShowWithNotification:) name:UIKeyboardDidShowNotification object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHideWithNotification:) name:UIKeyboardDidHideNotification object:nil];

}

-(void)addTableWithTable:(CGRect)tableFrame
             onSuperView:(UIView *)aView
        withTheViewFrame:(CGRect)viewFrame
{
  
  if (self.iMaxHistoryNum<=0)
  {
    self.iMaxHistoryNum = WA_HISTORY_NUM;
  }
  CGFloat height = self.iMaxHistoryNum *WA_HISTORYCELLHEIGHT;
  if (height > tableFrame.size.height)
  {
    tableFrame.size.height = height;
  }
  iBaseView = [[UIView alloc]initWithFrame:viewFrame];
  iTable = [[UITableView alloc]initWithFrame:tableFrame];
  [iBaseView addSubview:iTable];
  [aView addSubview:iBaseView];
  iBaseView.hidden = YES;
  iTable.hidden = YES;
  iTable.delegate = self;
  iTable.dataSource = self;
 
  UIColor *bgColor = nil;
  UIColor *seperateColor = nil;
 
    
    bgColor = WACOLOR(248, 248, 248);
    seperateColor = WACOLOR(223, 223, 223);
  if ([self.iTable respondsToSelector:@selector(setSeparatorInset:)])
  {
   //self.iTable.separatorInset = UIEdgeInsetsZero;
  }
  
    [self setExtraCellLineHidden:self.iTable];
 
  
	[self.iTable setBackgroundColor:bgColor];
  
  self.iTable.separatorColor = seperateColor;
  
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShowWithNotification:) name:UIKeyboardDidShowNotification object:nil];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHideWithNotification:) name:UIKeyboardDidHideNotification object:nil];
  
}

//键盘确认按钮点击 子类调用 隐藏table 刷新数据
-(void)textFieldReturn
{
  [self hiddenOrShowTable:YES];
  
}
//隐藏显示table
-(void)hiddenOrShowTable:(BOOL)showOrHidden
{
  iBaseView.hidden = showOrHidden;
  iTable.hidden = showOrHidden;
  [iTable reloadData]; 
}
//计算tableView 的高度
- (void)resetTableFrame:(NSNotification *)aNotification
{
  //获取键盘的高度
  NSDictionary *userInfo = [aNotification userInfo];
  NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
  CGRect keyboardRect = [aValue CGRectValue];
  //键盘的纵坐标
  CGFloat keyBoard_y = keyboardRect.origin.y;
  //调用者传递的 frame
  CGRect baseFrame = self.iBaseView.frame;
  CGFloat Y = baseFrame.origin.y;
  
  //重新计算table的高度
  //baseView  frame
  CGFloat tableHeight =  keyBoard_y - Y-20.0f;
  CGFloat baseheightm = tableHeight+20.0f;
  baseFrame.size.height = baseheightm;
  self.iBaseView.frame = baseFrame;
   //table  frame
  //ios7适配 键盘与弹出tableview直接的空隙
  if (WA_CURENT_OS_V >= 7.0f) {
    baseFrame.size.height = tableHeight + 20;
  }
  else
  {
    baseFrame.size.height = tableHeight;
  }
  baseFrame.origin.x = 0;
  baseFrame.origin.y = 0;
  self.iTable.frame = baseFrame;
  
    
}

//显示键盘 table显示
- (void)keyboardDidShowWithNotification:(NSNotification *)aNotification
{
  if (self.isCurrentShowKeyBoard)
  {
    [self resetTableFrame:aNotification];
    [self hiddenOrShowTable:NO];
    self.isCurrentShowKeyBoard = NO;
  }
  
}
//键盘隐藏 table 隐藏
- (void)keyboardDidHideWithNotification:(NSNotification *)aNotification
{
  
    [self hiddenOrShowTable:YES];
   self.isCurrentShowKeyBoard = NO;
}
//创建历史记录
-(void)createHistory
{
  NSUserDefaults *hisDefaults = [NSUserDefaults standardUserDefaults];
  self.iHistoryList = [hisDefaults valueForKey:self.iHisToryKey];
  if ([self.iHistoryList count]==0)
  {
    iHistoryList = [[NSMutableArray alloc]initWithObjects:NSLocalizedStringFromTable(ALL,TEXTFILDHAVEHISTORYMUTILANGUAGE, nil), nil];
    [hisDefaults setObject:self.iHistoryList forKey:self.iHisToryKey];
  }
}

//添加搜索历史
-(void)addHistory:(NSString *)searchtext
{
  if (!searchtext ||[@"" isEqualToString:searchtext])
  {
    return;
  }
  if (self.iMaxHistoryNum<=0)
  {
    self.iMaxHistoryNum = WA_HISTORY_NUM;
  }
  NSUserDefaults *hisDefaults = [NSUserDefaults standardUserDefaults];
  NSMutableArray *historyArray =[[NSMutableArray alloc]initWithArray:[hisDefaults valueForKey:self.iHisToryKey]];
  //记录中有该条数据则返回
  if ([historyArray containsObject:searchtext])
  {
    return;
  }
  //记录中没有该条数据
  else
  {
    int count = [historyArray count];
    //记录总数达到上限，移除最后一条数据(数组中的倒数第二条 最后一条是全部 保留)
    if (count ==self.iMaxHistoryNum)
    {
      [historyArray removeObjectAtIndex:count-2];
    }
    [historyArray insertObject:searchtext atIndex:0];
    //保存
    [hisDefaults setObject:historyArray forKey:self.iHisToryKey];
    self.iHistoryList = historyArray;
  }
}


#pragma mark tableView的代理方法们

//生成cell
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
  static NSString *TableSampleIdentifier = @"TableSampleIdentifier";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                           TableSampleIdentifier];
  if (cell == nil)
  {
    cell = [[UITableViewCell alloc]
             initWithStyle:UITableViewCellStyleDefault
             reuseIdentifier:TableSampleIdentifier];
  }
  
  NSUInteger row = [indexPath row];
  cell.textLabel.text = [self.iHistoryList objectAtIndex:row];
   cell.accessoryType = UITableViewCellAccessoryNone;
  cell.textLabel.backgroundColor = [UIColor clearColor];
  UIFont *textFont = nil;
  UIColor *textColor = nil;
  if ([self isHeigherIOSVersion])
  {
    textFont = WA_HISTORYCELL_FONT24;
    textColor = WACOLOR(31, 31, 31);
  }
  else
  {
    textFont = WA_HISTORYCELL_FONT17;
    textColor = WACOLOR(31, 31, 31);
//    if ((indexPath.row +1)%2== 0)
//    {
//      cell.backgroundView = [[[UIImageView alloc]
//                              initWithImage:[UIImage imageNamed:WA_TEXTFIELDSEARCH_CELLIMGNOTODD]] autorelease];
//    }
//    else
//    {
//      cell.backgroundView = [[[UIImageView alloc]
//                              initWithImage:[UIImage imageNamed:WA_TEXTFIELDSEARCH_CELLIMGODD]] autorelease];
//    }
  }
  cell.textLabel.font = textFont;
  cell.textLabel.textColor = textColor;
  cell.backgroundColor = WACOLOR(248, 248, 248);
  UIView *view = [[UIView alloc] initWithFrame:cell.frame];
  cell.selectedBackgroundView = view;
  cell.selectedBackgroundView.backgroundColor = WACOLOR(240.0f, 240.0f, 240.0f);
  return cell;
}
//一个section cell 的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  
  return [self.iHistoryList count];
}

// 选中某一行
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
  self.iSearChtext = cell.textLabel.text;
  NSString *textShow = cell.textLabel.text;
  if ([self.iSearChtext isEqualToString:NSLocalizedStringFromTable(ALL,TEXTFILDHAVEHISTORYMUTILANGUAGE, nil)])
  {
    self.iSearChtext = @"";
    textShow = @"";
  }
  [iserchtableSelectDelegate searchtableSelect:self.iSearChtext andResShow:textShow];
}


// 行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return WA_HISTORYCELLHEIGHT;
}

@end
