

#import "WANormallyNoteListController.h"
#import "WANormallyNoteListViewController.h"
#import "WAIosVersionAdaptor.h"
#import "WANoDataView.h"

@implementation CWANormallyNoteListController

@synthesize iNoteList;
@synthesize iNormallyNoteListViewController;
@synthesize delegate;

- (id)init
{
  self = [super init];
  if (self)
  {
    iNormallyNoteListBnsHandler = [[CWANormallyNoteListBnsHandler alloc] init];
  }
  return self;
}

- (void)getNoteListWithTaskID:(NSString *)aTaskID
                WithStatusKey:(NSString *)aStatusKey
              WithStatusValue:(NSString *)aStatusValue
							 WithActionCode:(NSString *)aActionCode
              WithServiceCode:(NSString *)aServiceCode
{
	CWANormallyNoteListRequestVO *normallyNoteListRequestVO = [[CWANormallyNoteListRequestVO alloc] init];
	normallyNoteListRequestVO.iStatuscode = aServiceCode;
	normallyNoteListRequestVO.iStatuskey = aStatusKey;
	normallyNoteListRequestVO.iTaskid = aTaskID;
	normallyNoteListRequestVO.iActioncode = aActionCode;
	[normallyNoteListRequestVO fillVoDictionary];
	[iNormallyNoteListBnsHandler getNormalNoteWithVO:normallyNoteListRequestVO
																	 WithServiceCode:aServiceCode
																				 withBlock:
	 ^(NSDictionary *aDic, NSError *aError)
	{
		if(!aError)
		{
      self.iNoteList = [self resolveResult:aDic];
      if([iNoteList count] > 0)
      {
        iNormallyNoteListViewController.iNodateView.hidden = YES;
        iNormallyNoteListViewController.iTableView .hidden = NO;
        [iNormallyNoteListViewController.iTableView reloadData];
      }
      else
      {
        CWANoDataView  *cell = [[[NSBundle mainBundle] loadNibNamed:@"WANoDataView" owner:self options:nil] objectAtIndex:0];
        CGFloat y = 64;
        iNormallyNoteListViewController.iNodateView.frame =CGRectMake(0, y, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-y);
        iNormallyNoteListViewController.iNodateView.image = nil;
        iNormallyNoteListViewController.iNodateView.backgroundColor = WACOLOR(240, 240, 240);
        [iNormallyNoteListViewController.iNodateView addSubview:cell];
        iNormallyNoteListViewController.iNodateView.hidden = NO;
        iNormallyNoteListViewController.iTableView .hidden = YES;
      }
      
		}
		else
		{
			UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil
																													message:[aError domain]
																												 delegate:nil
																								cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
																								otherButtonTitles:nil];
			[alertView show];
		}
	}];
}

static NSString *WA_NOTELIST_KNOTELIST = @"notelist";
static NSString *WA_NOTELIST_KNOTE = @"note";
static NSString *WA_NOTELIST_KOPINION= @"opinion";

#pragma mark 解析数据
- (NSArray *)resolveResult:(NSDictionary *)aResult
{
	NSMutableArray *result = [[NSMutableArray alloc] initWithCapacity:1];
  NSArray *servicecodes = [aResult objectForKey:WA_HTTP_RTN_SERVICECODE_KEY];
  if(servicecodes && [servicecodes count] > 0)
  {
    NSString *serviceCode = [servicecodes objectAtIndex:0];
    if ([aResult objectForKey:serviceCode] != [NSNull null])
    {
      NSArray *noteListDics = [aResult objectForKey:serviceCode];
      NSDictionary *noteListDic = [noteListDics objectAtIndex:0];
      NSDictionary *noteDic = [noteListDic objectForKey:WA_NOTELIST_KNOTELIST];
      NSArray *noteList = [noteDic objectForKey:WA_NOTELIST_KNOTE];
      for (int i = 0; i < [noteList count] ; i++)
      {
        NSDictionary *aNoteDic = [noteList objectAtIndex:i];
        CWANormalNoteListViewVO *normalNoteListViewVO = [[CWANormalNoteListViewVO alloc] init];
        normalNoteListViewVO.iName = [aNoteDic objectForKey:WA_NOTELIST_KOPINION];
        [result addObject:normalNoteListViewVO];
      }
    }
  }
	return result;
}

- (void)leftBtnClick:(id)sender
{
  [iNormallyNoteListViewController.navigationController popViewControllerAnimated:YES];
}


#pragma mark 实现UITableViewDataSource委托
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [iNoteList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *cellIndentify = @"cellIndentify";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentify];
    cell.frame = CGRectMake(16, 12, 288, 24);
    [CWAIosVersionAdaptor adaptTableViewCell:cell];
	if(!cell)
	{
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
																	reuseIdentifier:cellIndentify];
	}
  CWANormalNoteListViewVO *normalNoteListViewVO = (CWANormalNoteListViewVO *)[iNoteList objectAtIndex:indexPath.row];
  
	cell.textLabel.text = normalNoteListViewVO.iName;
  cell.textLabel.textColor = WA_TASK_COLOR_31;
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
	return cell;
}

#pragma  mark 实现UITableViewDelegate委托
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 48.0f;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
  return 24.0f;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  CWANormalNoteListViewVO *normalNoteListViewVO = (CWANormalNoteListViewVO *)[iNoteList objectAtIndex:indexPath.row];
  if([delegate respondsToSelector:@selector(selectedNote:)])
  {
    [delegate performSelector:@selector(selectedNote:) withObject:normalNoteListViewVO];
  }
  [iNormallyNoteListViewController.navigationController popViewControllerAnimated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
}


@end
