/*!
 @header WAContactUtil.m
 @abstract 联系方式工具
 @author fanhn
 @copyright ufida
 @version 1.00 2012/05/14 Creation
 */

#import "WAContactUtil.h"
#import "WAStringUtil.h"

@implementation WAContactUtil

+(BOOL)contact:(NSString *)aUrl flag:(NSInteger)aFlag
{
  
  switch (aFlag)
  {
    case ETelephone:
    {
      //telprompt:有弹出框,呼叫后并返回;tel:直接呼叫,不能返回.
      if (![CWAUFTool isIphone])
      {// 该设备不支持电话功能
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedStringFromTable(@"NCV61_AlertInfo", @"Util_contact", nil)
                                                        message:NSLocalizedStringFromTable(@"NCV61_AlertInfoForPhoneAvailable", @"Util_contact", nil)
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:NSLocalizedStringFromTable(@"NCV61_Alert_Confirm", @"Util_contact", nil), nil];
        [alert show];
      }
      else
      {
        BOOL res = [[UIApplication sharedApplication] openURL:
                    [NSURL URLWithString:[NSString stringWithFormat:@"tel://%@",aUrl]]];
        if (!res)
        {// 不是有效的电话号码 
          UIAlertView *alert = [[UIAlertView alloc]
                                initWithTitle:NSLocalizedStringFromTable(@"NCV61_AlertInfo", @"Util_contact", nil)
                                message:NSLocalizedStringFromTable(@"NCV61_AlertIllegalPhoneNo", @"Util_contact", nil)
                                delegate:self
                                cancelButtonTitle:nil
                                otherButtonTitles:NSLocalizedStringFromTable(@"NCV61_Alert_Confirm", @"Util_contact", nil), nil];
          [alert show];
        }
      }
    }
      break;
    case ESms:
    {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"sms://%@",aUrl]]];
      
      
    }
      break;
    case EEmail:
    {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"mailto://%@",aUrl]]];
      
    }
      break;
    case EWebsite:
    {
      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@",aUrl]]];
    }
      break;
    default:
      break;
  }
  
  return true;
}

-(void)sendSMS:(NSString *) phoneNumber content:(NSString *)content target:(id)sender
{
  
  if([MFMessageComposeViewController canSendText])
  {
    MFMessageComposeViewController * controller = [[MFMessageComposeViewController alloc] init];
    //添加号码
    controller.recipients = [NSArray arrayWithObjects:phoneNumber,nil];
    //添加内容
    controller.body = content;
    controller.messageComposeDelegate = self;
    [sender presentModalViewController:controller animated:YES];
  }
  else
  {//该设备不支持短信功能
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedStringFromTable(@"NCV61_AlertInfo", @"Util_contact", nil)
                                                    message:NSLocalizedStringFromTable(@"NCV61_AlertMessageAvailable", @"Util_contact", nil)
                                                   delegate:sender
                                          cancelButtonTitle:nil
                                          otherButtonTitles:NSLocalizedStringFromTable(@"NCV61_Alert_Confirm", @"Util_contact", nil), nil];
    [alert show];
  }
  
}
-(void)sendEmail:(NSArray *)mailArray ccRecipients:(NSArray *)ccArray bccRecipients:(NSArray *)bccArray subject:(NSString *)subject messageBody:(NSString *)body target:(id)sender
{
  
  if ([MFMailComposeViewController canSendMail])
  {
    @try
    {
      MFMailComposeViewController *controller = [[MFMailComposeViewController alloc]init];
      //添加收件人
      [controller setToRecipients:mailArray];
      //添加抄送
      [controller setCcRecipients:ccArray];
      //添加密送
      [controller setBccRecipients:bccArray];
      //添加主题
      [controller setSubject:subject];
      //添加附件
      //   [controller addAttachmentData:nil mimeType:nil fileName:nil];
      //添加内容
      [controller setMessageBody:body isHTML:NO];
      controller.mailComposeDelegate = self;
      [sender presentModalViewController:controller animated:YES];
    }
    @catch (NSException *exception)
    {
    }
    @finally
    {
      ;
    }
    
  }
  else
  {//设置邮箱再发送
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedStringFromTable(@"NCV61_AlertInfo", @"Util_contact", nil)
                                                    message:NSLocalizedStringFromTable(@"NCV61_AlertNoMailSetting", @"Util_contact", nil)
                                                   delegate:self
                                          cancelButtonTitle:nil
                                          otherButtonTitles:NSLocalizedStringFromTable(@"NCV61_Alert_Confirm", @"Util_contact", nil), nil];
    [alert show];
  }
  
}
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
  
  [controller dismissViewControllerAnimated:YES completion:^{
  }];
  switch ( result )
  {
    case MessageComposeResultCancelled:
    {
      //click cancel button
         }
      break;
    case MessageComposeResultFailed:// send failed
      break;
    case MessageComposeResultSent:
    {
      
      //do something
    }
      break;
    default:
      break;
  }
  
}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
  
  [controller dismissViewControllerAnimated:YES completion:^{
    
  }];
  switch ( result )
  {
    case MFMailComposeResultCancelled:
    {

      
    }
      break;
    case MFMailComposeResultFailed:// send failed
    {
      
    }
      break;
    case MFMailComposeResultSaved:
    {
      
    }
      break;
    case MFMailComposeResultSent:
    {
      
      //do something
      
    }
      break;
    default:
      break;
  }
  
}

-(void)addToAddressBook:(NSArray *)contactDetailArray name:(NSString *)name image:(UIImage *)image job:(NSString *)job corpAndDept:(NSString *)corpAndDept target:(id)sender
{
  
}
- (void)newPersonViewController:(ABNewPersonViewController *)newPersonView didCompleteWithNewPerson:(ABRecordRef)person
{
  
  if (WA_CURENT_OS_V>=5.0) {
    [newPersonView dismissViewControllerAnimated:YES completion:^{
      
    }];
  }
  else{
    [newPersonView dismissViewControllerAnimated:YES completion:^{
      
    }];
  }
  
  
}

+(void)addContactForName:(NSString *)name telephone:(NSString *)telNumber email:(NSString *)email address:(NSString *)address
{
 }

+(NSMutableArray *)getFromContact
{

	return nil;
}

@end

