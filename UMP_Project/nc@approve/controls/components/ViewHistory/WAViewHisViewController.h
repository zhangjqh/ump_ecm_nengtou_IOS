/*!
 @header CWAViewHisViewController.h
 @abstract ViewHistroy界面
 @author yangrui
 @copyright ufida
 @version 1.00 2012/05/22 Creation 
 */


#import <UIKit/UIKit.h>
#import "WAPullingRefreshTableView.h"
#import "WALocalDataController.h"
#import "WABaseVO.h"

#pragma mark ***************定义界面样式******************************
/*!
 @interface 
 @abstract 初始化界面的定义
 */
@interface CWAViewHistroyStyle: NSObject
{
    BOOL iHaveTitleBar;      //是否有titleBar,当没有titlebar时，left/right 
                             //button,title都不会有
    BOOL iHaveLeftButton;    //有没有左边按钮
    BOOL iHaveRightButton;   //有没有右边按钮
    BOOL iHaveTitleText;     //有没有标题文本
    BOOL iHaveBottomArea;    //有没有底部区域
}
@property(nonatomic,readwrite)BOOL iHaveTitleBar;
@property(nonatomic,readwrite)BOOL iHaveLeftButton;
@property(nonatomic,readwrite)BOOL iHaveRightButton;
@property(nonatomic,readwrite)BOOL iHaveTitleText;
@property(nonatomic,readwrite)BOOL iHaveBottomArea;

-(id)init;

-(id)initWithStyle:(CWAViewHistroyStyle*)aStyle;

@end
#pragma mark ***************MWAViewHistoryProtocal的定义***************
/*!
 @protocol
 @abstract 这个WAHistory的一个protocol定义,子类必须实现
 @discussion 实现数据返回
 */
@protocol MWAViewHistoryProtocal <NSObject>
@required
/*****************talbeview方面的协议******/
/*!
 @method
 @abstract 初始化某一个cell的高度
 */
- (CGFloat)setCellHeight:(UITableView *)tableView 
 heightForRowAtIndexPath:(NSIndexPath *)indexPath;

/*!
 @method
 @abstract 初始化某一个cell,cell需要用户初始化
 */
- (UITableViewCell *)setCell:(UITableView *)tableView 
       cellForRowAtIndexPath:(NSIndexPath *)indexPath;

/*!
 method
 @abstract 点击了tableView的一项
 */
- (void)selectCell:(UITableView *)tableView 
didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

#pragma mark ***************定义CWAViewHisViewController************************
@protocol MWAViewHistoryProtocal;

@interface CWAViewHisViewController : UIViewController<UITableViewDataSource,
UITableViewDelegate>
{
    CWAViewHistroyStyle  * iViewStyle;        //界面样式
    IBOutlet UITableView * iHistoryTableView; //历史列表
    IBOutlet UIImageView * iEmptyBg;          //空数据
    IBOutlet UIButton    * iLeftButton;       //左边按钮
    IBOutlet UIButton    * iRightButton;      //右边按钮
    IBOutlet UILabel     * iTitle;
    UIImage              * iLeftBgImg;
    UIImage              * iRightBgImg;
    NSString             * iLeftNavBtTitle;  
    NSString             * iRightNavBtTitle;
    
}

/*!
 @method
 @abstract 初始化函数
 */
-(id)init:(CWAViewHistroyStyle*)aStyle;

/*!
 @property
 */
@property(nonatomic,assign)id<MWAViewHistoryProtocal> iMWAViewHistoryDelegate;

/*!
 @property
 @abstract 左边按钮
 */
@property(nonatomic,retain)UIButton    * iLeftButton;   

/*!
 @property
 @abstract 右边按钮
 */
@property(nonatomic,retain)UIButton    * iRightButton;  

/*!
 @property
 @abstract 左边按钮文字
 */
@property(nonatomic,copy)NSString * iLeftNavBtTitle;

/*!
 @property
 @abstract 右边按钮文字
 */
@property(nonatomic,copy) NSString  * iRightNavBtTitle;

/*!
 @property
 @abstract 查看历史
 */
@property(nonatomic,retain)UILabel     * iTitle;

#pragma mark 设置界面
/*!
 @method
 @abstract 设置nav上的左侧按钮背景
 */
-(void)setNavLeftBtBg:(UIImage*)aNavLeftBtImg;

/*！
 @method
 @abstract 设置leftbutton title
 */
-(void)setNavLeftBtTitle:(NSString*)aNavLeftTitle;

/*!
 @method
 @abstract 设置nav上的右侧按钮背景
 */
-(void)setNavRightBtBg:(UIImage*)aNavRightBtBg;

/*！
 @method
 @abstract 设置navrightbutton title
 */
-(void)setNavRightBtTitle:(NSString*)aNavRightBtTitle;

/*!
 @method
 @abstract 根据奇偶数设置cell背景
 @param aCell 一个tableviewcell
 @param aIndexPath aCell 的indexpath
 */
-(void)setOddEvenCellBg:(UITableViewCell*)aCell 
          WithIndexPath:(NSIndexPath*)aIndexPath;


#pragma mark 子类可以重载下列函数，以实现点击事件
/*!
 @method
 @abstract 左边按钮点击事件
 */
-(IBAction)leftBtClick:(id)sender;

/*!
 @method
 @abstract 右边按钮点击事件
 */
-(IBAction)rightBtClick:(id)sender;



@end
