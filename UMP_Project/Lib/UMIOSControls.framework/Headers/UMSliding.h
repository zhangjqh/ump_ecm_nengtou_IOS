//
//  UMPSlidingController.h
//  UMPControls
//
//  Created by zhangnan on 13-3-24.
//
//

#import <UIKit/UIKit.h>
#import "UMLayoutView.h"


@interface UMSliding : UMLayoutView
{

}

@property(nonatomic,strong)UMView* leftView;
@property(nonatomic,strong)UMView* rightView;
@property(nonatomic,strong)UMView* topView;
@property(nonatomic,assign)BOOL addGestureRecognized;
@property(nonatomic,strong)NSString * openrightview;
@property(nonatomic,strong)NSString * openleftview;

-(void)showLeft;
-(void)showRight;
-(void)backToInitialState;
-(BOOL)viewOpened;
-(void)changeTopViewCtl:(UIViewController*)newTopViewCtl;
-(void)leftSliding;
-(void)rightSliding;
@end


@interface UMSliding (JSCallProperty)

@property(nonatomic,strong)NSString * slidepadding;

@end
