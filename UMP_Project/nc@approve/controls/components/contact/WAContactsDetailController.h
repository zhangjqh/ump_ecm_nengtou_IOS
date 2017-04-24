//
//  WAContactDetailController.h
//  SHADDB120528B
//
//  Created by hanning fan on 12-6-25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WAContactUtil.h"
#import "WAContactVO.h"

@interface CWAContactsDetailController : NSObject
{
  WAContactUtil *cu;
}

/*!
 	@method
 	@abstract	保存信息
 	@discussion	
 	@param 	contactPsnVO 	信息vo
 	@param 	sender 	代理
 */
-(void)addToAddressBook:(CWAContactVO *)contactPsnVO target:(id)sender;

/*!
 	@method
 	@abstract	发送名片
 	@discussion	
 	@param 	contactPsnVO 	名片vo
 	@param 	sender 	代理
 */
-(void)sendToOther:(CWAContactVO *)contactPsnVO target:(id)sender;

@end
