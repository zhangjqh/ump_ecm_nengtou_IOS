/*!
 @header CWAPickerTextField.m
 @abstract 添加联系人textfield
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/21 Creation
 */

#import "WAPickerNC63TextFieldCell.h"
#import "WATaskMacro.h"
#import "WALinkManVO.h"
#import <QuartzCore/QuartzCore.h>
#import "TaskDef.h"

//textfield的默认视图
#define WA_TASK_PICKERFIELD_DEFAULT_MARGINS 8
//pickerViewCell默认的高度间隔
#define WA_TASK_PADDING_HEIGHT 3
//pickerViewCell默认的宽度间隔
#define WA_TASK_PADDING_WIDTH 13
//左侧提示文字的宽度
//static const int WA_TASK_PADDING_PROMPT_WIDTH = 60.0f;
static const int WA_TASK_PADDING_SIDE_WIDTH = 10.0f;

//textfield的默认占位字符
#define WA_TASK_ZEROWIDTH_SAPCESTRING @"\u200B"

@implementation CWAPickerNC63TextFieldCell
@synthesize iPromptText;
@synthesize iPickerNC63TextFieldCellDelegate;
@synthesize iCanChangeOrder;
@synthesize iAddButton;
@synthesize iIsShowAddButtonFlag;



- (BOOL)getCanChangeOrder
{
  return iCanChangeOrder && [iPickerCellArray count] > 1;
}

- (void)settPlaceHolder:(NSString *)test
{
	[iPlaceHolderTextField setPlaceholder:test];
//	[iHiddenTextField setPlaceholder:test];
}
//初始化方法
- (id)initWithFrame:(CGRect)frame
{
  if (frame.size.height < WA_TASK_ACTION_DEFAULT_HEIGHT)
  {
    frame.size.height = WA_TASK_ACTION_DEFAULT_HEIGHT;
  }
  self = [super initWithFrame:frame];
  if (self)
	{
    [self commonSetupWithActionString];
    canAddPeople = YES;
    iLinkmanFieldOldFrame = CGRectZero;
	}
  return self;
}

- (id)initWithFrame:(CGRect)frame withFlag:(NSString*)aFlag
{
    if (frame.size.height < WA_TASK_ACTION_DEFAULT_HEIGHT)
    {
        frame.size.height = WA_TASK_ACTION_DEFAULT_HEIGHT;
    }
    self = [super initWithFrame:frame];
    if (self)
    {
        [self commonSetupWithActionStringB];
        canAddPeople = YES;
        iLinkmanFieldOldFrame = CGRectZero;
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame WithPromptText:(NSString *)promptText  WithAddButtonFalg:(BOOL)aFalg
{
  if (frame.size.height < WA_TASK_ACTION_DEFAULT_HEIGHT)
  {
    frame.size.height = WA_TASK_ACTION_DEFAULT_HEIGHT;
  }
  self = [super initWithFrame:frame];
  if (self)
	{
    [self commonSetupWithActionString];
    canAddPeople = YES;
    iLinkmanFieldOldFrame = CGRectZero;
    self.iPromptText = promptText;
    //提示符
    if (promptText) {
      [self setTextField:iInputTextField PromptText:iPromptText];
    }
    //新增按钮
    if (aFalg) {
      UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
      [addButton setTintColor:WA_TASK_COLOR_101_165_255];
      [addButton setFrame:CGRectMake(270, frame.size.height - 40, 40, 40)];
      [addButton setBackgroundImage:[UIImage imageNamed:@"task_btn_add.png"] forState:UIControlStateNormal];
      self.iAddButton = addButton;
      [self addSubview:iAddButton];
    }
	}
  return self;
}

//加个pickercell在self上
- (void)addPickerViewCellWithTitle:(NSString *)aString representedObject:(id)aObj
{
  if (!canAddPeople)
  {
    return;
  }
  NSString *titleString = [aString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
	
  [iInputTextField setText:nil];
  
	if ([titleString length])
  {
		CWAPickerViewCell *pickerViewCell = [self pickerCellWithString:titleString representedObject:aObj];
		[iPickerCellArray addObject:pickerViewCell];
    [self setNeedsLayout];
  }

}

#pragma mark 实现UIGestureRecognizerDelegate委托
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
  return self.iCanChangeOrder;
}

- (void)panBegan:(UIGestureRecognizer *)gestureRecognizer
{
  iDragPickerCell = (CWAPickerViewCell *)gestureRecognizer.view;
	CGPoint pt = [gestureRecognizer locationInView:self];
	startFrame = iDragPickerCell.frame;
	startLocation = pt;
}


- (BOOL)didEnterStartFrameWithPoint:(CGPoint)point {
	
	CGPoint touchInSuperview = [self convertPoint:point toView:[self superview]];
	
	return CGRectContainsPoint(startFrame,touchInSuperview);
}

- (void)panMoved:(UIGestureRecognizer *)gestureRecognizer
{
	CGPoint pt = [gestureRecognizer locationInView:self];
	CGPoint translation = [(UIPanGestureRecognizer *)gestureRecognizer translationInView:self];
	[iDragPickerCell setCenter:CGPointMake([iDragPickerCell center].x + translation.x, [iDragPickerCell center].y + translation.y)];
	[(UIPanGestureRecognizer *)gestureRecognizer setTranslation:CGPointZero inView:self];
	for(int i = 0 ; i < [iPickerCellArray count] ; i++)
	{
		CWAPickerViewCell *cell = [iPickerCellArray objectAtIndex:i];
		if(cell != iDragPickerCell && CGRectContainsPoint(cell.frame,pt))
		{
			cell.layer.borderWidth = 1.0f;
			cell.layer.borderColor = [UIColor redColor].CGColor;
		}
	  else
		{
			cell.layer.borderWidth = 0.0f;
		}
	}
	
}

- (void)panEnded:(UIGestureRecognizer *)gestureRecognizer
{
	CGPoint pt = [gestureRecognizer locationInView:self];
	BOOL isDragToOtherCell = NO;
	for(int i = 0 ; i < [iPickerCellArray count] ; i++)
	{
		CWAPickerViewCell *cell = [iPickerCellArray objectAtIndex:i];
		if(cell != iDragPickerCell && CGRectContainsPoint(cell.frame,pt))
		{
			isDragToOtherCell = YES;
			int indexOfEnd = [iPickerCellArray indexOfObject:iDragPickerCell];
			int indexOfStart = [iPickerCellArray indexOfObject:cell];
   	 [iPickerCellArray exchangeObjectAtIndex:indexOfEnd withObjectAtIndex:indexOfStart];
			iDragPickerCell.frame = cell.frame;
			cell.frame = startFrame;
			cell.layer.borderWidth = 0.0f;
		}
	 
	}
	if(!isDragToOtherCell)
	{
		iDragPickerCell.frame = startFrame;
	}
}

#pragma mark - Gesture handling
- (void)panDetected:(UIPanGestureRecognizer*)gestureRecognizer{
  switch ([gestureRecognizer state])
  {
    case UIGestureRecognizerStateBegan:
      [self panBegan:gestureRecognizer];
      break;
    case UIGestureRecognizerStateChanged:
      [self panMoved:gestureRecognizer];
      break;
    case UIGestureRecognizerStateEnded:
      [self panEnded:gestureRecognizer];
      break;
    default:
      break;
  }
}

- (void)deleteAllPickerCell
{
  for (int i = 0; i < [iPickerCellArray count]; i++)
  {
		iDeletedPickerCell = [iPickerCellArray objectAtIndex:i];
    [iDeletedPickerCell removeFromSuperview];
    [iPickerCellArray removeObject:iDeletedPickerCell];
    i--;
  }
}
//删除一个pickercell
- (void)deleteSelectedPickerCell
{
	for (int i = 0; i < [iPickerCellArray count]; i++)
  {
		iDeletedPickerCell = [iPickerCellArray objectAtIndex:i];
		if ([iDeletedPickerCell iIsSelected])
    {
      if(iPickerNC63TextFieldCellDelegate &&
         [iPickerNC63TextFieldCellDelegate respondsToSelector:@selector(delPickerCellSuccess:withSender:)])
      {
      [iPickerNC63TextFieldCellDelegate performSelector:@selector(delPickerCellSuccess:withSender:) withObject:iDeletedPickerCell.iRepresentedObject withObject:self];
      }
      [iDeletedPickerCell removeFromSuperview];
      [iPickerCellArray removeObject:iDeletedPickerCell];
    }
  }
  if([iPickerCellArray count] == 0)
  {
    iPlaceHolderTextField.hidden = NO;
  }
}

- (NSArray *)getAllSelectedRepresentedObject
{
  NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:1];
  for(int i = 0 ; i < [iPickerCellArray count];i ++)
  {
    CWAPickerViewCell *cell =  (CWAPickerViewCell *)[iPickerCellArray objectAtIndex:i];
    NSObject *representedObject = cell.iRepresentedObject;
    [array addObject:representedObject];
  }
  return array;
}

//设置单元元素位置
- (CGRect)calFrameOfCell
{
  CGRect currentRect = CGRectZero;
    CGFloat height = 45.00f;
	currentRect.origin.x +=  WA_TASK_PADDING_WIDTH;
    BOOL flag = false;
	for (CWAPickerViewCell *pickerCell in iPickerCellArray)
    {
    CGRect frame = pickerCell.frame;
    CGFloat pickerTextFidldMaxWith = self.frame.size.width  - WA_TASK_PADDING_SIDE_WIDTH*2;

    if ((currentRect.origin.x + frame.size.width) > pickerTextFidldMaxWith)
    {
      currentRect.origin = CGPointMake(WA_TASK_PADDING_WIDTH,
                                       (currentRect.origin.y + frame.size.height + (WA_TASK_ACTION_DEFAULT_HEIGHT - frame.size.height)/2));
      flag = true;
    }
    if(flag){
            height = height + 35.00f;
            flag = false;
    }
      frame.origin.x = currentRect.origin.x;
      frame.origin.y = currentRect.origin.y + (WA_TASK_ACTION_DEFAULT_HEIGHT - frame.size.height)/2;
      [pickerCell setFrame:frame];
    if (![pickerCell superview])
    {
      [iInputTextField removeFromSuperview];
      [self addSubview:pickerCell];
      //[iScrollView addSubview:pickerCell];
    }
		currentRect.origin.x += frame.size.width + WA_TASK_PADDING_WIDTH;
		currentRect.size = frame.size;
  }
	
	CGRect textFieldFrame = [iInputTextField frame];
    textFieldFrame.origin = currentRect.origin;
    
 	if ((self.frame.size.width - textFieldFrame.origin.x) < 35)
  {
    textFieldFrame.origin = CGPointMake(WA_TASK_PADDING_WIDTH,
                                        (currentRect.origin.y + currentRect.size.height + (WA_TASK_ACTION_DEFAULT_HEIGHT - currentRect.size.height)/2));

  }
  
  textFieldFrame.size.width = self.frame.size.width - textFieldFrame.origin.x  - WA_TASK_PADDING_WIDTH*2;
  textFieldFrame.origin.y += WA_TASK_PADDING_HEIGHT;
  CGRect selfFrame = self.frame;
  selfFrame.size.height = height;

  self.frame = selfFrame;
  return selfFrame;
}

- (void)reSetFrame
{
  CGRect selfFrame = [self calFrameOfCell];
  //[iInputTextField setFrame:selfFrame];
  iHiddenTextField.frame = selfFrame;
  //[self setFrame:selfFrame];
  CGSize contentSize = CGSizeMake(iScrollView.frame.size.width, selfFrame.size.height);
  [iScrollView setContentSize:contentSize];
  [self handleTextDidChange:nil];
}


#pragma mark Left / Right view stuff
- (void)setTextField:(UITextField *)aTextField PromptText:(NSString *)text {
	
	if (text){
		
		UILabel * label = (UILabel *)aTextField.leftView;
		if (!label || ![label isKindOfClass:[UILabel class]]){
      
      label = [[UILabel alloc] initWithFrame:CGRectMake(0, 12, 58, 24)];
      
			[aTextField setLeftView:label];
			[aTextField setLeftViewMode:UITextFieldViewModeAlways];
		}
		
		[label setText:text];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setFont:[UIFont fontWithName:@"STHeitiSC-Medium" size:13.0]];
    [label setFont:[UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]];
    [label setTextColor:[UIColor colorWithRed:31.0f/255.0f green:31.0f/255.0f blue:31.0f/255.0f alpha:1.0f]];
		[label sizeToFit];
	}
	else
	{
		[aTextField setLeftView:nil];
	}
	
//	[aTextField layoutTokensAnimated:YES];
}


//uitextfield的text改变时调用此方法
- (void)handleTextDidChange:(NSNotification *)note
{
	//保证iInputTextField前面总有个空格
	NSMutableString *text = [[iInputTextField text] mutableCopy];
	if (![text hasPrefix:WA_TASK_ZEROWIDTH_SAPCESTRING])
    {
		[text insertString:WA_TASK_ZEROWIDTH_SAPCESTRING atIndex:0];
		[iInputTextField setText:text];
    }
}

#pragma mark -
#pragma mark CWAPickerTextField(Private) 初始化相关

//ui元素通用设置
- (void)commonSetupWithActionString
{
  int maxWidth = [[UIScreen mainScreen] applicationFrame].size.width;
  
  CGRect frame = self.frame;

  iScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(24, 0, maxWidth -48.00f, 44)];

  
  iPickerCellArray = [[NSMutableArray alloc] initWithCapacity:1];

    iScrollView.showsHorizontalScrollIndicator = YES;
    iScrollView.showsVerticalScrollIndicator = YES;
  iHiddenTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 10, WA_TASK_ACTION_DEFAULT_HEIGHT)];
  iHiddenTextField.delegate = self;
  iHiddenTextField.hidden = YES;
  iHiddenTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
  [iScrollView addSubview:iHiddenTextField];
  
  frame.origin.y +=WA_TASK_PADDING_HEIGHT;
  frame.size.height -=WA_TASK_PADDING_HEIGHT*2;
  //输入文本编辑器frame更改
  CGRect inputFrame = CGRectMake(0, frame.origin.y, frame.size.width - WA_TASK_PADDING_SIDE_WIDTH*2, frame.size.height);
  iInputTextField = [[UITextField alloc] initWithFrame:inputFrame];
  iInputTextField.hidden = NO;
  iInputTextField.userInteractionEnabled = NO;
  iInputTextField.delegate = self;
  iInputTextField.backgroundColor = [UIColor clearColor];
  [iInputTextField becomeFirstResponder];
  [iInputTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
  iInputTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
  [iScrollView addSubview:iInputTextField];
  
  
  frame.origin.y +=WA_TASK_PADDING_HEIGHT;
  frame.size.height -=WA_TASK_PADDING_HEIGHT*2;
  frame.size.width = maxWidth - 48.00f;
  iPlaceHolderTextField = [[UITextField alloc] initWithFrame:frame];
  iPlaceHolderTextField.hidden = NO;
  iPlaceHolderTextField.userInteractionEnabled = NO;
  iPlaceHolderTextField.backgroundColor = [UIColor clearColor];
  [iPlaceHolderTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
  [iPlaceHolderTextField setTextAlignment:NSTextAlignmentRight];
  [iScrollView addSubview:iPlaceHolderTextField];
  [self addSubview:iScrollView];
}

//ui元素通用设置
- (void)commonSetupWithActionStringB
{
    CGRect frame = self.frame;
    
    iScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(24, 0, 272, 44)];
    
    
    iPickerCellArray = [[NSMutableArray alloc] initWithCapacity:1];
    
    iScrollView.showsHorizontalScrollIndicator = YES;
    iScrollView.showsVerticalScrollIndicator = YES;
    iHiddenTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 10, WA_TASK_ACTION_DEFAULT_HEIGHT)];
    iHiddenTextField.delegate = self;
    iHiddenTextField.hidden = YES;
    iHiddenTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
    [iScrollView addSubview:iHiddenTextField];
    
    frame.origin.y +=WA_TASK_PADDING_HEIGHT;
    frame.size.height -=WA_TASK_PADDING_HEIGHT*2;
    //输入文本编辑器frame更改
    CGRect inputFrame = CGRectMake(0, frame.origin.y, frame.size.width - WA_TASK_PADDING_SIDE_WIDTH*2, frame.size.height);
    iInputTextField = [[UITextField alloc] initWithFrame:inputFrame];
    iInputTextField.hidden = NO;
    iInputTextField.userInteractionEnabled = NO;
    iInputTextField.delegate = self;
    iInputTextField.backgroundColor = [UIColor clearColor];
    [iInputTextField becomeFirstResponder];
    [iInputTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    iInputTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
    [iScrollView addSubview:iInputTextField];
    
    
    frame.origin.y +=WA_TASK_PADDING_HEIGHT;
    frame.size.height -=WA_TASK_PADDING_HEIGHT*2;
    frame.size.width = 272;
    iPlaceHolderTextField = [[UITextField alloc] initWithFrame:frame];
    iPlaceHolderTextField.hidden = NO;
    iPlaceHolderTextField.userInteractionEnabled = NO;
    iPlaceHolderTextField.backgroundColor = [UIColor clearColor];
    [iPlaceHolderTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
    [iPlaceHolderTextField setTextAlignment:NSTextAlignmentRight];
    [iScrollView addSubview:iPlaceHolderTextField];
    [self addSubview:iScrollView];
}


//初始化一个pickercell
- (CWAPickerViewCell *)pickerCellWithString:(NSString *)aString representedObject:(id)aObj
{
  CWAPickerViewCell *pickerCell = [CWAPickerViewCell createACWAPickerViewCellWithString:aString representObject:aObj];
	CGRect frame = [pickerCell frame];
	if (frame.size.width > self.frame.size.width)
  {
		frame.size.width = self.frame.size.width - (WA_TASK_PADDING_WIDTH * 2);
  }
	
	[pickerCell setFrame:frame];
	[pickerCell addTarget:self
                 action:@selector(setBtnSelected:)
       forControlEvents:UIControlEventTouchUpInside];
	
	UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panDetected:)];
	[pan setMaximumNumberOfTouches:2];
	pan.delaysTouchesEnded = NO;
	pan.delegate = self;
	[pickerCell addGestureRecognizer:pan];
	return pickerCell;
}

//设置pickercell的是否被选择属性
- (void)setBtnSelected:(id)sender
{
  for (CWAPickerViewCell *pickerCell in iPickerCellArray)
  {
		[pickerCell setIsSelected:NO];
  }
	
	CWAPickerViewCell *pickerCell = (CWAPickerViewCell *)sender;
	[pickerCell setIsSelected:YES];;
	[iHiddenTextField becomeFirstResponder];
}

- (void)addALinkManWith:(id)aLinkMan
{
  if (!canAddPeople)
  {
    return;
  }
  CWALinkManVO *linkManVO = (CWALinkManVO *)aLinkMan;
  iPlaceHolderTextField.hidden = YES;
  //去掉已选择的
  for(int i = 0 ; i < [iPickerCellArray count];i++)
  {
    CWAPickerViewCell *linkManVOCell = (CWAPickerViewCell *)[iPickerCellArray objectAtIndex:i];
    CWALinkManVO *aLinkManVO = linkManVOCell.iRepresentedObject;
    if([aLinkManVO.iId isEqualToString:linkManVO.iId])
    {
     [linkManVOCell removeFromSuperview];
      [iPickerCellArray removeObject:linkManVOCell];
    }
   
  }
  
  NSString *titleString = [linkManVO.iName stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
	
  [iInputTextField setText:nil];
  
	if ([titleString length])
  {
		CWAPickerViewCell *pickerViewCell = [self pickerCellWithString:titleString representedObject:linkManVO];
		[iPickerCellArray addObject:pickerViewCell];
    [self setNeedsLayout];
  }
}
#pragma mark -
#pragma mark UITextFieldDelegate
// textfield字符发生改变时调用此方法
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
	if ([[textField text] isEqualToString:WA_TASK_ZEROWIDTH_SAPCESTRING] && [string isEqualToString:@""])
    {
		for (CWAPickerViewCell *pickerCell in iPickerCellArray)
      {
        if ([pickerCell iIsSelected])
        {
          [self deleteSelectedPickerCell];
          [iInputTextField becomeFirstResponder];
          return NO;
        }
      }
		
		if ([iPickerCellArray count] > 0)
      {
			if ([[iPickerCellArray lastObject] iIsSelected] == NO)
        {
				[[iPickerCellArray lastObject] setIsSelected:YES];
				[iHiddenTextField becomeFirstResponder];
				return NO;
        }
      }
		
		[self deleteSelectedPickerCell];
		[iInputTextField becomeFirstResponder];
		return NO;
    }
	else if (textField == iHiddenTextField)
		return NO;
	else
    {
		if ([iPickerCellArray count] > 0)
      {
			if ([[iPickerCellArray lastObject] isHighlighted] == YES)
        {
				[[iPickerCellArray lastObject] setHighlighted:NO];
        }
      }
    }
	
  //防止在空格前插入字符
	if (range.location == 0 && range.length == 0)
    {
		[iInputTextField setText:[iInputTextField text]];
		return NO;
    }
	
	return YES;
}

//点击键盘的return时触发此事件
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{		if (textField == iInputTextField)
{
    [iInputTextField resignFirstResponder];
}
    
    if (textField == iHiddenTextField)
    {
        [iHiddenTextField resignFirstResponder];
    }
	return NO;
}

//textfield注销第一响应者的时候调用
- (void)textFieldDidEndEditing:(UITextField *)textField
{
	if (textField == iInputTextField)
  {
    if ([[textField text] length] > 1)
    {
			[self addPickerViewCellWithTitle:[textField text] representedObject:[textField text]];
			[textField setText:WA_TASK_ZEROWIDTH_SAPCESTRING];
    }
  }
	
	if (textField == iHiddenTextField)
  {
		for (CWAPickerViewCell *pickerCell in iPickerCellArray)
    {
			[pickerCell setIsSelected:NO];
    }
  }
}


@end
