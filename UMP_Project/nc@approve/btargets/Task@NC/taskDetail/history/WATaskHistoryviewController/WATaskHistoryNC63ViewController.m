
#import "WATaskHistoryNC63ViewController.h"
#import "WAProposerTableCell.h"
#import "WAHandlerTableNC63Cell.h"
#import "WATaskHistoryHandlerDetailNC63VO.h"
#import <UMIOSControls/GTMBase64.h>
#import "WAHandWriteViewController.h"
#import "WAUFTool.h"
#import "WAIosVersionAdaptor.h"
#import "ICustomRecognizer.h"

@implementation CWATaskHistoryNC63ViewController


static NSString *proposerTableCellIdentifier = @"ProposerTableCell";
static NSString *handlerTableCellIdentifier = @"HandlerTableCell";
static const NSUInteger TASK_HISTORY_NAVIGATION_Bar = 101;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  UINavigationBar *navigationBar = (UINavigationBar *)[self.view viewWithTag:TASK_HISTORY_NAVIGATION_Bar];
  navigationBar.topItem.title = NSLocalizedStringFromTable(@"arroveHistory", @"btarget_task", nil);
	// Do any additional setup after loading the view.
  
  if(WA_CURENT_OS_V >= 7.0f)
  {
    [CWAIosVersionAdaptor adaptWithLeftNavBtn:iLeftBtn];
  }
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    [iTableView deselectRowAtIndexPath:[iTableView indexPathForSelectedRow] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSInteger section = indexPath.section;
  @try
  {
    
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  switch (section)
    {
      case 0:
      {
      CWAProposerTableCell* wAProposerTableCell = [tableView dequeueReusableCellWithIdentifier:proposerTableCellIdentifier];
      if (nil == wAProposerTableCell)
        {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAProposerTableCell" owner:self
                                                     options:nil];
        wAProposerTableCell = [array objectAtIndex:0];
        wAProposerTableCell.iProposerName.text = self.iTaskHistoryProposerVO.iProposerName;
        wAProposerTableCell.iProposerName.text = self.iTaskHistoryProposerVO.iProposerName;
        
        wAProposerTableCell.iProposeDate.text = self.iTaskHistoryProposerVO.iProposeDate;
          [CWAIosVersionAdaptor adaptTableViewCell:wAProposerTableCell];
        }
      return wAProposerTableCell;
      
      }
      break;
      
      case 1:
      {
      
      CWAHandlerTableNC63Cell *wAHandlerTableCell = [tableView dequeueReusableCellWithIdentifier:handlerTableCellIdentifier];
      if (nil == wAHandlerTableCell)
        {
        NSInteger row = indexPath.row;
        CWATaskHistoryHandlerDetailNC63VO *taskHistoryHandlerDetailVO = [self.iTaskHistoryHandlerVO.iHandlerDetailVOArray objectAtIndex:row];
        
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"WAHandlerTableNC63Cell" owner:self options:nil];
        wAHandlerTableCell = [array objectAtIndex:0];
        wAHandlerTableCell.iHandlerName.text  = taskHistoryHandlerDetailVO.iHandlerName;
        wAHandlerTableCell.iHandlerIdea.text = taskHistoryHandlerDetailVO.iHandlerIdea;
        wAHandlerTableCell.iHandlerDetail.text = taskHistoryHandlerDetailVO.iHandlerDetail;
        ICustomRecognizer *tap = [[ICustomRecognizer alloc] initWithTarget:self action:@selector(showAll:)];
        [tap setDetail:taskHistoryHandlerDetailVO.iHandlerDetail];
        [wAHandlerTableCell.iHandlerDetail addGestureRecognizer:tap];
        wAHandlerTableCell.iHandlerDate.text = taskHistoryHandlerDetailVO.iHandlerDate;
        if(taskHistoryHandlerDetailVO.iMark && ![taskHistoryHandlerDetailVO.iMark isEqualToString:@""])
        {
          wAHandlerTableCell.iShowMarkBtn.hidden = NO;
          wAHandlerTableCell.iShowMarkBtn.iIndexPath = indexPath;
//          wAHandlerTableCell.iShowMarkBtn.center = wAHandlerTableCell.iHandlerDetail.center;
//          CGRect frameOfDetail = wAHandlerTableCell.iHandlerDetail.frame;
//          frameOfDetail.origin.x = frameOfDetail.origin.x;
//          frameOfDetail.origin.y = wAHandlerTableCell.iShowMarkBtn.frame.origin.y;
//          frameOfDetail.size.height = 24.0f;
//          frameOfDetail.size.width = 24.0f;
//          wAHandlerTableCell.iShowMarkBtn.frame = frameOfDetail;
//        
//          frameOfDetail.origin.x = frameOfDetail.origin.x + 30.0f;
//          frameOfDetail.size.height = wAHandlerTableCell.iHandlerDetail.frame.size.height;
//          frameOfDetail.size.width = wAHandlerTableCell.iHandlerDetail.frame.size.width - 30.0f;
//          wAHandlerTableCell.iHandlerDetail.frame = frameOfDetail;
            [wAHandlerTableCell.iShowMarkBtn setImage:[UIImage imageNamed:@"cell_ic_annotation_norm.png"] forState:UIControlStateNormal];
        
          [wAHandlerTableCell.iShowMarkBtn addTarget:self
                                              action:@selector(showMarkBtnClick:)
                                    forControlEvents:UIControlEventTouchUpInside];
          
        }
        else
        {
          wAHandlerTableCell.iShowMarkBtn.hidden = NO;
             [wAHandlerTableCell.iShowMarkBtn setImage:[UIImage imageNamed:@"cell_ic_annotation_unavailable.png"] forState:UIControlStateNormal];
          
        
        }
            [CWAIosVersionAdaptor adaptTableViewCell:wAHandlerTableCell];
      }
      return wAHandlerTableCell;
      
      }
      break;
      
      default:
      break;
      
    }
  }
  @catch (NSException *exception)
  {
  
  }
  return nil;
}

/*!
 @method
 @abstract 设置表格单元的高度
 @discussion
 @param tableView 表格视图的指针
 @param indexPath 列表项的指示路径
 @result
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger section = indexPath.section;
    switch (section)
    {
        case 0:
            return 48.0f;
            break;
            
        case 1:
            return 70.0f;
            break;
            
        default:
            break;
    }
    return 48.0f;
}

- (void)showAll:(ICustomRecognizer *)tapRecongnizer{
    if (!_backGround) {
        UIButton *backGround = [UIButton buttonWithType:UIButtonTypeCustom];
        backGround.frame = self.view.bounds;
        backGround.backgroundColor = [UIColor grayColor];
        backGround.alpha = 0.1;
        [backGround addTarget:self action:@selector(hidden:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:backGround];
        _backGround = nil;
        _backGround = backGround;
    }else{
        _backGround.hidden = NO;
    }

    
    if (!_detailLabel) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width * 0.8, self.view.bounds.size.height * 0.5)];
        label.center = self.view.center;
        label.textAlignment = UITextAlignmentCenter;
        label.text = tapRecongnizer.detail;
        label.backgroundColor = [UIColor whiteColor];
        label.layer.cornerRadius = 5.0f;
        label.layer.borderWidth = 1.0f;
        label.layer.borderColor = [UIColor whiteColor].CGColor;
        label.layer.masksToBounds = YES;
        label.lineBreakMode = UILineBreakModeWordWrap;
        label.numberOfLines = 0;
        [self.view addSubview:label];
        _detailLabel = nil;
        _detailLabel = label;
    }else{
        _detailLabel.text = tapRecongnizer.detail;
        _detailLabel.hidden = NO;
    }
}

- (void)hidden:(UIButton *)button{
    _detailLabel.hidden = YES;
    button.hidden = YES;
}


- (void)showMarkBtnClick:(id)sender
{
  CWACellButton *cellBtn = (CWACellButton *)sender;
  CWATaskHistoryHandlerDetailNC63VO *taskHistoryHandlerDetailVO = [self.iTaskHistoryHandlerVO.iHandlerDetailVOArray objectAtIndex:cellBtn.iIndexPath.row];
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  int maxHeight = [[UIScreen mainScreen] applicationFrame].size.height - 64.00f;
  NSData *adata= [GTMBase64 decodeString:taskHistoryHandlerDetailVO.iMark];
  UIImage *image = [[UIImage alloc] initWithData:adata];
  image = [self scaleToSize:image size:CGSizeMake(maxWidth, maxHeight)];
  CWAHandWriteViewController *handWriteViewController =
  [[CWAHandWriteViewController alloc] initWithNibName:@"WAHandWriteViewController"
                                           Withbundle:nil
                             WithDrawingBoardDelegate:nil
                                           WithInmage:image];
  handWriteViewController.iCanEdit = NO;
  NSString *handWriteNote = NSLocalizedStringFromTable(@"handWriteNote", @"btarget_task", nil);
  handWriteViewController.iTitle = [NSString stringWithFormat:@"%@ %@"
                                    ,taskHistoryHandlerDetailVO.iHandlerName,handWriteNote];
  [self.navigationController pushViewController:handWriteViewController animated:YES];
  
}

//param mark - 图片缩放到指定大小尺寸
- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage; 
}
@end
