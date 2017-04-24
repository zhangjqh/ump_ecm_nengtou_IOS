/*!
 	@header	HTML附件界面
 	@abstract
 	@discussion
 	@author	huych
 	@copyright	ufida
 	@version	1.0 2013-05-13 16:36:01 Creation
 */
#import <UIKit/UIKit.h>

@class CWAHTMLContentController;
@interface CWAHTMLContentViewController : UIViewController
{
  CWAHTMLContentController *iHTMLContentController;
  NSString *iTaskID;
  NSString *iStatuscode;
  NSString *iStatuskey;
  NSString *iID;
  NSString *iServiceCode;
  UIWebView *iWebView;
}

@property (nonatomic,copy)NSString *iTaskID;
@property (nonatomic,copy)NSString *iStatuscode;
@property (nonatomic,copy)NSString *iStatuskey;
@property (nonatomic,copy)NSString *iID;
@property (nonatomic,copy)NSString *iServiceCode;


@end
