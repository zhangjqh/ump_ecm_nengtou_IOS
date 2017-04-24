/*!
 @header WAAttentionViewController.m
 @abstract 关注视图view
 @author dequan
 @copyright ufida
 @version 1.00 2012/09/11 Creation 
 */

#import "WAAttentionViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "AppDelegate.h"


@interface CWAAttentionViewController ()
/*!
 @method
 @abstract 开始及诶按布局
 @discussion 
 @result void
 */
- (void)setViewStyle;

/*!
 @method
 @abstract 设置navigationbar的leftbar
 @discussion 
 @param aButton 导航条的左边的button
 @result void
 */
- (void)setLeftBar:(UIButton*)aButton;

/*!
 @method
 @abstract 设置navigationbar的rightbar
 @discussion 
 @param aButton 导航条的右边的button
 @result void
 */
- (void)setRightBar:(UIButton *)aButton;

/*!
 @method
 @abstract 返回一个groupbutton
 @discussion 
 @result 返回一个not owned的groupbutton
 */
- (UIView *)getGroupButton;

/*!
 @method
 @abstract 返回一个settintview
 @discussion 
 @result 返回一个not owned的settintview
 */
- (UIView *)getBottomSettingView;
@end

@implementation CWAAttentionViewController

//出事化方法
- (id)init
{
  if (self = [super initWithNibName:@"WAAttentionViewController" bundle:nil]) 
  {
    iDataArray = [[NSMutableArray alloc] initWithCapacity:1];
    iNumOfClickRightButton = 0;
  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  UILabel *lable = (UILabel *)[self.view  viewWithTag:WA_NAVIGATION_TITLE_TAG];
  lable.text = [self getNavigationTitle];
  [self setViewStyle];

  iNoDataImageView.hidden = YES;
  
  [self loadData];
  
}

- (void)loadData
{
  NSArray *attentionArray = [[CWAAttentionController sharedCWAAttentionController] 
                             unArchiveAObjectAtDestinationPath:iFileName];
  if (!attentionArray || [attentionArray count] <=0) 
  {
    [iDataArray removeAllObjects];
    iNoDataImageView.hidden = NO;
    
    UIButton *rightButton = (UIButton *)[self.view viewWithTag:WAATTENTION_RIGHTBAR_TAG];
    rightButton.hidden = YES;
  }
  else 
  {
    iNoDataImageView.hidden = YES;
    [iDataArray removeAllObjects];
    [iDataArray addObjectsFromArray:attentionArray];
    
    UIButton *rightButton = (UIButton *)[self.view viewWithTag:WAATTENTION_RIGHTBAR_TAG];
    rightButton.hidden = NO;
  }
  
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
  
  [self loadData];
  [iAttentionTableView reloadData];
}

- (void)viewDidUnload
{
  [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)editAction
{
    iNumOfClickRightButton++;
    if (iNumOfClickRightButton > 99) 
    {
        iNumOfClickRightButton = 0;
    }  
    if (iNumOfClickRightButton &1) 
    {
        UIButton *rightButton = (UIButton *)[self.view viewWithTag:WAATTENTION_RIGHTBAR_TAG];
        NSString *title = NSLocalizedStringFromTable(@"Cancel", @"component_Attention", nil);
        [rightButton setTitle:title forState:UIControlStateNormal];
        
        [iAttentionTableView setEditing:YES animated:YES];
    }
    else 
    {
        UIButton *rightButton = (UIButton *)[self.view viewWithTag:WAATTENTION_RIGHTBAR_TAG];
        NSString *title = NSLocalizedStringFromTable(@"Edit", @"component_Attention", nil);
        [rightButton setTitle:title forState:UIControlStateNormal];
        
        [iAttentionTableView setEditing:NO animated:YES];
    }
}

//进入编辑状态
- (IBAction)gotoEditStatus
{
    [self editAction];
}

#pragma mark -
#pragma mark -  CWAAttentionViewController () methods
//获取关注数据刷新列表
- (void)getAttentionData:(id)aSender
{
  CWAButton *groupButton = (CWAButton *)aSender;
  NSString *aFileName = groupButton.iStatusCode;
  //如果时统一个模块
  if ([aFileName isEqualToString:iFileName]) 
  {
    return;
  }

  iFileName = nil;
  iFileName = [aFileName copy];
  
  CGRect shotsFrame = self.view.bounds;
  shotsFrame.size.height -= 88.0f;
  shotsFrame.origin.y +=88.0f;
  if (iAttentionStyle.iHaveSettingView) 
  {
    shotsFrame.size.height -= 44.0f;
  }
  
  UIGraphicsBeginImageContext(shotsFrame.size);
  [iAttentionTableView.layer renderInContext:UIGraphicsGetCurrentContext()];
  UIImage *tableviewImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  
  UIImageView *tableviewImageview = [[UIImageView alloc] initWithImage:tableviewImage];
  tableviewImageview.frame = shotsFrame;
  tableviewImageview.layer.shadowColor = [UIColor grayColor].CGColor;
  tableviewImageview.layer.shadowOpacity = 1.0f;
  [self.view addSubview:tableviewImageview];
  
  NSInteger tag = groupButton.tag;
  if (tag == 200) 
  {
    tableviewImageview.layer.shadowOffset = CGSizeMake(-5.0f, 0.0f);
    shotsFrame.origin.x += 320;
  }
  else 
  {
    tableviewImageview.layer.shadowOffset = CGSizeMake(5.0f, 0.0f);
    shotsFrame.origin.x -= 320;
  }

  [UIView animateWithDuration:0.5f 
                   animations:^{
                     tableviewImageview.frame = shotsFrame;
                   } 
                   completion:^(BOOL isSuccess){
                       [tableviewImageview removeFromSuperview];
                   }];
  
  
  [self loadData];
  [iAttentionTableView reloadData];
}

//开始界面布局
- (void)setViewStyle
{
  //左边的按钮
  if (iAttentionStyle.iHaveLeftButton) 
  {
    UIButton *leftButton = (UIButton *)[self.view viewWithTag:WAATTENTION_LEFTBAR_TAG];
    [self setLeftBar:leftButton];
  }
  
  //右边的按钮
  if (iAttentionStyle.iHaveRightBtuuon) 
  {
    UIButton *leftButton = (UIButton *)[self.view viewWithTag:WAATTENTION_RIGHTBAR_TAG];
    [leftButton setBackgroundImage:[UIImage imageNamed:@"so_common_item.png"] forState:UIControlStateNormal];
    NSString *title = NSLocalizedStringFromTable(@"Edit", @"component_Attention", nil);
    [leftButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [leftButton setTitle:title forState:UIControlStateNormal];
    [self setRightBar:leftButton];
    
  }
  
  //设置视图
  if (iAttentionStyle.iHaveSettingView) 
  {
    //tableview更具setting来适配高度
    CGRect tableviewFrame = iAttentionTableView.frame;
    iAttentionTableView.frame = tableviewFrame;
  }
  
  //groupbutton
  if (iAttentionStyle.iHaveGroupButton) 
  {
    CWAGroupButtonView *groupButton = (CWAGroupButtonView *)[self getGroupButton];
    
    for (int i = 0 ; i < [groupButton.iButtonImageArray count] ; i++)
    {
      CWAButton *btn = [groupButton getButtonObjectOfIndex:i];
      [btn addTarget:self 
              action:@selector(getAttentionData:) 
    forControlEvents:UIControlEventTouchUpInside];
    }
    
    //设置groupbutton的frame
    CGRect groupButtonFrame = groupButton.frame;
    groupButtonFrame.origin.y = 44;
    groupButton.frame = groupButtonFrame;
    [self.view addSubview:groupButton];
    
    //groupbutton的高度
    CGFloat groupButtonHight = groupButton.frame.size.height;
    
    //tableview更具groupbuton来适配高度
    CGRect tableviewFrame = iAttentionTableView.frame;
    tableviewFrame.size.height -= groupButtonHight;
    tableviewFrame.origin.y += groupButtonHight;
    iAttentionTableView.frame = tableviewFrame;
  }
}

- (NSString *)getNavigationTitle
{
  return nil;
}

- (void)setLeftBar:(UIButton*)aButton
{

}

- (void)setRightBar:(UIButton *)aButton
{

}

- (UIView *)getGroupButton
{
  return nil;
}

- (UIView *)getBottomSettingView
{
  return nil;
}

#pragma mark - 
#pragma mark - Table view data source

//返回高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 44;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return [iDataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"Cell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
  
  if (cell == nil) 
  {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault 
                                   reuseIdentifier:CellIdentifier];
  }

  return cell;
}


 // Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
  return YES;
}
 
- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (!tableView.editing)
  {
    return UITableViewCellEditingStyleNone;
  }
  else 
  {
    return UITableViewCellEditingStyleDelete;
  }
  
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (editingStyle == UITableViewCellEditingStyleDelete) 
  {
    if ([[CWAAttentionController sharedCWAAttentionController] deleteAObjectAtIndex:indexPath.row 
                                                                WithDestinationPath:iFileName]) 
    {
      [iDataArray removeObjectAtIndex:indexPath.row];
      [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
      if ([iDataArray count] == 0) 
      {
        iNoDataImageView.hidden = NO;
      }
    }
  }   
  else if (editingStyle == UITableViewCellEditingStyleInsert) 
  {

  }
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


#pragma mark -
#pragma mrak - 左边按钮变换图片
//变换navigation左边按图片
- (void)setLeftNavigatioBarButtonImage:(NSString *)aImage andHighLightImage:(NSString *)aHightImage
{
  UIButton *leftButton = (UIButton *)[self.view viewWithTag:WAATTENTION_LEFTBAR_TAG];
  leftButton.frame = CGRectMake(0, 0, 60, 44);
  [leftButton setImage:[UIImage imageNamed:aImage] forState:UIControlStateNormal];
  [leftButton setImage:[UIImage imageNamed:aHightImage] forState:UIControlStateHighlighted];
}

//变换navigation左边正常图片
- (void)setNavigatioBarButtonImage:(NSString *)aImage
{
  UIButton *leftButton = (UIButton *)[self.view viewWithTag:WAATTENTION_LEFTBAR_TAG];
  leftButton.frame = CGRectMake(9, 7, 42, 30);
  [leftButton setImage:[UIImage imageNamed:aImage] forState:UIControlStateNormal];
}
@end
