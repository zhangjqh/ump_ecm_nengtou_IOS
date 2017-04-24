#import "WABaseVO.h"
#import "WACommonInfoVO.h"
#import "WABnsDesVO.h"
#import "WAResponseMsg.h"
#import "WAHTTPNotify.h"
#import "WAHTTP.h"
#import "WAHTTPRequestHandler.h"

/*!
 @enum
 @abstract 键盘类型
 @constant EUIKeyboardTypeDefault 默认键盘
 @constant EUIKeyboardTypeASCIICapable 中文键盘
 @constant EUIKeyboardTypeNumbersAndPunctuation 数字键盘
 @constant EUIKeyboardTypeURL 网络地址键盘
 @constant EUIKeyboardTypeEmailAddress 电子邮件键盘
 */
typedef enum 
{
  EUIKeyboardTypeDefault = UIKeyboardTypeDefault,         
  EUIKeyboardTypeASCIICapable = UIKeyboardTypeASCIICapable,           
  EUIKeyboardTypeNumbersAndPunctuation = UIKeyboardTypeNumbersAndPunctuation, 
  EUIKeyboardTypeURL =UIKeyboardTypeURL,  
  EUIKeyboardTypeEmailAddress = UIKeyboardTypeEmailAddress
}TWAUIKeyboardType;

/*!
 @enum
 @abstract 帐套类型
 @constant WA_ACCOUNTTYPE_UNKNOWN 未知类型
 @constant WA_ACCOUNTTYPE_U8 U8多帐套
 @constant WA_ACCOUNTTYPE_NC NC
 @constant WA_ACCOUNTTYPE_OTHER 默认类型 其他类型
 */
typedef enum
{
  WA_ACCOUNTTYPE_UNKNOWN =0,
  WA_ACCOUNTTYPE_U8 =1,
  WA_ACCOUNTTYPE_NC =2,
  WA_ACCOUNTTYPE_OTHER =3,
}WAAccountType;








