
/*!
 	@header	WAItem4Cell
 	@abstract	4个item的样式
 	@discussion	联系人姓名、联系人职称、联系人手机、联系人电话
 	@author	<#chenrh1#>
 	@copyright	<#ufida#>
 	@version	<#1.0#> 2013-03-26 10:33:36 Creation
 */
#import <UIKit/UIKit.h>
#import "WAContactUtil.h"
@interface WAItem4Cell : UITableViewCell<UIActionSheetDelegate>

{
  IBOutlet UILabel *title;
  IBOutlet UILabel *name;
  IBOutlet UILabel *cellPhone;
  IBOutlet UILabel *tel;
  IBOutlet UIButton *mainConct;
  UIViewController* iViewController;

}

/*!
 	@property
 	@abstract	 iViewController	viewController 显示cell的VC 在VC里判断cell是否WAItem4Cell的实例，
                     如果是给iViewController赋值
 */
@property (retain, nonatomic) UIViewController* iViewController;

/*!
 	@property
 	@abstract	title	（text1）联系人职称
 */
@property (retain, nonatomic) IBOutlet UILabel *title;

/*!
 	@property
 	@abstract	name	(text2)联系人姓名
 */
@property (retain, nonatomic) IBOutlet UILabel *name;

/*!
 	@property
 	@abstract	cellPhone	联系人手机
 */
@property (retain, nonatomic) IBOutlet UILabel *cellPhone;

/*!

 	@property

 	@abstract	tel	联系人电话

 */

@property (retain, nonatomic) IBOutlet UILabel *tel;

/*!

 	@property

 	@abstract	mainConct	主联系人标识

 */

@property (retain, nonatomic) IBOutlet UIButton *mainConct;


# pragma mark - 事件

/*!
 	@method
 	@abstract	手机点击事件
 	@discussion	打电话、发短信
 	@param 	sender 	button
 */
- (IBAction)cellPhoneAction:(UIButton *)sender;

/*!
 	@method
 	@abstract	电话点击事件
 	@discussion	打电话
 	@param 	sender 	button
 */
- (IBAction)telAction:(UIButton *)sender;

-(void)cellDidSelelct;
@end
