/*!
 @header WATaskAcListController.m
 @abstract menucontrolelr的右边视图控制类
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/26 Creation 
 */

#import "WATaskAcListController.h"

//任务审批动作的lable
#define WA_TASK_ACTION_LABLE_TAG 101

@implementation CWATaskAcListController
@synthesize iActionArray;
@synthesize iDelegate;

//出事化成员变量
- (void)initElementsDic:(NSArray *)aArray
{
  for (NSObject* taskAcListVO in aArray)
  {
    if (((CWATaskAcListVO *)taskAcListVO).iActFlag == 99)
    {
      iActionArray = [[NSMutableArray alloc] init];
      [iActionArray addObject:taskAcListVO];
      return;      
    }
    
  }
  iActionArray = [[NSMutableArray alloc] initWithArray:aArray];
}

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
  return [iActionArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  if (cell == nil) 
  {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(140, 0, 180, 44)];
    lable.tag = WA_TASK_ACTION_LABLE_TAG;
    lable.textColor = [UIColor whiteColor];
    lable.backgroundColor = [UIColor clearColor];
    [cell.contentView addSubview:lable];
  }
  cell.textLabel.backgroundColor = [UIColor clearColor];
  cell.backgroundView = [[UIImageView alloc] initWithImage:
                          [UIImage imageNamed:@"task_aclist_nor_cellbg.png"]] ;
  cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:
                                  [UIImage imageNamed:@"task_aclist_tch_cellbg.png"]];
  
  UILabel *lable = (UILabel *)[cell.contentView viewWithTag:WA_TASK_ACTION_LABLE_TAG];
  lable.text = ((CWATaskAcListVO *)[iActionArray objectAtIndex:indexPath.row]).iActionname;
  if (((CWATaskAcListVO *)[iActionArray objectAtIndex:indexPath.row]).iActFlag == 99) 
  {
    cell.userInteractionEnabled = NO;
  }
  else
  {
    cell.userInteractionEnabled = YES;
  }
  return cell;
}
-(void)showActionSheet:(UIView *)view
{
  UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                           delegate:self
                                                  cancelButtonTitle:nil
                                             destructiveButtonTitle:nil
                                                  otherButtonTitles:nil];
  
  for (CWATaskAcListVO *actionVO in self.iActionArray)
  {
    [actionSheet addButtonWithTitle:actionVO.iActionname];
  }
 NSInteger cancleIndex =  [actionSheet addButtonWithTitle:NSLocalizedStringFromTable(@"cancel", @"btarget_task", nil)];
  [actionSheet setCancelButtonIndex:cancleIndex];
  [actionSheet showInView:view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
  if (buttonIndex!=actionSheet.cancelButtonIndex)
  {
     [iDelegate goTaskActionControllerWithData:[iActionArray objectAtIndex:buttonIndex]];
  }
 
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [iDelegate goTaskActionControllerWithData:[iActionArray objectAtIndex:indexPath.row]];
}

@end
