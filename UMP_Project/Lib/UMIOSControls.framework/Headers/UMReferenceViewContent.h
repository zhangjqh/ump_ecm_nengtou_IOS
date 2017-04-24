//
//  UMPReferenceView.h
//  UMPControls
//
//  Created by zhangnan on 13-3-20.
//
//

#import <UIKit/UIKit.h>

@interface UMReferenceViewContent : UIView
{
    CGPoint openLeftPointCenter;
    CGPoint openRightPointCenter;
    CGPoint closePointCenter;
    UITapGestureRecognizer *tapGestureRecognizer;
    UIPanGestureRecognizer *panGestureRecognizer;
}

@property(nonatomic,strong)UIView* leftParentView;
@property(nonatomic,strong)UIView* rightParentView;
@property(nonatomic,strong)UIView* childView;
@property(nonatomic,strong)UIView* currentParentView;
@property(nonatomic,getter = isOpened) BOOL isOpened;

@property(nonatomic,assign)NSInteger slidepadding;

//-(id)initWithFrame:(CGRect)frame LeftParentView:(UIView*)leftView withRightParentView:(UIView*)rightView withChildView:(UIView*)childView withGestureRecognized:(BOOL)bRecognized;

-(void)showLeft;
-(void)showRight;
-(void)backToInitialState;

-(void)changeTopView:(UIView*)newTopView;

@end
