//
//  WABaseTableViewController.h
//  SSTASK120521A
//
//  Created by 勇超 胡 on 14-5-22.
//
//

#import <UIKit/UIKit.h>

@interface CWABaseTableViewController : UITableViewController

/*!
 	@method
 	@abstract	适配 字体和字体颜色修改
 	@discussion
 	@param 	itemNum 字体颜色表示 0蓝 1 黑
 	@param 	aLabel LABEL
 	@result
 */
-(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel;
+(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel;
-(UIFont *)headerFont;
-(UIColor *)headerColor;
+(UIFont *)headerFont;
+(UIColor *)headerColor;
-(CGFloat)heightForRow:(NSInteger)itemNum;
+(CGFloat)heightForRow:(NSInteger)itemNum;
-(void)changeTextFontAndColorWithItem:(NSInteger)itemNum
                             forLabel:(UILabel*)aLabel
                        andAllItemNum:(NSInteger)allNum;
@end
