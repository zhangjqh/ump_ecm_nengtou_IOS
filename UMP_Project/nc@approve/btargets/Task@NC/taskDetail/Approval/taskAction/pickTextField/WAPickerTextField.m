/*!
 @header CWAPickerTextField.m
 @abstract 添加联系人textfield
 @author dequan
 @copyright ufida
 @version 1.00 2012/05/21 Creation 
 */

#import "WAPickerTextField.h"
#import "WATaskMacro.h"
//textfield的默认视图
#define WA_TASK_PICKERFIELD_DEFAULT_MARGINS 8
//pickerViewCell默认的高度间隔
#define WA_TASK_PADDING_HEIGHT 3
//pickerViewCell默认的宽度间隔
#define WA_TASK_PADDING_WIDTH 3
//textfield的默认占位字符
#define WA_TASK_ZEROWIDTH_SAPCESTRING @"\u200B"

@implementation CWAPickerTextField
@synthesize iDelegate;
@synthesize iInputTextField;
@synthesize iAddPersonButton;

//析构函数
- (void)dealloc
{
  [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//初始化方法
- (id)initWithFrame:(CGRect)frame actionString:(NSString *)aActionString
{
  if (frame.size.height < WA_TASK_DEFAULT_HEIGHT) 
  {
    frame.size.height = WA_TASK_DEFAULT_HEIGHT;
  }
  self = [super initWithFrame:frame];
  if (self) 
  {
    [self commonSetupWithActionString:aActionString];
    canAddPeople = YES;
    iLinkmanFieldOldFrame = CGRectZero;
    
    iImageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"TaskActionTop"]];
    CGRect imageframe = iImageview.frame;
    iImageview.frame = imageframe;
    [self addSubview:iImageview];
    
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
    
		if ([self.iDelegate respondsToSelector:@selector(pickerTextField:didAddPickerCell:representedObject:)])
		{
			[self.iDelegate pickerTextField:self didAddPickerCell:aString representedObject:aObj];
		}
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
			[iDeletedPickerCell removeFromSuperview];
			[iPickerCellArray removeObject:iDeletedPickerCell];
			
			if ([self.iDelegate respondsToSelector:@selector(pickerTextField:didRemovePickerCellAtIndex:)])
			{
				[self.iDelegate pickerTextField:self didRemovePickerCellAtIndex:i];
			}
			
			[self setNeedsLayout];	
		}
	}
}

//重载系统的layoutSubviews方法
- (void)layoutSubviews
{
  CGRect currentRect = CGRectZero;
	
	currentRect.origin.x += iActionLable.frame.size.width + iActionLable.frame.origin.x + WA_TASK_PADDING_WIDTH;
	
	for (CWAPickerViewCell *pickerCell in iPickerCellArray)
	{
		CGRect frame = pickerCell.frame;
    CGFloat pickerTextFidldMaxWith =pickerTextFidldMaxWith = self.frame.size.width - iAddPersonButton.frame.size.width - WA_TASK_PADDING_WIDTH*2;
    
		if ((currentRect.origin.x + frame.size.width) > pickerTextFidldMaxWith)
		{
      
      currentRect.origin = CGPointMake(WA_TASK_PADDING_WIDTH, 
                                       (currentRect.origin.y + frame.size.height + (WA_TASK_DEFAULT_HEIGHT - frame.size.height)/2));
		}
    
		frame.origin.x = currentRect.origin.x;
		frame.origin.y = currentRect.origin.y + (WA_TASK_DEFAULT_HEIGHT - frame.size.height)/2;
		[pickerCell setFrame:frame];
		
		if (![pickerCell superview])
		{
			[self addSubview:pickerCell];
		}
		currentRect.origin.x += frame.size.width + WA_TASK_PADDING_WIDTH;
		currentRect.size = frame.size;
	}
	
	CGRect textFieldFrame = [iInputTextField frame];
	textFieldFrame.origin = currentRect.origin;
 	if ((self.frame.size.width - textFieldFrame.origin.x) < 35)
	{
    textFieldFrame.origin = CGPointMake(WA_TASK_PADDING_WIDTH, 
                                        (currentRect.origin.y + currentRect.size.height + (WA_TASK_DEFAULT_HEIGHT - currentRect.size.height)/2));
  }
  
  textFieldFrame.size.width = self.frame.size.width - textFieldFrame.origin.x - 
                              iAddPersonButton.frame.size.width - WA_TASK_PADDING_WIDTH*2;
	textFieldFrame.origin.y += WA_TASK_PADDING_HEIGHT;
	[iInputTextField setFrame:textFieldFrame];
  iHiddenTextField.frame = textFieldFrame;
  
  
  CGRect selfFrame = self.frame;
  selfFrame.size.height = textFieldFrame.origin.y - WA_TASK_PADDING_HEIGHT + 44;
  
  CGPoint addButtonPoint = iAddPersonButton.center;
  addButtonPoint.y = selfFrame.size.height - WA_TASK_PADDING_HEIGHT - iAddPersonButton.frame.size.height/2;
  iAddPersonButton.center = addButtonPoint;
  
  
	[UIView animateWithDuration:0.3
                   animations:^{
                     [super setFrame:selfFrame];
                     CGRect imageframe = self.bounds;
                     imageframe.origin.y = selfFrame.size.height - WA_TASK_DEFAULT_HEIGHT;
                     imageframe.size.height = WA_TASK_DEFAULT_HEIGHT;
                     iImageview.frame = imageframe;

                     if (selfFrame.size.height != iLinkmanFieldOldFrame.size.height) 
                     {
                       if (iLinkmanFieldOldFrame.size.height > 0) 
                       {
                         CGFloat hight = selfFrame.size.height - iLinkmanFieldOldFrame.size.height;
                         NSNumber *highNumber = [NSNumber numberWithFloat:hight];
                         NSDictionary *highDic = [NSDictionary dictionaryWithObject:highNumber forKey:@"high"];
                         [[NSNotificationCenter defaultCenter] postNotificationName:WA_TASK_PICKERTEXTFILLD_FRAMECHANGE_NOTICE 
                                                                             object:nil 
                                                                           userInfo:highDic];
                       }
                       iLinkmanFieldOldFrame = selfFrame;
                     }
                   }
                   completion:nil];
  [self handleTextDidChange:nil];
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
#pragma mark CWAPickerTextField(Private) methods

//ui元素通用设置
- (void)commonSetupWithActionString:(NSString *)aActionString
{
  CGRect frame = self.frame;
  [self setBackgroundColor:[UIColor whiteColor]];
  
  iPickerCellArray = [[NSMutableArray alloc] initWithCapacity:1];
  
  iActionLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 0, frame.size.height)];
  [iActionLable setBackgroundColor:[UIColor clearColor]];
  [iActionLable setTextColor:[UIColor blackColor]];
  iActionLable.text = aActionString;//动态设置
  [iActionLable setFont:[UIFont systemFontOfSize:17]];
  [iActionLable sizeToFit];
	[iActionLable setFrame:CGRectMake(WA_TASK_PADDING_WIDTH, (WA_TASK_DEFAULT_HEIGHT-iActionLable.frame.size.height)/2, 
                                    [iActionLable frame].size.width, [iActionLable frame].size.height)];
  [self addSubview:iActionLable];
  
  iHiddenTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 10, WA_TASK_DEFAULT_HEIGHT)];
  iHiddenTextField.delegate = self;
  iHiddenTextField.hidden = YES;
  iHiddenTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
  [self addSubview:iHiddenTextField];
  
  iAddPersonButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
  CGRect buttonFrame = iAddPersonButton.frame;
  buttonFrame.origin.x = self.frame.size.width - buttonFrame.size.width - WA_TASK_PICKERFIELD_DEFAULT_MARGINS;
  buttonFrame.origin.y = (WA_TASK_DEFAULT_HEIGHT - iAddPersonButton.frame.size.height)/2;
  [iAddPersonButton setFrame:buttonFrame];
  [iAddPersonButton addTarget:self action:@selector(addLiakMan) forControlEvents:UIControlEventTouchUpInside];
  [self addSubview:iAddPersonButton];
  
  frame.origin.y +=WA_TASK_PADDING_HEIGHT;
  frame.size.height -=WA_TASK_PADDING_HEIGHT*2;
  iInputTextField = [[UITextField alloc] initWithFrame:frame];
  iInputTextField.hidden = YES;
  iInputTextField.userInteractionEnabled = NO;
  iInputTextField.delegate = self;
  iInputTextField.backgroundColor = [UIColor clearColor];
  [iInputTextField becomeFirstResponder];
  [iInputTextField setContentVerticalAlignment:UIControlContentVerticalAlignmentCenter];
  iInputTextField.text = WA_TASK_ZEROWIDTH_SAPCESTRING;
  [self addSubview:iInputTextField];
  
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(handleTextDidChange:)
                                               name:UITextFieldTextDidChangeNotification
                                             object:iInputTextField];
  [[NSNotificationCenter defaultCenter] addObserver:self
                                           selector:@selector(handleTextDidChange:)
                                               name:UITextFieldTextDidChangeNotification
                                             object:iHiddenTextField];
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
                 action:@selector(setSelected:)
       forControlEvents:UIControlEventTouchUpInside];
	
	return pickerCell;
}

//设置pickercell的是否被选择属性
- (void)setSelected:(id)sender
{
  for (CWAPickerViewCell *pickerCell in iPickerCellArray)
	{
		[pickerCell setIsSelected:NO];
	}
	
	CWAPickerViewCell *pickerCell = (CWAPickerViewCell *)sender;
	[pickerCell setIsSelected:YES];;
	[iHiddenTextField becomeFirstResponder];
}

//添加联系人
- (void)addLiakMan
{
  if (iDelegate && [iDelegate respondsToSelector:@selector(goInLinkManView)]) 
  {
    [iDelegate goInLinkManView];
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
{
  if (iInputTextField == textField) 
  {
    if ([self.iDelegate respondsToSelector:@selector(pickerTextFieldShouldReturn:)]) 
    {
      return [self.iDelegate pickerTextFieldShouldReturn:self];
    }
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
