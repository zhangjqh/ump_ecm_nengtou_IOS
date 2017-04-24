/*!
 @header WAAttentionViewController.h
 @abstract 关注视图view
 @author dequan
 @copyright ufida
 @version 1.00 2012/09/11 Creation 
 */

#import <UIKit/UIKit.h>
#import "WAGroupButtonView.h"
#import "WAAttentionController.h"

//navigationvbar的tag
#define WAATTENTION_NAVIBAR_TAG  101
//tableview的tag
#define WAATTENTION_TABLEVIEW_TAG 102
//rightbar的tag
#define WAATTENTION_RIGHTBAR_TAG 201
//leftbar的tag
#define WAATTENTION_LEFTBAR_TAG 202
//navitationtitle的tag
#define WA_NAVIGATION_TITLE_TAG 105

/*!
 @struct
 @abstract 界面的一些配置项
 @constant iHaveLeftButton 是否有左边的button
 @constant iHaveRightBtuuon 是否有右边的button
 @constant iHaveSettingView 是否有settingview
 @constant iHaveGroupButton 是否有groupbutton
 */
typedef struct 
{
  BOOL iHaveLeftButton;
  BOOL iHaveRightBtuuon;
  BOOL iHaveSettingView;
  BOOL iHaveGroupButton;
}AttentionStyle;

@interface CWAAttentionViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
  AttentionStyle iAttentionStyle;
  NSString *iFileName;
  NSMutableArray *iDataArray;
  NSInteger iNumOfClickRightButton;
  IBOutlet UITableView *iAttentionTableView;
  IBOutlet UIImageView *iNoDataImageView;
}

- (void)editAction;
@end
