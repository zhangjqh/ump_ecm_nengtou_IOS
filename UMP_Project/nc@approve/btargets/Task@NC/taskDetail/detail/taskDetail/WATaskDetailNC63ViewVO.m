#import "WATaskDetailNC63ViewVO.h"
#import "WATaskAcListVO.h"
#import "WAHTMLResourceVO.h"
@implementation CWATaskDetailNC63ViewVO

//任务动作列表的返回key
//任务任务动过的key
static NSString *WA_TASKDETAIL_TASKACTION = @"getTaskAction";
//架构层的key
static NSString *WA_TASKDETAIL_ACTIONSTRUCTLIST = @"actionstructlist";
static NSString *WA_TASKDETAIL_ACTIONSTURCT = @"actionstruct";

//任务附件返回关键key
//任务附件的key
static NSString *WA_TASKDETAIL_TASKATTACHMENT = @"getNC63MessageAttachmentList";
static NSString *WA_TASKDETAIL_ATTACHMENTLIST = @"attachmentlist";
static NSString *WA_TASKDETAIL_ATTACHMENT = @"attachment";
static NSString *WA_TASKDETAIL_ATTACHMENT_COUNT = @"count";

//任务动作列表的key
static NSString *WA_TASKDETAIL_ACTIONTYPE = @"actionType";

//任务详情的返回关键key
//任务列表的key
static NSString *WA_TASKDETAIL_GETTASKBILL = @"getTaskBill";
static NSString *WA_TASKDETAIL_TASKBILL = @"taskbill";
static NSString *WA_TASKDETAIL_STYLE = @"style";
static NSString *WA_TASKDETAIL_ROWCOUNT = @"rowcnt";
static NSString *WA_TASKDETAIL_HTML = @"htmlcontent";
static NSString *WA_TASKDETAIL_HTMLNAME = @"htmlname";
static NSString *WA_TASKDETAIL_HTMLFILE = @"htmlfile";
static NSString *WA_TASKDETAIL_RESOUCEDIR = @"resoucedir";
static NSString *WA_TASKDETAIL_RESOURCELIST = @"resourcelist";
static NSString *WA_TASKDETAIL_RESOURCEFILE = @"resourcefile";
static NSString *WA_TASKDETAIL_RESOURCENAME = @"resourcename";
static NSString *WA_TASKDETAIL_TITLE = @"title";
static NSString *WA_TASKDETAIL_DATA = @"data";
static NSString *WA_TASKDETAIL_ROW = @"row";
static NSString *WA_TASKDETAIL_CONTENT = @"content";
static NSString *WA_TASKDETAIL_TASKHEADER = @"taskheader";

//催办内容
static NSString *WA_TASKDETAIL_GETREMINDERCONTENT = @"getReminderContent";
static NSString *WA_TASKDETAIL_REMINDE = @"reminde";
static NSString *WA_TASKDETAIL_CONTENTREMINDE = @"content";


//正文内容
static NSString *WA_TASKDETAIL_GETMAINBODY = @"getMainBody";
static NSString *WA_TASKDETAIL_MAINBODY = @"mainbody";
static NSString *WA_TASKDETAIL_CONTENTTYPE = @"contenttype";
static NSString *WA_TASKDETAIL_FILESIZE = @"filesize";
static NSString *WA_TASKDETAIL_FILLENAME = @"fillename";
static NSString *WA_TASKDETAIL_MAINBODYID = @"mainbodyid";

@synthesize iReminderContent;
@synthesize iMainBodyViewVO;
@synthesize iAttachmentCount;
@synthesize iStatuskey;
@synthesize iStatuscode;


- (void)initMemberVariables
{
  iTaskActionArray = [[NSMutableArray alloc] initWithCapacity:1];
  
  @try
  {
    NSDictionary *actionDic = [iToInitDataDic objectForKey:WA_TASKDETAIL_ACTIONTYPE];
    NSEnumerator *keys = [actionDic keyEnumerator];
    NSString *actionType = [keys nextObject];
    while (actionType)
    {
      NSString *serviceCode = [actionDic objectForKey:actionType];
      self.iServiceCode = serviceCode;
      if ([actionType isEqualToString:WA_TASKDETAIL_TASKACTION])
      {
        NSDictionary *actionDic = [[[iToInitDataDic objectForKey:actionType] objectAtIndex:0] objectForKey:WA_TASKDETAIL_ACTIONSTRUCTLIST];
        iTaskAcListHint = [[actionDic objectForKey:@"hint"] copy];
        for (NSDictionary * dic in [actionDic objectForKey:WA_TASKDETAIL_ACTIONSTURCT])
        {
          CWATaskAcListVO *aRightVO = [[CWATaskAcListVO alloc] initWithDic:dic];
          aRightVO.iServiceCode = serviceCode;
          [iTaskActionArray addObject:aRightVO];
        }
      }
      else if ([actionType isEqualToString:WA_TASKDETAIL_GETTASKBILL])
      {
        NSDictionary *actionDic = [[[[iToInitDataDic objectForKey:actionType] objectAtIndex:0]
                                    objectForKey:WA_TASKDETAIL_TASKBILL] objectAtIndex:0];
        iStyle = [[actionDic objectForKey:WA_TASKDETAIL_STYLE] intValue];
        iTaskBillBodyCount = [[actionDic objectForKey:WA_TASKDETAIL_ROWCOUNT] copy];
        iTaskTitle = [[actionDic objectForKey:WA_TASKDETAIL_TITLE] copy];
        NSDictionary *htmlDic = [actionDic objectForKey:WA_TASKDETAIL_HTML];
      
        if(htmlDic)
        {
          self.iHtmlname = [htmlDic objectForKey:WA_TASKDETAIL_HTMLNAME];
          self.iHtmlfile = [htmlDic objectForKey:WA_TASKDETAIL_HTMLFILE];
          self.iResoucedir = [htmlDic objectForKey:WA_TASKDETAIL_RESOUCEDIR];
          NSArray *resourcelist = [htmlDic objectForKey:WA_TASKDETAIL_RESOURCELIST];
        
        
          NSMutableArray *mResourcelist = [[NSMutableArray alloc] initWithCapacity:1];
          for(int i = 0 ; i < [resourcelist count];i++)
          {
            CWAHTMLResourceVO *aHTMLResourceVO = [[CWAHTMLResourceVO alloc] init];
            NSDictionary *resourceDic = [resourcelist objectAtIndex:i];
            NSString *resourcefile = [resourceDic objectForKey:WA_TASKDETAIL_RESOURCEFILE];
            NSString *resourcename = [resourceDic objectForKey:WA_TASKDETAIL_RESOURCENAME];
            aHTMLResourceVO.iResourcefile = resourcefile;
            aHTMLResourceVO.iResourcename = resourcename;
            [mResourcelist addObject:aHTMLResourceVO];
          }
          self.iResourcelist = mResourcelist;
        }
        if ([actionDic objectForKey:WA_TASKDETAIL_DATA])
        {
          iIsHaveTableBody = YES;
          NSArray * tempArray = [[actionDic objectForKey:WA_TASKDETAIL_DATA]objectForKey:WA_TASKDETAIL_ROW];
          if (tempArray != nil)
          {
            iTaskBillBodyArray = [[NSMutableArray alloc] initWithArray:tempArray];
          }
          else
          {
            iTaskBillBodyArray = [[NSMutableArray alloc] initWithObjects:[[actionDic objectForKey:WA_TASKDETAIL_DATA]
                                                                    objectForKey:WA_TASKDETAIL_CONTENT],nil];
          }
        }
        if ([actionDic objectForKey:WA_TASKDETAIL_TASKHEADER])
        {
          iTaskBillHeaderArray = [[NSMutableArray alloc] initWithArray:[[[actionDic objectForKey:WA_TASKDETAIL_TASKHEADER]
                                                                       objectAtIndex:0] objectForKey:WA_TASKDETAIL_ROW]];
        }
      }
      else if([actionType isEqualToString:WA_TASKDETAIL_TASKATTACHMENT])
      {
        iIsHaveAttachment = YES;
        NSDictionary *attachmentlistDic = [[[iToInitDataDic objectForKey:actionType] objectAtIndex:0]
                                           objectForKey:WA_TASKDETAIL_ATTACHMENTLIST];
        iTaskBillAttachment = [[NSMutableArray alloc] initWithArray:[attachmentlistDic objectForKey:WA_TASKDETAIL_ATTACHMENT]];
        iAttachmentCount = [attachmentlistDic
                            objectForKey:WA_TASKDETAIL_ATTACHMENT_COUNT];
      }
      else if([actionType isEqualToString:WA_TASKDETAIL_GETREMINDERCONTENT])
      {
        NSDictionary *remimderlistDic = [[[iToInitDataDic objectForKey:actionType] objectAtIndex:0]
                                          objectForKey:WA_TASKDETAIL_REMINDE];
        iReminderContent = [remimderlistDic objectForKey:WA_TASKDETAIL_CONTENTREMINDE];
      }
      else if([actionType isEqualToString:WA_TASKDETAIL_GETMAINBODY])
      {
        NSDictionary *mainbodyDic = [[[iToInitDataDic objectForKey:actionType] objectAtIndex:0]
                                        objectForKey:WA_TASKDETAIL_MAINBODY];
    
        if([mainbodyDic objectForKey:WA_TASKDETAIL_MAINBODYID] && ![[mainbodyDic objectForKey:WA_TASKDETAIL_MAINBODYID] isEqualToString:@""])
        {
          self.iMainBodyViewVO = [[CWAMainBodyViewVO alloc] init];
          self.iMainBodyViewVO.iContenttype = [mainbodyDic objectForKey:WA_TASKDETAIL_CONTENTTYPE];
          self.iMainBodyViewVO.iFilesize = [mainbodyDic objectForKey:WA_TASKDETAIL_FILESIZE];
          self.iMainBodyViewVO.iFillename = [mainbodyDic objectForKey:WA_TASKDETAIL_FILLENAME];
          self.iMainBodyViewVO.iMainbodyid = [mainbodyDic objectForKey:WA_TASKDETAIL_MAINBODYID];
        }
  
      }
      actionType = [keys nextObject];
    }
  }
  @catch (NSException *exception)
  {
    
  }
  @finally
  {
    
  }
  
}


@end
