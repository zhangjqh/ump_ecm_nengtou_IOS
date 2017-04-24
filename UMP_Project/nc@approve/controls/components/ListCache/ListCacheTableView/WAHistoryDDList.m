/*!
 @header WAHistoryDDList.m
 @abstract 
 @author xiaomumu
 @version 1.00 2012/8/1 Creation 
 */

#import "WAHistoryDDList.h"
#import "WASearchDef.h"
#import "WAUFTool.h"
@interface CWAHistoryDDList ()

@end

#pragma mark 历史记录
@implementation CWAHistoryDDList

@synthesize iSelectedText, iSelectArray, iHistoryDelegate;

#pragma mark -
#pragma mark View lifecycle

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
- (void)viewDidLoad 
{
    [super viewDidLoad];
 
  UIColor *bgColor = nil;
  UIColor *seperateColor = nil;
  //IOS7 以上版本
	if ([self isHeigherIOSVersion])
  {
 
    bgColor = WACOLOR(245, 245, 245);
    seperateColor = WACOLOR(223, 223, 223);
    //self.tableView.separatorInset = UIEdgeInsetsZero;
    [self setExtraCellLineHidden:self.tableView];
  }
  else
  {
    self.tableView.layer.borderWidth = 1;
    bgColor = WA_SEARCH_COLOR;
    seperateColor = [UIColor grayColor];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
  }

	[self.tableView setBackgroundColor:bgColor];
  
  self.tableView.separatorColor = seperateColor;
    self.tableView.dataSource = self;
    self.tableView.delegate   = self;
  
	self.iSelectedText = nil;
	NSMutableArray * listarray = [[NSMutableArray alloc] init];
    self.iSelectArray = listarray;
}

//更新历史记录
- (void)updateData:(NSMutableArray*)aMutableArray
{
	[iSelectArray removeAllObjects];
	
    if (aMutableArray != nil)
    {
        int intArraySize = [aMutableArray count];
        for (int index = 0; index<intArraySize;index++)
        {
            id object = [aMutableArray objectAtIndex:index];
            [iSelectArray addObject:object];
        }
    }
    //添加全部选项
    [iSelectArray addObject:NSLocalizedStringFromTable(@"SearchAll", WA_MUTILANGUE_FILENAME, nil)];
	[self.tableView reloadData];
}

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView 
 numberOfRowsInSection:(NSInteger)section 
{
    return [iSelectArray count];
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = (UITableViewCell *)[tableView 
                                                dequeueReusableCellWithIdentifier:CellIdentifier];
    //cell的生成
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                       reuseIdentifier:CellIdentifier];
        
    }
    //设置奇偶数不同的背景
  
    cell.textLabel.backgroundColor = [UIColor clearColor];
  
  if (![self isHeigherIOSVersion])
  {
    UIColor * color = WA_SEARCH_COLOR;
    [cell setBackgroundColor:color];
    if ((indexPath.row +1)%2== 0) 
    {
        cell.backgroundView = [[UIImageView alloc]
                                initWithImage:[UIImage imageNamed:WA_SEARCH_CELLIMGNOTODD]];
    }
    else 
    {
        cell.backgroundView = [[UIImageView alloc]
                                initWithImage:[UIImage imageNamed:WA_SEARCH_CELLIMGODD]];
    }
  }
  else
  {
    [cell setBackgroundColor:WACOLOR(245, 245, 245)];
    cell.textLabel.font = [UIFont fontWithName:@"HiraKakuProN-W3" size:16];
    cell.textLabel.textColor = WACOLOR(31, 31, 31);
  }
    
    //设置cell的内容
    //更具条件不同添加不同的cell子view
    if ([indexPath row]<[iSelectArray count])
    {
        //显示历史记录
        cell.textLabel.text = [NSString stringWithFormat:@"%@",
                               [iSelectArray objectAtIndex:indexPath.row]];
    }
    return cell;
}

#pragma mark -
#pragma mark Table view delegate
//历史记录的tableview cell的高度
- (CGFloat)tableView:(UITableView *)tableView 
heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return 44;
}

//历史记录的tableview选中了某一个cell
- (void)tableView:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
    if ([indexPath row]<[iSelectArray count]-1)
    {
        //用户点击了普通的一行
        self.iSelectedText = [iSelectArray objectAtIndex:[indexPath row]];
    }
    else if([indexPath row]==[iSelectArray count]-1)
    {
        //点击最后一行，意味着用户点击的事“全部”
        self.iSelectedText = @"";
    }
    //通知listCache，用户点击了历史记录
	[iHistoryDelegate clickOneRow:iSelectedText];
}

@end
