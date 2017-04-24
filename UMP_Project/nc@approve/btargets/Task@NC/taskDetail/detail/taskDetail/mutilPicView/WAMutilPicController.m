

#import "WAMutilPicController.h"
#import "WAMutilPicViewController.h"
#define WA_MSGPREVIEW_VIEW_WIDTH 320
#import "WARestPicInfoVO.h"
#import "WASpinnerView.h"
#import "WAUFTool.h"

@implementation CWAMutilPicController

@synthesize iFirstPicViewVO;
@synthesize iOherPicViewVO;
@synthesize iMutilPicViewController;
@synthesize iTaskID;
@synthesize iServiceCode;

static NSString *WA_PIC_PICCONTENT = @"piccontent";
static NSString *WA_PIC_TITLE = @"title";
static NSString *WA_PIC_FIRSTPIC = @"firstpic";
static NSString *WA_PIC_FIRSTPICDESC = @"firstpicdesc";
static NSString *WA_PIC_RESTPICLIST = @"restpic";
static NSString *WA_PIC_ID = @"id";
static NSString *WA_PIC_DESC = @"desc";

static NSString *WA_PIC_OTHERPICCONTENT = @"otherpiccontent";
static NSString *WA_PIC_PIC = @"pic";
static NSString *WA_PIC_PICNAME = @"picname";

-(id)init
{
  self = [super init];
  if(self)
  {
    iMutilPicBnsHandler = [[CWAMutilPicBnsHandler alloc] init];
    iCurentPageNum = -1;
  }
  return self;
}

- (void)getFirstPicWithTaskID:(NSString *)aTaskID
                       WithID:(NSString *)aID
                 WithSizetype:(NSString *)aSizetype
                    WithBlock:(TWAFirstPicReturnBlock)aBlock
              WithServiceCode:(NSString *)aServiceCode
{
 [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  CWAFirstPicContentRequestVO *firstPicContentRequestVO = [[CWAFirstPicContentRequestVO alloc] init];
  firstPicContentRequestVO.iId = aID;
  self.iTaskID = aTaskID;
  self.iServiceCode = aServiceCode;
  firstPicContentRequestVO.iSizetype = aSizetype;
  firstPicContentRequestVO.iTaskid = aTaskID;
  [firstPicContentRequestVO fillVoDictionary];
  [iMutilPicBnsHandler getFirstPicWithRequestVO:firstPicContentRequestVO WithServiceCode:aServiceCode withPicReturnBlock:^(NSDictionary *aDic, NSError *aError)
  {
    [[CWASpinnerView sharedCWASpinnerView]  hiddenSpinnerView];
    if(aError)
    {
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task",nil);
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                      message:[aError domain]
                                                     delegate:nil
                                            cancelButtonTitle:ok
                                            otherButtonTitles:nil];
      [alert show];
    }
    else
    {
      [self parseFisrtContentWithDic:aDic];
      iPageCountNum = [iFirstPicViewVO.iRestpiclist count];
       aBlock(iFirstPicViewVO);
    }
  }];

}

- (void)getOherPicWithTaskID:(NSString *)aTaskID
               WithInfopicid:(NSString *)aInfopicid
                WithSizetype:(NSString *)aSizetype
                   WithBlock:(TWAOherReturnBlock)aBlock
             WithServiceCode:(NSString *)aServiceCode
{
 [[CWASpinnerView sharedCWASpinnerView] showInWindowsIsFullScreen:YES withShowingText:NSLocalizedStringFromTable(@"Wait",@"btarget_task",nil)];
  CWAOtherPicContentRequestVO *otherPicContentRequestVO = [[CWAOtherPicContentRequestVO alloc] init];
  otherPicContentRequestVO.iTaskid = aTaskID;
  otherPicContentRequestVO.iInfopicid = aInfopicid;
  otherPicContentRequestVO.iSizetype = aSizetype;
  [otherPicContentRequestVO fillVoDictionary];
  [iMutilPicBnsHandler getOtherPicWithRequestVO:otherPicContentRequestVO WithServiceCode:aServiceCode withPicReturnBlock:^(NSDictionary *aDic, NSError *aError)
  {
    [[CWASpinnerView sharedCWASpinnerView] hiddenSpinnerView];
    if(aError)
    {
      NSString *ok = NSLocalizedStringFromTable(@"ok", @"btarget_task",nil);
      UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                      message:[aError domain]
                                                     delegate:nil
                                            cancelButtonTitle:ok
                                            otherButtonTitles:nil];
      [alert show];
    }
    else
    {
      [self parseOtherContentWithDic:aDic];
      aBlock(iOherPicViewVO);
    }
  }];
}

- (void)parseFisrtContentWithDic:(NSDictionary *)aDic
{
  NSArray *servicecodes = [aDic objectForKey:WA_HTTP_RTN_SERVICECODE_KEY];
  if(servicecodes)
  {
    for (NSInteger i = 0; i < [servicecodes count]; i++)
    {
      NSString *serviceCode = [servicecodes objectAtIndex:i];
      if ([aDic objectForKey:serviceCode] == [NSNull null])
      {
        continue;
      }
      NSArray *scodeDics = [aDic objectForKey:serviceCode];
      NSDictionary *scodeDic = [scodeDics objectAtIndex:0];
      NSDictionary *picContent = [scodeDic objectForKey:WA_PIC_PICCONTENT];
      NSString *firstPic = [picContent objectForKey:WA_PIC_FIRSTPIC];
      NSString *firstdesc = [picContent objectForKey:WA_PIC_FIRSTPICDESC];
      NSString *title = [picContent objectForKey:WA_PIC_TITLE];
    
      NSArray *otherPicLis = [picContent objectForKey:WA_PIC_RESTPICLIST];
      NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:1];
      for (int i = 0 ; i < [otherPicLis count]; i++)
      {
        NSDictionary *aDic= [otherPicLis objectAtIndex:i];
        NSString *iD = [aDic objectForKey:WA_PIC_ID];
        NSString *desc = [aDic objectForKey:WA_PIC_DESC];
        CWARestPicInfoVO *restPicInfoVO = [[CWARestPicInfoVO alloc] init];
        restPicInfoVO.iId = iD;
        restPicInfoVO.iDesc = desc;
        [array addObject:restPicInfoVO];
      }
       
      
      self.iFirstPicViewVO = [[CWAFirstPicViewVO alloc] init];
      
      iFirstPicViewVO.iFirstpic = firstPic;
      iFirstPicViewVO.iFirstpicdesc = firstdesc;
      iFirstPicViewVO.iRestpiclist = array;
      iFirstPicViewVO.iTitle = title;
      break;
    }
  
  }

}

- (void)parseOtherContentWithDic:(NSDictionary *)aDic
{
  NSArray *servicecodes = [aDic objectForKey:WA_HTTP_RTN_SERVICECODE_KEY];
  if(servicecodes)
  {
    for (NSInteger i = 0; i < [servicecodes count]; i++)
    {
      NSString *serviceCode = [servicecodes objectAtIndex:i];
      if ([aDic objectForKey:serviceCode] == [NSNull null])
      {
        continue;
      }
      NSArray *scodeDics = [aDic objectForKey:serviceCode];
      NSDictionary *scodeDic = [scodeDics objectAtIndex:0];
      NSDictionary *picContent = [scodeDic objectForKey:WA_PIC_OTHERPICCONTENT];
      NSString *pic = [picContent objectForKey:WA_PIC_PIC];
      NSString *picname = [picContent objectForKey:WA_PIC_PICNAME];

            
      self.iOherPicViewVO = [[CWAOherPicViewVO alloc] init];
      self.iOherPicViewVO.iPic = pic;
      self.iOherPicViewVO.iPicname = picname;
      break;
    }
    
    }

}


- (void)leftBtnClick:(id)sender
{
  [iMutilPicViewController.navigationController popViewControllerAnimated:YES];
}


#pragma mark - Swipe
-(void)handleSwipeFrom:(UISwipeGestureRecognizer *)recognizer
{
  if(recognizer.direction==UISwipeGestureRecognizerDirectionLeft)
  {
    //判读是否当前页面为最后页面,不是最后一页
    if (iCurentPageNum < iPageCountNum -1)
    {
   
      //页数大于已下载的页数
      if (iCurentPageNum >= -1)
      {
        //执行程序  根据图片id请求图片
        CWARestPicInfoVO *restPicInfo = (CWARestPicInfoVO *)[iFirstPicViewVO.iRestpiclist objectAtIndex:iCurentPageNum+1];
        if ([restPicInfo isKindOfClass:[CWARestPicInfoVO class]])
        {
          NSString *sizeType = nil;
          if(IS_WIDESCREEN)
          {
            sizeType = @"5";
          }
          else
          {
            sizeType = @"4";
          }
          [self getOherPicWithTaskID:iTaskID
                       WithInfopicid:restPicInfo.iId
                        WithSizetype:sizeType
                           WithBlock:^(CWAOherPicViewVO *aOtherPicViewVO)
            {
              iCurentPageNum += 1;
              [iMutilPicViewController showOtherPicView:aOtherPicViewVO];
            }
                     WithServiceCode:self.iServiceCode];
  
        }
        
      }
    }
  }
  
  if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
  {
    if(iCurentPageNum >= 0)
    {
      if(iCurentPageNum == 0)
      {
        [iMutilPicViewController showFirstPicView:iFirstPicViewVO];
        iCurentPageNum -= 1;
      }
      else
      {
        CWARestPicInfoVO *restPicInfo = (CWARestPicInfoVO *)[iFirstPicViewVO.iRestpiclist objectAtIndex:iCurentPageNum-1];
        if ([restPicInfo isKindOfClass:[CWARestPicInfoVO class]])
        {
          NSString *sizeType = nil;
          if(IS_WIDESCREEN)
          {
            sizeType = @"5";
          }
          else
          {
            sizeType = @"4";
          }
          [self getOherPicWithTaskID:iTaskID
                     WithInfopicid:restPicInfo.iId
                      WithSizetype:sizeType
                         WithBlock:^(CWAOherPicViewVO *aOtherPicViewVO)
         {
          iCurentPageNum -= 1;
          [iMutilPicViewController showOtherPicView:aOtherPicViewVO];
         }
                   WithServiceCode:self.iServiceCode];
        
        }
      }
    }
  }
}


@end
