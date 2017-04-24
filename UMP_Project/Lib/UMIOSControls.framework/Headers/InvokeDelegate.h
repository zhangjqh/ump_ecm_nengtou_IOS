//
//  InvokeDelegate.h
//  UMCommon
//
//  Created by zjx on 13-3-19.
//  Copyright (c) 2013年 yonyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol InvokeDelegate <NSObject>
//call native code action
-(NSString*)InvokeActionFromJS:(NSString*)controllername actionName:(NSString*)actionname params:(NSString*)para,...;
-(NSString*)DataBinding:(NSString*)controllername jsonData:(NSString*)data,...;
-(NSString *)getModel:(NSString*)viewname;

// param: {"LastName":"changedValue"}
-(NSString *)updateModel:(NSString*)param;
-(NSString *)modelEventBind:(NSString*)param;
//call js container's action
-(id)callAction: (NSString*)controllername actionName:(NSString*)actionname params:(NSString*)param,... ;
//call remote service , and param sugest json fromat
-(id)callRemoteService: (NSString*)servicename actionName:(NSString*)actionname requestContext:(NSString*)reqContext contextKey:(NSString*)key params:(NSString*)param,...;
/*
 * callControlMethod
 *
 * setControlAttribute
 *
 * add by ding
 */
-(id)callControlMethod:(NSString*)id methodName:(NSString *)methodname params:(NSString *)param, ...;
-(id)setControlAttribute:(NSString *)id attr:(NSString*)attr value:(id)value,...;
/*
 * callNativeService
 *
 * add by ding
 */
-(id)callTellService:(NSString *)tel;
-(id)callSendMsgService:(NSString *)tel msg:(NSString *)msg;
-(id)callIsConnectService;
-(id)callStoreService:(NSString *)key value:(NSString *)value;
-(id)callRestoreService:(NSString *)key;
-(id)callGetDeviceData;
-(id)callGetUserData;
-(id)callGetAppData;
-(id)callGetAppConfigData;
-(id)callGetCurrenLanguage;
-(id)callGetCurrenLocation;
-(id)callGetProperty:(NSString *)object;
-(id)callGetResString:(NSString *)json;
-(id)callResString:(NSString *)json;
-(id)callGetDeviceInfo:(NSString *)bindfield;
-(id)callCtxSetValue:(NSString *)json;
-(id)callCtxGetValue:(NSString *)json;
-(id)callGetTimeZone;
-(NSString *)CallSetInterval:(NSString *)actionName time:(NSString *)time;
-(void)callClearInterval:(NSString *)key;
-(id)CallSetTimeOut:(NSString *)actionName time:(NSString *)time;
-(id)callUMSQliteExist:(NSString *)json;
-(id)callUMSQliteQueryByPage:(NSString *)json;
-(id)callUMSQliteQuery:(NSString *)json;
-(id)callUMSQliteExecSql:(NSString *)json;
-(id)callSetConfirm:(NSString *)json;
-(id)callGetNetWorkInfo;
-(id)callGetTimeZoneDisplayName;
-(id)callSendEmail:(NSString *)mail  body:(NSString *)body;
-(id)callOpenAddressBook;
-(id)callSaveContact:(NSString *)json;
-(id)callUMFileIsExists:(NSString *)json;
-(id)callGetFilesDir;
-(id)callReadConfigure:(NSString *)json;
-(id)callLoadConfigure:(NSString *)json;
-(id)callClearTimeout:(NSString *)json;
-(id)callGetInternalMemoryInfo:(NSString *)json;
-(id)callSetCtx:(NSString *)json;
-(id)callDatabind:(NSString *)json;
-(id)callGetfileInfo:(NSString *)json;
-(id)callGetExternalStorageInfo:(NSString *)json;
-(id)callSetAppValue:(NSString *)json;
-(id)callGetWebSourcePath;
-(id)callCheckTable:(NSString *)json;
-(id)callGetSqliteVersion:(NSString *)json;
-(id)callSetSqliteVersion:(NSString *)json;
-(id)callGetContactPerson;
-(id)callMD5:(NSString *)json;
-(id)currentDate:(NSString *)json;
-(id)urlEncode:(NSString *)json;
-(id)urlDecode:(NSString *)json;
-(id)toast:(NSString *)json;
-(id)getListProperty:(NSString *)json;
-(id)randomUUID;
-(id)getAppAlbumPath;
-(id)getCreateTwocodeImage:(NSString *)json;


/*
 * UM_SysCallAction
 */
-(id)callSysServiceWithType:(NSString *)type params:(NSString *)json,...;
/*
 * UM_callNativeServiceNoraml
 */
-(id)callLocalNativeServiceWithType:(NSString *)type params:(NSString *)json,...;
/*
 * UM_SysNavigate
 */
-(id)callLocalUM_SysNavigate:(NSString *)viewid;
//dump message
-(void)DumpMessage:(NSString*)msg;
-(void)navigateView:(NSString*)viewid;

@end
