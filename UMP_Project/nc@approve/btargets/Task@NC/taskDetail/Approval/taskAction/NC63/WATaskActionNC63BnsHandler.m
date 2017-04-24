#import "WATaskActionNC63BnsHandler.h"
#import "WAHTTPRequestHandler.h"
#import "WASpinnerView.h"
#import "TaskDef.h"
@implementation CWATaskActionNC63BnsHandler

@synthesize iTaskActionReturnBlock;

- (void)dealloc
{
    Block_release(iTaskActionReturnBlock);
    [super dealloc];
}

- (void)doActionWithDoActionRequstsVO:(CWADoActionRequstsVO *)aDoActionRequstsVO
           WithAttachMentUpRequestsVO:(CWAAttachMentsUpRequestsVO *)aAttachMentUpRequestsVO
                      WithServiceCode:(NSString *)aServiceCode
                      withReturnBlock:(TWATaskActionReturnBlock)aBlock
{
    self.iTaskActionReturnBlock = aBlock;
    NSMutableArray *actiontypes = [[NSMutableArray alloc] initWithCapacity:1];
    NSMutableArray *servicecodes = [[NSMutableArray alloc] initWithCapacity:1];
    NSMutableArray *dataArray = [[NSMutableArray alloc] initWithCapacity:1];
    if(aAttachMentUpRequestsVO)
    {
        [actiontypes addObject:@"uploadFile"];
        [servicecodes addObject:aServiceCode];
        [dataArray addObject:aAttachMentUpRequestsVO];
    }
    if(aDoActionRequstsVO)
    {
        [actiontypes addObject:@"doAction"];
        [servicecodes addObject:aServiceCode];
        [dataArray addObject:aDoActionRequstsVO];
    }
    
    CWABnsDesVO *bnsDesVO = [[CWABnsDesVO alloc] initWithComponetID:@"A0A007"
                                                        actionTypes:actiontypes];
    
    bnsDesVO.iServiceCodes = servicecodes;
    [actiontypes release];
    
    [[CWAHTTPRequestHandler sharedManager] firePostRequestWithMAOCBodyData:dataArray
                                                                  delegate:self
                                                                    mehtod:(RQ_METHOD)NORMAL
                                                                     bnsVO:bnsDesVO];
    
    [bnsDesVO release];
    [dataArray release];
    [servicecodes release];
    
}


- (void)failedRequestWithError:(NSError*)theError
{
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    [self showAlertView:theError.domain];
}

- (void)showAlertView:(NSString*)aDesc
{
    UIAlertView *alertView =
    [[UIAlertView alloc] initWithTitle: nil
                               message: aDesc
                              delegate: nil
                     cancelButtonTitle:NSLocalizedStringFromTable(@"ok", @"btarget_task",nil)
                     otherButtonTitles:nil];
    [alertView show];
    [alertView release];
    
}

- (void)requestOfOneComponentMultiActionsResponesVOs:(NSArray*)vosArray
{
    
    @try
    {
        NSMutableString *mDesc = [[NSMutableString alloc] initWithCapacity:1];
        NSString *doActionSuccDesc = nil;
        for(int i = 0 ; i < [vosArray count];i++)
        {
            CWABaseVO *baseVO = [vosArray objectAtIndex:i];
            NSDictionary *dic = baseVO.voDictionary;
            NSNumber *flag = [dic objectForKey:WA_HTTP_R_FLAG];
            NSString *desc = [dic objectForKey:WA_HTTP_R_DESC];
            NSString *actinType = [dic objectForKey:WA_HTTP_RTN_ACTIONTYPE_KEY];
            
            //上传附件失败，仅仅提示
            if(1 == [flag intValue]  && [actinType isEqualToString:@"uploadFile"])
            {
                if([mDesc length] > 0)
                {
                    [mDesc appendString:[NSString stringWithFormat:@",%@",desc ]];
                }
                else
                {
                    [mDesc appendString:desc];
                }
            }
            else if(0 > [flag intValue]  && [actinType isEqualToString:@"uploadFile"])
            {
                if([mDesc length] > 0)
                {
                    [mDesc appendString:[NSString stringWithFormat:@",%@",desc ]];
                }
                else
                {
                    [mDesc appendString:desc];
                }
            }
            //提交动作失败，返回
            else if( 1 == [flag intValue] && [actinType isEqualToString:@"doAction"])
            {
                NSError *erro = [[NSError alloc] initWithDomain:desc
                                                           code:WA_TASKCENTER_ERRORCODE
                                                       userInfo:nil];
                iTaskActionReturnBlock(nil,erro);
                [mDesc release];
                return;
            }
            else if( 0 > [flag intValue] && [actinType isEqualToString:@"doAction"])
            {
                NSError *erro = [[NSError alloc] initWithDomain:desc
                                                           code:WA_TASKCENTER_ERRORCODE
                                                       userInfo:nil];
                iTaskActionReturnBlock(nil,erro);
                [mDesc release];
                return;
            }
            else if(0 == [flag intValue] && [actinType isEqualToString:@"doAction"])
            {
                doActionSuccDesc = desc;
            }
        }
        
        
        if([mDesc length] > 0)
        {
            iTaskActionReturnBlock(mDesc,nil);
        }
        else
        {
            iTaskActionReturnBlock(doActionSuccDesc,nil);
        }
        
        [mDesc release];
    }
    @catch (NSException *exception)
    {
        
    }
    @finally
    {
        
    }
    
}
#pragma mark -
#pragma mark MWAHTTPNotify methods
//异步可用 请求结束时，此方法被调用
-(void)requestFinishedWithResponseVO:(CWABaseVO *)aBaseVO andMsgVO:(CWAResponseMsg *)aMsgVO
{
    {
        NSNumber *flag = aMsgVO.iFlag;
        NSString *desc = aMsgVO.iDesc;
        
        
        __block NSDictionary *conditonDic = nil;
        // 列表组织错误
        __block NSError *conditonError = nil;
        
        @try
        {
            if (flag)
            {
                if ( 0 == [flag intValue] )
                {
                    // 待构造界面vo的返回值
                    conditonDic = aBaseVO.voDictionary;
                }
                else if (1 == [flag intValue])
                {
                    conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
                }
                else if (0 > [flag intValue])
                {
                    conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
                }
                else
                {
                    conditonError = [[NSError alloc] initWithDomain:desc code:WA_TASKCENTER_ERRORCODE userInfo:nil];
                }
                
                // 列表的请求或解析发生错误 (例如中间级别的数据结构异常)
                if (!conditonError && !conditonDic )
                {
                    conditonError = [[NSError alloc] initWithDomain:NSLocalizedStringFromTable(@"structerror",@"btarget_task", nil)
                                                               code:WA_TASKCENTER_ERRORCODE
                                                           userInfo:nil];
                }
            }
        }
        @catch (NSException *exception)
        {
            
        }
        @finally
        {
            
        }
        // 回传值
        iTaskActionReturnBlock(desc,conditonError);
        [conditonError release];
        
    }
}

@end