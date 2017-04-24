#import <UIKit/UIKit.h>
#import "commonHelper.h"
typedef void (^UMJBResponseCallback)(id responseData);
typedef void (^UMJBHandler)(id data, UMJBResponseCallback responseCallback);

@interface JavascriptBridge : NSObject <UIWebViewDelegate>
@property   CFAbsoluteTime costTime;
+ (id)bridgeForWebView:(UIWebView*)webView handler:(UMJBHandler)handler;
+ (id)bridgeForWebView:(UIWebView*)webView webViewDelegate:(id <UIWebViewDelegate>)webViewDelegate handler:(UMJBHandler)handler;
+ (void)enableLogging;
- (void)send:(id)message;
- (void)send:(id)message responseCallback:(UMJBResponseCallback)responseCallback;
- (void)registerHandler:(NSString*)handlerName handler:(UMJBHandler)handler;
- (void)callHandler:(NSString*)handlerName;
- (void)callHandler:(NSString*)handlerName data:(id)data;
- (void)callHandler:(NSString*)handlerName data:(id)data responseCallback:(UMJBResponseCallback)responseCallback;
- (void)reset;

@end
