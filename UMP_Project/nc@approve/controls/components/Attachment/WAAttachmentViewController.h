/*!
 @header WAAttachmentViewController 单附件展示Component
 @abstract 以UIWebView方式展示附件 支持格式（doc/docx/xls/xlsx/ppt/pptx/png
 /jpg/pdf/txt/html/pages/numbers/keynote） 
 @author Created by sunset 
 @version 1.00 12-5-16 Creation 
 */
#import <UIKit/UIKit.h>

#define WA_ATT_NAVIGATIONBAR_TAG 101

/*!
 @class WAAttachmentViewController 单附件展示Component
 @abstract 支持对附件navigation bar的定制化
 */
@interface CWAAttachmentViewController : UIViewController
{
  NSString *iPath;
  NSString* iTitle;
  UIButton *iBackBtn;
  UIColor *iWebViewBDColor;
  BOOL iWebViewBDOpaque;
  
  IBOutlet UINavigationBar *navBar;
  IBOutlet UIBarButtonItem *iBarItem;
  IBOutlet UINavigationItem *iNavBarItem;
}

@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;

@property (nonatomic, retain) IBOutlet UIBarButtonItem *iBarItem;
@property (nonatomic, retain) IBOutlet UINavigationItem *iNavBarItem;


/*!
 @property
 @abstract 用于展示附件的UIWebView
 */
@property (retain, nonatomic) IBOutlet UIWebView *iAttWebView;


/*!
 @property
 @abstract 待展示附件全路径 
 */
@property (copy,nonatomic) NSString *iPath;

/*!
 @property
 @abstract 标题
 */
@property (copy,nonatomic) NSString* iTitle;

/*!
 @property
 @abstract 返回按钮
 */
@property (retain, nonatomic) IBOutlet UIButton *iBackBtn;

/*!
 @property
 @abstract webView背景颜色
 */
@property (retain, nonatomic) UIColor *iWebViewBDColor;

/*!
 @property
 @abstract webview是否不透明
 */
@property (assign, nonatomic) BOOL iWebViewBDOpaque;

/*!
 @method
 @abstract 初始化方法
 @discussion 
 @param aPath 待下载附件全路径
 @param aTitle 用于在附件导航显示的title,可以为nil,nil则显示“浏览附件”
 @result id WAAttachmentViewController (not owned) 需要自行销毁
 */
-(id) initWithFilePath:(NSString*)aPath 
              andTitle:(NSString*)aTitle;


/*!
 @method
 @abstract 附件导航返回按钮
 @discussion 
 @param sender 
 @result IBAction
 */
-(IBAction)backBtnAction:(id)sender;

/*!
 @method
 @abstract 设置webView的背景颜色
 @discussion
 @param aColor webview的背景颜色
 @param aOpaque webview是否不透明,YES＝不透明，NO＝透明
 @result IBAction
 */
- (void)setBackgroundColor:(UIColor *)aColor
                withOpaque:(BOOL)aOpaque;
@end
