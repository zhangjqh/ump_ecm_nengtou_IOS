
#import "WAHTTPRequestConfigVO.h"

@implementation CWAHTTPRequestConfigVO
@synthesize iEncryptType;
@synthesize iTimeOutTime;
@synthesize isEncrypt;
@synthesize iTimeOut;
@synthesize iTransVersion;
@synthesize iTranType;
@synthesize iUrl;
@synthesize iHttpReqType;
@synthesize isResend;
@synthesize iCompressType;
@synthesize isCompress;
@synthesize iCompressAndEncryptOrder;
@synthesize iASynchronous;
@synthesize iReSendTimes;
@synthesize iReqParamVO;
@synthesize iReqString;

# pragma mark - init

- (id) init
{
  if (self = [super init])
  {
    iEncryptType = (ENCRYPT_TYPE)OTHER;
    iTimeOutTime = 10.0f;
    isEncrypt = NO;
    iTimeOut = YES;
    iTranType = (TRANSLATE_TYPE)JSON;
    iTransVersion = @"1.0";
    iUrl = @"";
    iHttpReqType = (HTTP_TYPE)POST;
    isResend = NO;
    isCompress = NO;
    iCompressType = (COMPRESS_TYPE)OTHER;
    iCompressAndEncryptOrder = (TRANS_ORDER)OTHER_ORDER;
    iASynchronous = YES;
    iReSendTimes = 0;
  }
  return self;
}


@end
