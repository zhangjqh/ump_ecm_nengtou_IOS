/*!
 @header WARowItemParser.h 
 @abstract 动态项解析类
 @author Created by Li Xiaopeng on 12-9-22.
 @version 1.00 2012/9/22 Creation (此文档的版本信息)
 */

#import <Foundation/Foundation.h>
#import "WARowVO.h"
#import "WAItemVO.h"
#import "WAContactUtil.h"
#import "WAStringUtil.h"

@protocol MWARowItemParserReferDelegate;

/*!
 @class
 @abstract 动态项解析器
 */
@interface CWARowItemParser : NSObject<UIActionSheetDelegate>
{
  NSString* iValue;
  UIViewController* iViewController;
  WAContactUtil *iContactUtil;
  NSMutableDictionary *iStyleDic;
}


/*!
 	@property
 	@abstract	styleDic	MODE和样式对应集合
 */
@property (nonatomic,retain)NSMutableDictionary *iStyleDic;

@property (nonatomic, assign) id <MWARowItemParserReferDelegate> iReferDelegate;

/*!
 @method
 @abstract  CWARowItemParser单例
 @discussion 
 @result CWARowItemParser* CWARowItemParser单例
 */
+(CWARowItemParser*)sharedManager;

/*!
 @method
 @abstract  CWARowItemParser单例 指定cell样式
 @discussion
 @result CWARowItemParser* CWARowItemParser单例
 */
+(CWARowItemParser*)sharedManagerWithstyleDic:(NSMutableDictionary *) styleDic;
/*!
 	@method
 	@abstract	清空styleDic
 	@discussion	<#Description#>
 */
+(void) resetStyleDic;


/*!
 @method
 @abstract  将Row-Item Dic转化为Row-Item VO
 @discussion 
 @param aDic 输入Row-Item Dic
 @result CWARowVO* 返回CWARowVO
 */
-(CWARowVO*)rowVOWithRowDic:(NSDictionary*)aDic;

/*!
 @method
 @abstract  计算tablecell的高度
 @discussion 
 @param aRowVO 输入Row-Item VO
 @result CGFloat tablecell的高度
 */
-(CGFloat)heightForRowWithRowVO:(CWARowVO*)aRowVO;

/*!
 @method
 @abstract  根据RowVO解析生成tablecell
 @discussion 
 @param aTableView 列表view
 @param aRowVO 输入RowVO
 @result UITableViewCell 返回UITableViewCell
 */
-(UITableViewCell*)parseRowItemWithTableView:(UITableView *)aTableView 
                                    andRowVO:(CWARowVO*)aRowVO; 

/*!
 @method
 @abstract  解析动作响应
 @discussion 
 @param aViewController 界面VC
 @param aRowVO 输入RowVO
 @result void
 */
-(void)performActionWithViewController:(UIViewController*)aViewController
                              andRowVO:(CWARowVO*) aRowVO;

@end

/*!
 @protocol
 @abstract 这个CWARowItemParser类的一个protocol
 @discussion 实现发送参照请求
 */
@protocol MWARowItemParserReferDelegate <NSObject>

@optional
/*!
 @method
 @abstract  发送参照请求
 @discussion 发送参照请求
 @param aId 发送参照请求所需id
 @param aType 发送参照请求的类型
 @result void
 */
- (void)sendReferRequestWithID:(NSString*)aId
                       andType:(NSString*)aType;


@end
