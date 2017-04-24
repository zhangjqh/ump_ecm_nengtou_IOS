/*!
 @header WATaskAcListController.m
 @abstract menucontrolelr的右边视图控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WAMenuListController.h"
#import "WAMenuListViewController.h"


@implementation CWAMenuListController


static NSString *WA_MENU_LIST_NOR_CELLBG = @"menu_list_nor_cellbg.png";
static NSString *WA_MENU_LIST_TCH_CELLBG = @"menu_list_tch_cellbg.png";

@synthesize iMenuArray;
@synthesize iMenuListViewController;


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
  UIView *backgroundView = [[UIView alloc] init];
  return backgroundView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [iMenuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) 
  {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(230, 0, 180, 44)];
    lable.tag = 101;
    lable.textColor = [UIColor whiteColor];
    lable.backgroundColor = [UIColor clearColor];
    [cell.contentView addSubview:lable];
  }
  cell.textLabel.backgroundColor = [UIColor clearColor];
  cell.backgroundView = [[UIImageView alloc] initWithImage:
                          [UIImage imageNamed:WA_MENU_LIST_NOR_CELLBG]];
  cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:WA_MENU_LIST_TCH_CELLBG]];
  
  UILabel *lable = (UILabel *)[cell.contentView viewWithTag:101];
  lable.text = [iMenuArray objectAtIndex:indexPath.row];
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if(iMenuListViewController.iDelegate &&
     [iMenuListViewController.iDelegate respondsToSelector:@selector(didSelectWithIndexPath:)])
  {
    [iMenuListViewController.iDelegate performSelector:@selector(didSelectWithIndexPath:)
                                            withObject:indexPath];
  }
}

@end
