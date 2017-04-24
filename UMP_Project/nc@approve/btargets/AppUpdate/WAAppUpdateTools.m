//  WAAppUpdateTools.m
//  UMP_Project
//
//  Created by Forlin on 15/4/1.
//
//

#import "WAAppUpdateTools.h"

@implementation WAAppUpdateTools

-(void)alertWin{
    UIAlertView *newView = [[UIAlertView alloc] initWithTitle:@"test" message:@"更新" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:nil, nil];
    [newView show];
}
@end
