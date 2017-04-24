/*!
 @header WAHistoryDDList.h
 @abstract 
 @author xiaomumu
 @version 1.00 2012/8/1 Creation 
 */

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

#pragma mark -
#pragma mark 历史记录的定义

@protocol MWAHistoryDDListProtocal
/*!
 @method
 @abstract 点击了一行历史记录
 */
- (void)clickOneRow:(NSString *)value;

@end

@protocol MWAHistoryDDListProtocal;

/*!
 @class
 @abstract 历史记录
 */
@interface CWAHistoryDDList : UITableViewController
{
	NSString		*iSelectedText;
	NSMutableArray	*iSelectArray;
}
@property (nonatomic, copy)NSString	*iSelectedText;
@property (nonatomic, retain)NSMutableArray	*iSelectArray;
@property (assign) id <MWAHistoryDDListProtocal> iHistoryDelegate;

/*!
 @method
 @abstract 历史记录列表的更新
 @param aMutableArray 所有的历史记录
 */
- (void)updateData:(NSMutableArray*)aMutableArray;

@end
