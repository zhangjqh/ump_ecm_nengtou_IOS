//
//  WABaseTableViewController.m
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-5-22.
//
//

#import "WABaseTableViewController.h"

#import "WAShowDetailTextView.h"
#import "WAUFTool.h"
#import "TaskDef.h"
@interface CWABaseTableViewController ()

@end

@implementation CWABaseTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	[super viewDidLoad];
  self.tableView.backgroundColor = WA_TASK_COLOR_240;
	UILongPressGestureRecognizer *longPressReger = [[UILongPressGestureRecognizer alloc]
																									
																									initWithTarget:self action:@selector(handleLongPress:)];
	
	longPressReger.minimumPressDuration = 1.0;
	
	[self.tableView addGestureRecognizer:longPressReger];
  
  self.tableView.backgroundColor = WA_TASK_COLOR_240;
  self.tableView.separatorColor = WA_TASK_COLOR_223;
}

-(void)handleLongPress:(UILongPressGestureRecognizer *)gestureRecognizer

{
	
	CGPoint point = [gestureRecognizer locationInView:self.tableView];
	
	
	
	if(gestureRecognizer.state == UIGestureRecognizerStateEnded)
		
		{
		NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:point];
		
		if (indexPath == nil)
			{
			
			}
		
		else
			{
	
					NSString *aString_2 = [self getStringWithIndex:indexPath];
					if(aString_2)
					{
						CGRect frame = [[UIScreen mainScreen ] bounds];
						CGRect showFrame = CGRectInset(frame, 16.0f, 16.0f);
						CWAShowDetailTextView *showDetailTextView = [[CWAShowDetailTextView alloc] initWithText:aString_2 	withShowFrame:showFrame withFrame:frame];
						[showDetailTextView show];
					}
			}
		}
	
	
	
	
}

- (NSString *)getStringWithIndex:(NSIndexPath *)aIndex
{
	return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//0:104 143 223 蓝色
//1:31 31 31 黑色
//2:143 143 143 灰色
-(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel
{
  UIFont *textfont = nil;
  UIColor *textColor = nil;
  if (WA_CURENT_OS_V>=7.0)
  {
    
    textfont = WA_TASK_FONT_KAKU_W3_12;
    aLabel.shadowColor = [UIColor clearColor];
    aLabel.shadowOffset = CGSizeMake(0, 0);
  }
  else
  {
    textfont = WA_TASK_FONT_HT_W3_12;
  }
  aLabel.font = textfont;
  switch (itemNum)
  {
    case 0:
    {
      textColor = [UIColor blackColor];
    }
      break;
    case 1:
    {
      textfont = WA_TASK_FONT_KAKU_W3_12;
      textColor = WA_TASK_COLOR_31;
    }
      break;
      case 2:
    {
      textColor = WA_TASK_COLOR_143;
    }
      break;
    default:
      break;
  }
  aLabel.textColor = textColor;
  aLabel.highlightedTextColor = textColor;
  aLabel.font = textfont;
  
}
-(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel
                        andAllItemNum:(NSInteger)allNum
{
  UIFont *textfont = nil;
  UIColor *textColor = nil;
  if (WA_CURENT_OS_V>=7.0)
  {
    
    
        textfont = WA_TASK_FONT_KAKU_W3_12;

    aLabel.shadowColor = [UIColor clearColor];
    aLabel.shadowOffset = CGSizeMake(0, 0);
  }
  else
  {
    textfont = WA_TASK_FONT_HT_W3_16;
  }
  
  switch (itemNum)
  {
    case 0:
    {
      textColor = WA_TASK_COLOR_104_143_223;
      //蓝
      if (allNum>1)
      {
        textfont = WA_TASK_FONT_KAKU_W3_12;
      }
      else
      {
        textfont = WA_TASK_FONT_KAKU_W3_12;
      }
    }
      break;
    case 1:
    {
      textColor = WA_TASK_COLOR_31;
      //黑
      if (allNum>1)
      {
        textfont = WA_TASK_FONT_KAKU_W3_12;
      }
      else
      {
        textfont = WA_TASK_FONT_KAKU_W3_12;
      }
    }
      break;
    case 2:
    {
      textColor = WA_TASK_COLOR_143;
      //灰
      if (allNum>1)
      {
        textfont = WA_TASK_FONT_KAKU_W3_12;
      }
     
    }
      break;
    default:
      break;
  }
  aLabel.textColor = textColor;
  aLabel.highlightedTextColor = textColor;
  aLabel.font = textfont;
  
}

-(CGFloat)heightForRow:(NSInteger)itemNum
{
  CGFloat height = 0;
  switch (itemNum) {
    case 1:
      height = 48;
      break;
    case 2:
      height = 58;
      break;
    case 3:
      height = 78;
      break;
    case 4:
      height = 78;
      break;
    case 5:
      height = 87;
      break;
    default:
      break;
  }
  return height;
}
+(CGFloat)heightForRow:(NSInteger)itemNum
{
  CGFloat height = 0;
  switch (itemNum) {
    case 1:
      height = 48;
      break;
    case 2:
      height = 58;
      break;
    case 3:
      height = 78;
      break;
    case 4:
      height = 78;
      break;
    case 5:
      height = 87;
        break;
    default:
      break;
  }
  return height;
}
+(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel
{
  UIFont *textfont = nil;
  UIColor *textColor = nil;
  if (WA_CURENT_OS_V>=7.0)
  {
    textfont = WA_TASK_FONT_KAKU_W3_12;
  }
  else
  {
    textfont = WA_TASK_FONT_KAKU_W3_12;
  }
  switch (itemNum)
  {
    case 0:
    {
      textColor = WA_TASK_COLOR_104_143_223;
    }
      break;
    case 1:
    {
      textColor = WA_TASK_COLOR_31;
    }
      break;
      
    default:
      break;
  }
  aLabel.textColor = textColor;
  aLabel.highlightedTextColor = textColor;
  aLabel.font = textfont;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
  return 0.1f;
}

-(UIFont *)headerFont
{
  UIFont *textfont;
  if (WA_CURENT_OS_V>=7.0)
  {
    textfont = WA_TASK_FONT_KAKU_W3_12;
  }
  else
  {
    textfont = WA_TASK_FONT_HT_W3_12;
  }
  return textfont;
}
-(UIColor *)headerColor
{
  return WA_TASK_COLOR_104_143_223;
}

+(UIFont *)headerFont
{
  UIFont *textfont;
  if (WA_CURENT_OS_V>=7.0)
  {
    textfont = WA_TASK_FONT_KAKU_W3_12;
  }
  else
  {
    textfont = WA_TASK_FONT_HT_W3_12;
  }
  return textfont;
}
+(UIColor *)headerColor
{
  return WA_TASK_COLOR_104_143_223;
}

-(void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
   [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}
@end
