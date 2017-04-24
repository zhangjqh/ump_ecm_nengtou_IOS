
#import "WAItem4Cell.h"
#import "WARowItemDef.h"
#import "WAContactUtil.h"
@interface WAItem4Cell()

@property (retain, nonatomic) NSString *telNum;
@property (retain,nonatomic) WAContactUtil *iContactUtil;
@end
@implementation WAItem4Cell


@synthesize title;
@synthesize name;
@synthesize tel;
@synthesize cellPhone;
@synthesize mainConct;
@synthesize telNum;
@synthesize iContactUtil;
@synthesize iViewController;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
      self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  [super setSelected:selected animated:animated];
  if (selected)
  {
    [self cellDidSelelct];
  }
  
    // Configure the view for the selected state
}


# pragma mark- 手机事件
- (IBAction)cellPhoneAction:(UIButton *)sender
{
  
  self.telNum = self.cellPhone.text;
  UIActionSheet *actionSheet = nil;
  actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),NSLocalizedStringFromTable(@"sendms", @"component_contact",nil),nil];
  actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
  actionSheet.destructiveButtonIndex = 0;	// make the second button red (destructive)
  [actionSheet showInView:sender.superview.superview]; // show from our table view (pops up in the middle of the table)

}

# pragma mark- 电话事件
- (IBAction)telAction:(UIButton *)sender
{
  self.telNum = self.tel.text;
  UIActionSheet *actionSheet = nil;
  actionSheet = [[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil) destructiveButtonTitle:nil otherButtonTitles:NSLocalizedStringFromTable(@"telephone", @"component_contact",nil),nil];
  actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
  actionSheet.destructiveButtonIndex = 0;	// make the second button red (destructive)
  [actionSheet showInView:sender.superview.superview]; // show from our table view (pops up in the middle of the table)
}
-(void)cellDidSelelct
{
  self.telNum = self.cellPhone.text;
  UIActionSheet *actionSheet = nil;
  actionSheet = [[UIActionSheet alloc] initWithTitle:@""
                                            delegate:self
                                   cancelButtonTitle:NSLocalizedStringFromTable(@"cancel", @"component_contact",nil)
                              destructiveButtonTitle:nil
                                   otherButtonTitles:NSLocalizedStringFromTable(@"cellPhone", @"component_contact",nil),NSLocalizedStringFromTable(@"sendms", @"component_contact",nil),NSLocalizedStringFromTable(@"telPhone", @"component_contact",nil),nil];
  actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
  actionSheet.destructiveButtonIndex = 0;	// make the second button red (destructive)
  [actionSheet showInView:iViewController.view]; // show from our table view (pops up in the middle of the table)
}
# pragma mark- actionSheet事件点击
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
  
	// the user clicked one of the OK/Cancel buttons
  if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"telPhone", @"component_contact",nil)])
  {
    
    //打座机
    [WAContactUtil contact:self.tel.text flag:0];
    
  }
  else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"sendms", @"component_contact",nil)])
  {
    iContactUtil = [[WAContactUtil alloc] init];

    //发短信
    [iContactUtil sendSMS:self.cellPhone.text content:@"" target:iViewController];
    
  }
  else if ([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:NSLocalizedStringFromTable(@"cellPhone", @"component_contact",nil)])
  {
    iContactUtil = [[WAContactUtil alloc] init];
    
    //打手机
      [WAContactUtil contact:self.cellPhone.text flag:0];
    
  }
//  [self release];
}

@end
