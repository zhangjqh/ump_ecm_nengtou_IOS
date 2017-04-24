//
//  ContactVO.h
//  Contact
//
//  Created by hanning fan on 12-5-7.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WABaseVO.h"

@interface CWAContactVO : CWABaseVO
{
  NSString *iTitle;
  NSString *iImage;
  NSString *iNavTitle;
  NSString *iJob;
  NSString *iDept;
  NSString *iCorp;
  NSMutableArray *iDetailArray;
  NSMutableArray *iDynamicArray;
}
/*!
 @property
 @abstract 姓名
 */
@property(nonatomic,copy) NSString *iTitle;

/*!
 @property
 @abstract 头像
 */
@property(nonatomic,copy) NSString *iImage;
/*!
 @property
 @abstract 页面标题名
 */
@property(nonatomic,copy) NSString *iNavTitle;
/*!
 @property
 @abstract 职务
 */
@property(nonatomic,copy) NSString *iJob;
/*!
 @property
 @abstract 部门
 */
@property(nonatomic,copy) NSString *iDept;
/*!
 @property
 @abstract 公司
 */
@property(nonatomic,copy) NSString *iCorp;
/*!
 @property
 @abstract 联系方式数组(WAContactDetailVO)
 */
@property(nonatomic,retain) NSMutableArray *iDetailArray;

/*!
 	@property
 	@abstract	iDynamicArray	动态项数组
 */
@property(nonatomic,retain) NSMutableArray *iDynamicArray;



@end
