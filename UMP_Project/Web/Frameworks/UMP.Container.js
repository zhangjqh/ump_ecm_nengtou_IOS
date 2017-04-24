
//-----------------------------------------------------------------------
// Copyright (C) Yonyou Corporation. All rights reserved.
//-----------------------------------------------------------------------
// UMContainer by gct

CurrentEnvironment={};
CurrentEnvironment.DeviceIOS="ios";
CurrentEnvironment.DeviceAndroid="android";
CurrentEnvironment.DeviceWin8="win8";
CurrentEnvironment.DevicePC="pc";
CurrentEnvironment.DeviceType="android";

$environment = CurrentEnvironment;
//
SysHelper=function(){	
}
Type.registerNamespace('UMP.UI.Container');
UMP.UI.Container.SysHelper=function(){
	this._version = "";
	this._cancelpush = false;//默认false 默认不取消push,控制一次Action是否需要提交
}
function UMP$UI$Container$SysHelper$navigate(viewid){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		UM_SysNavigate(viewid);
	}else{
		if(adrinvoker){
			adrinvoker.call("UMView.open","{viewid:'" + viewid + "'}");
		}else{
			var error = "adrinvoker is undefined; navigate is executing, the parameter viewid is ["+ viewid+"]";
			$console.log(error);
		}
	}
}
//这里的$sys.callAction为JS调用dsl中的定义的Action，即UI端的Action，调用服务器端的Action为$service.callAction(.....)
function UMP$UI$Container$SysHelper$callAction(actionid,ctx){	
	//
	if(ctx){//CallAction之前做一次push同步
		var args = {};
		//because the native container check [document] and [context] forcibly, args must have the tow return object
		//1、args must have document
		if(typeof $document != "undefined"){
			args["document"] = $document.dataToString();
		}else{
			args["document"] = {};
		}
		//2、args must have context	
		try{
			args["context"] = jsonToString(ctx);
			_$sys.push(args);
		}catch(e){
			$console.log(e.stack);
		}
	}
	//

	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		//JS调用IOS Action
		UM_SysCallAction(actionid);
	}else{
		//JS调用android Action
		if(adrinvoker){
			adrinvoker.call("UMJS.callAction","{actionid:'" + actionid + "'}");
		}else{
			var error = "adrinvoker is undefined; callAction is executing, the parameter action is ["+ actionid+"]";
			$console.log(error);
		}
	}	
}
function UMP$UI$Container$SysHelper$cancelPush(val){
	if(typeof val == "undefined"){
		return this._cancelpush;
	}else{
		this._cancelpush = val;
	}
}
function UMP$UI$Container$SysHelper$push(jsonArgs){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		//JS调用IOS Action
		  var str = jsonToString(jsonArgs);
		//JS调用IOS Action
		UM_NativeCall.callService("UMJS.push", str);

	}else{
		//JS调用android Action
		var str = jsonToString(jsonArgs);
		if(adrinvoker){
			adrinvoker.call("UMJS.push", str);
		}else{
			var error = "adrinvoker is undefined; push is executing, the parameter jsonArgs is ["+ str+"]";
			$console.log(error);
		}
	}	
}
function UMP$UI$Container$SysHelper$version(val){
	if(typeof val === "undefined")
		return this._version;
	else
		this._version = val;		
}
function UMP$UI$Container$SysHelper$pull(){
}
UMP.UI.Container.SysHelper.prototype ={
	navigate : UMP$UI$Container$SysHelper$navigate,
	callAction : UMP$UI$Container$SysHelper$callAction,
	cancelPush : UMP$UI$Container$SysHelper$cancelPush,
	push : UMP$UI$Container$SysHelper$push,
	pull : UMP$UI$Container$SysHelper$pull,
	version : UMP$UI$Container$SysHelper$version
}
UMP.UI.Container.SysHelper.registerClass('UMP.UI.Container.SysHelper');
UM_Sys = new UMP.UI.Container.SysHelper();
_$sys = UM_Sys;
$sys = _$sys;





//_______________________________________________________________________________________________ $service = UM_NativeCall
//原生调用公共服务
CommonNativeCallService=function(){
	this.GetDeviceData = "um_getDevicedata";//ios--ok
	this.GetUserData = "um_getUserData";//ios--ok
	this.GetAppData = "um_getAppData";//ios--ok
	this.GetAppConfigData = "um_getAppConfigData";//没有提供???
	this.CallTel="um_CallTel";//ios--ok
	this.SendMsg="um_SendMsg";//ios--ok
	this.IsConnect = "um_IsConnect";//ios--ok
	this.GetCurrentLanguage = "um_GetCurrentLanguage";//ios--ok
	this.GetCurrentLocation = "um_GetCurrentLocation";//ios--ok
    //
    this.Store = "um_Store";//ios--ok
    this.Restore = "um_Restore";//ios--ok
	
	this._APIIsObsolete = "the API is obsolete, but continue executing...please use the new API: ";
}
//最基本平台内部调用服务的API，所有公共服务都通过callService调用执行，对外API为--------------------------$service.call
/*
serviceType:平台提供的服务类型
jsonArgs: json类型
isSync:默认false，是否同步调用
*/
CommonNativeCallService.prototype.callService=function(serviceType, jsonArgs, isSync){
	try{		
		var serviceparams = "";
		if(typeof jsonArgs == "string"){
			var json = stringToJSON(jsonArgs);
			if(typeof json == "string"){
				//转json后仍然为string，则报错，规定：调用服务的参数如果是字符串，必须是能转为json的字符串才行
				$console.log("调用服务[" + serviceType + "]时参数不是一个有效的json字符串。参数是" + jsonArgs);
				return;	
			}
			serviceparams = jsonToString(json);
			if(typeof serviceparams == "object"){
				//转json后仍然为string，则报错，规定：调用服务的参数如果是字符串，必须是能转为json的字符串才行
				$console.log("调用服务[" + serviceType + "]时传递的参数不能标准化为json字符串，请检查参数格式。参数是" + jsonArgs);
				return;	
			}			
		}else if(typeof jsonArgs == "object"){
			serviceparams = jsonToString(jsonArgs);
			if(typeof serviceparams == "object"){
				//转string后仍然为json，则报错，规定：调用服务的参数如果是字符串，必须是能转为json的字符串才行
				$console.log("调用服务[" + serviceType + "]时传递的参数不能标准化为json字符串，请检查参数格式" + jsonArgs);
				return;	
			}
		}else{
			$console.log("调用$service.call("+serviceType+", jsonArgs, "+isSync+")时不合法,参数jsonArgs类型为"+typeof jsonArgs);
			return;
		}
			
		if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
			/*
			//IOS需要严格的JSON格式，故在此统一检查并处理一下
			if(typeof serviceparams == "string"){
				var json = stringToJSON(serviceparams);
				serviceparams = jsonToString(json);			
			}else if(typeof serviceparams == "object"){
				serviceparams = jsonToString(serviceparams);
			}
			*/
			if(isSync){
				return UM_callNativeService(serviceType,serviceparams);//同步调用
			}else{
				return UM_callNativeServiceNoraml(serviceType,serviceparams);//异步调用，多用于CallAction等，服务可支持callBack，通过callback参数
			}
		}else if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceAndroid){
			if(isSync){
				return adrinvoker.call2(serviceType,serviceparams);//call2是同步调用
			}else{
				//默认异步执行
				return adrinvoker.call(serviceType,serviceparams);//call是异步调用 默认异步
			}
		}else{
			$console.log("CurrentEnvironment.DeviceType == " + CurrentEnvironment.DeviceAndroid + ", $service.call Not Implementation!")
		}
	}catch(e){
		var info="";
		if(isSync)	
			info = "调用$service.call(\""+serviceType+"\", jsonArgs, "+isSync+")时发生异常,请检查!";
		else
			info = "调用$service.call(\""+serviceType+"\", jsonArgs)时发生异常,请检查!";
		$console.log(info);
		$console.log(info+", 更多请查看console日志"); 
		$console.log("错误堆栈信息为:" + e.stack);
	}
}

//该方法是通过服务调用MA上一个controller的某一个Action
/*  示例代码 $service.callAction("nc.bs.hr.wa.payslip.HrController","needPwd",{demo:'demo'},false,"myback","returnData");
controllerName：  String类型， MA上的Controller的FullName, 例如"nc.bs.hr.wa.payslip.HrController"
actionName：      String类型， Controller上的Action名称，例如"needPwd"
params：          json类型,    Action所需的参数,例如{demo:"demo"}
isDataCollect：   Boolean类型, 调用Action时候是否需要收集数据，例如true
callbackActionID：String类型， 执行完Action后的回调Action，例如"myCallBack"
contextmapping：  String类型， 执行完Action后，将Action的返回值映射到Context的映射关系，例如"data"或"data.x"
*/          
CommonNativeCallService.prototype.callAction=function(controllerName, actionName, params, isDataCollect, callbackActionID, contextmapping, customArgs){
	var args = {};
	args["viewid"] = controllerName;
	args["action"] = actionName;
	args["params"] = params;
	args["isDataCollect"] = isDataCollect;
	args["callback"] = callbackActionID;
	args["contextmapping"] = contextmapping;
	if(customArgs){//处理自定义参数，用于该服务的参数扩展
		for(key in customArgs){
			args[key] = customArgs[key];
		}
	}
	//$service.call("UMService.callAction","{callback:'myback', contextmapping:'data'，viewid:'"+controllerName+"',isDataCollect:'false',params:{demo:'demo'},action:'needPwd'}");
   	var strArgs = $jsonToString(args);
	return UM_NativeCall.callService("UMService.callAction", strArgs);
}
//本地缓存 调用$cache即可
CommonNativeCallService.prototype.store=function(key, value){
	$cache.write(key, value);
}
CommonNativeCallService.prototype.reStore=function(key){
	$cache.read(key);
}
//设备信息公共服务
CommonNativeCallService.prototype.getDeviceData=function(){
	
    return UM_callNativeService(this.GetDeviceData);
}
CommonNativeCallService.prototype.getUserData=function(){
    return UM_callNativeService(this.GetUserData);
}
CommonNativeCallService.prototype.getAppData=function(){
    return UM_callNativeService(this.GetAppData);
}
CommonNativeCallService.prototype.getAppConfigData=function(){
    return UM_callNativeService(this.GetAppConfigData);
}
//公共服务设备调用
//打电话
CommonNativeCallService.prototype.callTel=function(tel){
	$console.log("the API is obsolete, but continue executing...please use the new API: $tel.call(tel);");  
	$tel.call(tel);
}
//发短信
CommonNativeCallService.prototype.sendMsg=function(tel,msg){	
	$console.log(this._APIIsObsolete + "$tel.sendMsg(tel,msg);");
	$tel.sendMsg(tel,msg);
} 
//网络是否连接
CommonNativeCallService.prototype.isConnect=function(){    
	$console.log(this._APIIsObsolete + "$net.isConnect();");  
	$net.isConnect();
}
//语言环境
CommonNativeCallService.prototype.getCurrentLanguage=function(){
    return UM_callNativeService(this.GetCurrentLanguage);
}

//GPS info
CommonNativeCallService.prototype.getCurrentLocation=function(){
	if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceIOS){
		return UM_callNativeService(this.GetCurrentLocation);
	}else{
		adrinvoker.call2("UMDevice.getLocation", "");
	}
}

//写ip
CommonNativeCallService.prototype.writeConfig=function(key,val){
	//1、准备参数
	var args = {};
	if(typeof val == "string")
		args[key] = val;
	else if(typeof val == "object")
		args[key] = val;
	else{
		$console.log("writeConfig时，不支持第二个参数[val]的参数类型为" + typeof val);
		return;
	}
	
	//2、调用服务
	var strArgs = $jsonToString(args);	
	UM_NativeCall.callService("UMService.writeConfigure", strArgs);
} 
CommonNativeCallService.prototype.loadConfig=function(key, fieldName){
	//1、准备参数
	var args = {};
	if(typeof val == "string")
		args[key] = fieldName;	
	else{
		$console.log("loadConfig时，不支持第二个参数[fieldName]的参数类型为" + typeof fieldName);
		return;
	}
	
	//2、调用服务
	var strArgs = $jsonToString(args);
	return UM_NativeCall.callService("UMService.loadConfigure", strArgs, true);
} 
CommonNativeCallService.prototype.readConfig=function(name){
	//1、准备参数
	var args = {};
	if(typeof name == "string")
		args[name] = name;	
	else{
		$console.log("readConfig时，不支持参数[name]的参数类型为" + typeof name);
		return;
	}
	
	//2、调用服务
	var strArgs = $jsonToString(args);
	return UM_NativeCall.callService("UMService.readConfigure", strArgs, true);
} 
CommonNativeCallService.prototype.login=function(username,passwd){
	return UM_NativeCall.callService("UMService.login", "{\"username\":\"" +username + "\",\"passwd\":\"" +passwd + "\"}");
}

CommonNativeCallService.prototype.transInfoService = function(infoid, binderfiled, transtype){
	/*	参数：
	infoid : 请求的ID
	binderfiled : 用于绑定webview的字段名
	transtype ：一个枚举值，目前分为word|other
	*/
	var args = {};
	args["infoid"] = infoid;
	args["binderfiled"] = binderfiled;
	
	if(transtype != null)//可选参数	
		args["transtype"] = transtype;
		
	return $service.call("UMService.transInfoService", $jsonToString(args));
}
 
UM_NativeCall = new CommonNativeCallService();
$service = UM_NativeCall;
$service.call = UM_NativeCall.callService;//===CommonNativeCallService.prototype.callService=function(serviceType, serviceparams, isSync){
//-----------------------------------------------------------------------




//______________________________________________________________________________________________________ UM_Controls 谨慎使用
ControlsHelper=function(){
}
ControlsHelper.prototype.get=function(cid){
	this._cid = cid;
    return this;
}
ControlsHelper.prototype.set=function(attrid,value){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		UM_setControlAttribute(this._cid,attrid,value);
	}else{
		adrinvoker.call("UMJS.setProperty","{id:'" + this._cid + "',"+attrid+":'" + value + "'}");
	}
}
ControlsHelper.prototype.call=function(methodname,param){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		UM_callControlMethod(this._cid,methodname,param);
	}else{
		$console.log("No Implementation");
	}
}
UM_Controls=new ControlsHelper();

//______________________________________________________________________________________________________ $controls
//UI控件相关服务 只是get和set
Type.registerNamespace('UMP.Services');
UMP.Services.Controls = function UMP$Services$Controls(){
	
}
function UMP$Services$Controls$get(cid,propertyName){	
	var args = {};
	args["id"] = cid;
	args["propertyName"] = propertyName;
	
	var strArgs = $jsonToString(args);
	return $service.callService("UMJS.getProperty", strArgs, true);//同步get
}
function UMP$Services$Controls$set(cid, propertyName, propertyValue){
	var args = {};
	args["id"] = cid;
	args[propertyName] = propertyValue;
	
	var strArgs = $jsonToString(args);
	return $service.callService("UMJS.setProperty", strArgs, false);//异步set
}
UMP.Services.Controls.prototype = {
	get: UMP$Services$Controls$get,
	set: UMP$Services$Controls$set
};
UMP.Services.Controls.registerClass('UMP.Services.Controls');
var $controls = new UMP.Services.Controls();

//__________________________________________________________________________________________ UMP.UI.Container.Dom
Type.registerNamespace('UMP.UI.Container');
UMP.UI.Container.Dom = function UMP$UI$Container$Dom(){		
}
function UMP$UI$Container$Dom$set(cid, status, tag, jsonAttrs){

	var testdata = {
		"button1" : {
			"status" : "add",
			"tag" : "intput",
			"attributes" : {"id" : "button1", "type" : "button", "text":"abc"}        
         },
		"div1" : {
			"status" : "mod",
			"tag" : "div",
            "attributes" : {"id" : "div1", "background":"#e3e3e3", "visible":"true"}
        }
	};
	
	if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceIOS){
		UM_setControlAttribute(cid, attrName, attrValue);
	}else{
		var data = {
			"status": status,
			"tag" : tag,
			"attributes": jsonAttrs
		};
		var cData = {
			"id" : data
		};
		var strCData = $jsonToString(cData);
		adrinvoker.call("UMJS.setProperty", strCData);
	}
}
function UMP$UI$Container$Dom$push(doc){
    for(id in doc._tree){
		this.set(id, doc[id]);
	}
}
function UMP$UI$Container$Dom$pull(){
}
UMP.UI.Container.Dom.prototype = {
	set: UMP$UI$Container$Dom$set,
	push: UMP$UI$Container$Dom$push,
	pull: UMP$UI$Container$Dom$pull
};
UMP.UI.Container.Dom.registerClass('UMP.UI.Container.Dom');
var $dom = new UMP.UI.Container.Dom();

//———————————————————————————————————————————————————————————————————————— 废弃的类，以后会删除
ContextHelper=function(){
}
ContextHelper.prototype.init=function(ctx){
	this._ctx = ctx;
    return this;
}
ContextHelper.prototype.setValue=function(propname,value,ctx){
	this._ctx = ctx;
	eval("this._ctx."+propname+"=\""+value+"\"");
	/*if(eval("this._ctx."+propname)==null){$console.log("error!  no property: "+propname);}else{
        eval("this._ctx."+propname+"=\""+value+"\"");
    }*/
}
ContextHelper.prototype.getValue=function(propname,ctx){
	this._ctx = ctx;
    if(eval("this._ctx."+propname)==null){$console.log("error!  no property: "+propname);}else{
        return eval("this._ctx."+propname);
    }
}
UM_Context=new ContextHelper();








//
callbackMap = new Map();
//
MessagePool=function(){
    this.Message=new Array();
    this.ErrorMessage=new Array();
    this.MessageLevel={};
    this.MessageLevel.All=-1;
    this.MessageLevel.Warnning=1;
    this.MessageLevel.Error=2;
}
MessagePool.prototype.log=function(level, msg){
    if(level==this.MessageLevel.Error){
        this.ErrorMessage.push(msg);
    }else{
        this.Message.push(msg);
    }
}
MessagePool.prototype.getErrorMessage=function(){
    var result="[";
    for(var i=0;i<this.ErrorMessage.length;i++){
        if(i==this.ErrorMessage.length-1){
            result+="\""+this.ErrorMessage.shift()+"\""
        }else{
            result+="\""+this.ErrorMessage.shift()+"\",";
        }
    }
    result+="]";
    return result;
}
MessagePool.prototype.getWarnningMessage=function(){
    var result="[";
    for(var i=0;i<this.Message.length;i++){
        if(i==this.Message.length-1){
            result+=this.Message.shift()
        }else{
            result+=this.Message.shift()+",";
        }
    }
    result+="]";
    return result;
}
MessagePool.prototype.getMessage=function(level){
    var msg;
    if(level==this.MessageLevel.Error){
        msg=this.getErrorMessage();
    }else if(level==this.MessageLevel.All){
        var err=this.getErrorMessage();
        var war= this.getWarnningMessage();
        msg="{\"error\":"+err+",\"warnning\":"+war+"}";
    }
    else{
        msg= this.getWarnningMessage();
    }
    
    return msg;
}
//system message pool
messagePool=new MessagePool();
//
RequestContext=function(){
    this.Source=""; //viewid windowid ...
    this.Key="";
};
CommonCRUD=function(){};
CommonCRUD.prototype.loadModel=function(modelname, jsondata){
    $UMP$getMM().set(modelname,jsondata);
}

//dispacherCallbackHandler  for any plat
CommonCRUD.prototype.dispacherCallbackHandler=function(jsondata,key){$console.log(jsondata);
    //var d=stringToJSON(jsondata);
    callbackMap.get(key).call(this,jsondata);
}
CommonCRUD.prototype.callService=function(serviceName, actionName, params,context,handler){
    
    context.Key = serviceName + actionName+context.Source;
    callbackMap.put(context.Key,handler);
    //call remote service any plat 
    UM_CallRemoteService(serviceName,actionName,params,context.Source,context.Key);
}
commonService=new CommonCRUD();
Controllers={};

function getController(controllername){
    /*var c=Controllers.controllername;
    if(!c){
        c=Controllers.controllername=eval("(new "+controllername+"())");
    }*/
    return eval("(new "+controllername+"())");
}

function setControlValue(cid,attrid,value){
	return UM_setControlAttribute(cid,attrid,value);
}

function getModel(modelname){
    return jsonToString($UMP$getMM().get(modelname));
}

function updateModel(modelname,param){
    $UMP$getMM().get(modelname).set(stringToJSON(param));
}
//register model event
function bindEvent(eventname,filedname,modelname){
    //need modify
    modelname="CustomerSubmit";
    $UMP$getMM().get(modelname).bind(eventname,filedname, function(a,value,params){
    //controller:current controller? and to which webview?
    //{"data":{"pLastName":"changed"},"source":{"change":"pLastName"}}
    var eventobject={};
    eventobject.data=a.changed;
    eval("eventobject.source={\""+eventname+"\":\""+modelname+"."+filedname+"\"}");
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
                  UM_CallAction("","dispacherEventToWeView",jsonToString(eventobject));
     }else{
                  dispacherEventAndroid(jsonToString(eventobject));
    }
                                     
                                     
    });
}


////////// dispacherEvent from js container to native android or webview
function dispacherEventAndroid(parameters){
    
}




//___________________________________________________________________________________________________ UMP.Services.Network
//网络相关服务
/*
*/ 
Type.registerNamespace('UMP.Services');
UMP.Services.Network = function UMP$Services$Network(){	
	this.um_IsConnect = "um_IsConnect";//ios--ok	
	this.UMNetwork_isAvailable = "UMNetwork.isAvailable";//andriod--ok
	
	
	this.UMNetwork_networkState = "UMNetwork.networkState";//andriod--ok
	
	this.UMNetwork_getNetworkInfo  = "UMNetwork.getNetworkInfo";//no implement
	
}

function UMP$Services$Network$isConnect(){
	if($environment.DeviceType == $environment.DeviceIOS){		
		return $service.call(this.um_IsConnect, {}, true);		
	}else if($environment.DeviceType == $environment.DeviceAndroid){		
		return $service.call(this.UMNetwork_isAvailable, {}, true);
	}
}	
function UMP$Services$Network$available(){
	return this.isConnect();
}
function UMP$Services$Network$networkState(){
	if($environment.DeviceType == $environment.DeviceIOS){
		$console.log("该服务[networkState]苹果未实现，请联系苹果开发人员");
		return {};	
	}else if($environment.DeviceType == $environment.DeviceAndroid){		
		return $service.call(this.UMNetwork_networkState, {}, true);
	}
}
function UMP$Services$Network$getNetworkInfo(){
	/*if($environment.DeviceType == $environment.DeviceIOS){
		$console.log("该服务[getNetworkInfo]苹果未实现，请联系苹果开发人员");
		return {};
	}else if($environment.DeviceType == $environment.DeviceAndroid){		
		return $service.call(this.UMNetwork_getNetworkInfo, {}, true);
	}
	*/
	var result = $service.call(this.UMNetwork_getNetworkInfo, {}, true);//同步
	if(typeof result == "String"){
		return $stringToJSON(result);
	}else{
		return result;
	}
}
UMP.Services.Network.prototype = {
	isConnect: UMP$Services$Network$isConnect,
	available: UMP$Services$Network$available,
	networkState: UMP$Services$Network$networkState,
	getNetworkInfo: UMP$Services$Network$getNetworkInfo
};
UMP.Services.Network.registerClass('UMP.Services.Network');
var $net = new UMP.Services.Network();



//___________________________________________________________________________________________________ $tel --> UMP.Services.Telephone
//电话相关服务
/*
*/ 
Type.registerNamespace('UMP.Services');
UMP.Services.Telephone = function UMP$Services$Telephone(){
    this._SAVECONTACT="um_saveContact";//?????
	this._CALLTEL="um_CallTel";//ios--ok	
	this._SENDMSG = "um_SendMsg";//ios--ok
	this._SENDEMAIL = "um_SendEmail";//ios--ok
}
function UMP$Services$Telephone$saveContact(tel, employeename, jobname, orgname, adress){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._SAVECONTACT, tel, employeename, jobname, orgname, adress);
	}else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		var args = {};
		args["tel"] = tel;
		args["employeename"] = employeename;
		args["jobname"] = jobname;
		args["orgname"] = orgname;
		args["adress"] = adress;
		$service.call("UMDevice.saveContact", $jsonToString(args));
	}else{
		$console.log("Not implementate UMP$Services$Telephone$saveContact in CurrentEnvironment.DeviceType == " + CurrentEnvironment.DeviceType);
	}
}
function UMP$Services$Telephone$call(tel){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._CALLTEL, tel);
		//UM_callNativeServiceNoraml
	}else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMDevice.callPhone", "{tel:'"+tel+"'}");
	}else{
		$console.log("Not implementate UMP$Services$Telephone$call in CurrentEnvironment.DeviceType == " + CurrentEnvironment.DeviceType);
	}
}
function UMP$Services$Telephone$sendMsg(tel, msg){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._SENDMSG,tel,msg);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		//$service.call("UMDevice.sendMessage", "{recevie:'"+tel+"',message:'"+msg+"'}");
		$service.call("UMDevice.sendMsg", "{tel:'"+tel+"',body:'"+msg+"'}");
    }
}
function UMP$Services$Telephone$sendMail(mail, body){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._SENDEMAIL,mail,body);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMDevice.sendMail", "{mail:'"+mail+"',body:'"+body+"'}");
    }
}
UMP.Services.Telephone.prototype = {
	saveContact: UMP$Services$Telephone$saveContact,
	call: UMP$Services$Telephone$call,
	sendMsg: UMP$Services$Telephone$sendMsg,
	sendMail: UMP$Services$Telephone$sendMail
};
UMP.Services.Telephone.registerClass('UMP.Services.Telephone');
var $tel = new UMP.Services.Telephone();


//___________________________________________________________________________________________________ UMP.Services.Sqlite
//Sqlite相关服务
/*
*/ 
Type.registerNamespace('UMP.Services');
UMP.Services.Sqlite = function UMP$Services$Sqlite(){
	this._OPENDB = "um_OpenDB";//
	this._DELETEDB = "um_DeleteDB";//
	this._EXECSQL = "um_ExecSql";//
	
	this._QUERYALL = "um_QueryAll";//
	this._QUERY = "um_Query";//
	this._QUERYBYPAGENO = "um_QueryByPageNo";//
	this._QUERYRECORDCOUNT = "um_QueryRecordCount";//
	this._QUERYPAGECOUNT = "um_QueryPageCount";//
	
	this._RECORDSTOCTX = "um_RecordsToCtx";//
	this._CTXTOSQLITE = "um_CtxToSqlite";//
	
	this._DOWNLOADDB = "um_DownloadDB";//
	this._UPLOADDB = "um_UploadDB";//
	
}
function UMP$Services$Sqlite$openDB(dbName){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._OPENDB, dbName);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.openDB", "{dbfile:'"+dbName+"'}");
    }
}
function UMP$Services$Sqlite$delDB(dbName){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._DELETEDB, dbName);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.deleteDB", "{dbfile:'"+dbName+"'}");
    }
}
function UMP$Services$Sqlite$execSql(dbName,sql){
	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._EXECSQL,dbName,sql);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.execSql", "{dbfile:'"+dbName+"',sql:'"+sql+"'}");
    }
}

//查询并返回所有记录
//参数dbName：必选 数据库名字  
//参数sql：必选   查询sql语句  
function UMP$Services$Sqlite$queryAll(dbName,sql){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._QUERYALL,dbName,sql);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.queryAll", "{dbfile:'"+dbName+"',sql:'"+sql+"'}");
    }
}

//查询记录并分页返回
//参数dbName：必选 数据库名字  
//参数sql：必选   查询sql语句  
//参数pagesize：  可选  每页记录数 默认10
//参数start： 可选  起始记录数索引 默认0
function UMP$Services$Sqlite$query(dbName,sql,pageSize,start){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._QUERYALL,dbName,sql,pageSize,start);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {	    
   		$service.call("UMSQLite.query", "{dbfile:'"+dbName+"',sql:'"+sql+"',pageSize:'"+pageSize+"',start:'"+start+"'}");
    }
}

//查询返回指定页面的数据
//参数dbName：必选 数据库名字  
//参数sql：必选   查询sql语句  
//参数pagesize：  可选  每页记录数 默认10
//参数start： 可选  起始记录数索引 默认0
//参数pageNo： 可选  指定页码 默认0
function UMP$Services$Sqlite$queryByPageNo(dbName,sql, pageSize, start, pageNo){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._QUERYBYPAGENO,dbName,sql, pageSize, start, pageNo);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {	    
   		$service.call("UMSQLite.queryByPageNo", "{dbfile:'"+dbName+"',sql:'"+sql+"',pageSize:'"+pageSize+"',start:'"+start+"',pageNo:'"+pageNo+"'}");
    }
}

//返回查询结果记录数
function UMP$Services$Sqlite$queryRecordCount(dbName, sql){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._QUERYRECORDCOUNT,dbName,sql);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {	    
   		$service.call("UMSQLite.queryRecordCount", "{dbfile:'"+dbName+"',sql:'"+sql+"'}");
    }
}

//返回查询结果分页页数
function UMP$Services$Sqlite$queryPageCount(dbName, sql, pageSize){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._QUERYPAGECOUNT,dbName,sql,pageSize);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {	    
   		$service.call("UMSQLite.queryPageCount", "{dbfile:'"+dbName+"',sql:'"+sql+"',pageSize:'"+pageSize+"'}");
    }
}

//查询结果（JSON）记录数转成Context对象
function UMP$Services$Sqlite$recordsToCtx(dbName, sql, ctxName){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._RECORDSTOCTX,dbName,sql,ctxName);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.recordsToCtx", "{dbfile:'"+dbName+"',sql:'"+sql+"',ctxName:'"+ctxName+"'}");
    }
}

//Context对象转成sqlite数据库表数据
function UMP$Services$Sqlite$ctxToSqlite(dbName, tableName, ctx){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
	    var strCtx = $jsonToString(ctx);
    	UM_callNativeService(this._CTXTOSQLITE,tableName,strCtx);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {	    
	    var strCtx = $jsonToString(ctx);
   		$service.call("UMSQLite.recordsToCtx", "{dbfile:'"+dbName+"',tableName:'"+tableName+"',ctx:'"+strCtx+"'}");
    }
}

//下载db文件
function UMP$Services$Sqlite$downloadDB(fileName){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._DOWNLOADDB,fileName);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.downloadDB", "{fileName:'"+fileName+"'}");
    }
}
//上传db文件
function UMP$Services$Sqlite$uploadDB(dbName, fileName, isOnlyModified){
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	UM_callNativeService(this._UPLOADDB, fileName, isOnlyModified);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		$service.call("UMSQLite.uploadDB", "{dbfile:'"+dbName+"',fileName:'"+fileName+"',isOnlyModified:'"+isOnlyModified+"'}");
    }
}

UMP.Services.Sqlite.prototype = {
	openDB:UMP$Services$Sqlite$openDB,
	delDB:UMP$Services$Sqlite$delDB,
	execSql:UMP$Services$Sqlite$execSql,
	
	queryAll:UMP$Services$Sqlite$queryAll,
	query:UMP$Services$Sqlite$query,	//查询（默认分页）
	queryByPageNo:UMP$Services$Sqlite$queryByPageNo,//查询指定页的数据
	queryRecordCount:UMP$Services$Sqlite$queryRecordCount,//查询指定sql数据的总记录数
	queryPageCount:UMP$Services$Sqlite$queryPageCount,//查询指定sql数据的总页数

	recordsToCtx:UMP$Services$Sqlite$recordsToCtx,//sqlite指定表数据转成Context
	ctxToSqlite:UMP$Services$Sqlite$ctxToSqlite,//Context数据自动转成指定的数据库表数据
	
	downloadDB:UMP$Services$Sqlite$downloadDB,//下载指定数据库的文件
	uploadDB:UMP$Services$Sqlite$uploadDB//上传指定数据库数据到指定的文件名
};
UMP.Services.Sqlite.registerClass('UMP.Services.Sqlite');
var $sqlite = new UMP.Services.Sqlite();


//___________________________________________________________________________________________________ UMP.Services.Calendar
/*
UMCalendar.getToToday       日历跳转到今天，并加载数据（没有参数）
           getMonthChange   日历翻页时获取，月数据的服务  （参数同callaction）
           getDayChange     日历点击具体日，时获取数据的服务 （参数同callaction）
           getCalendarTitle  获取日历当前的年-月 用于界面title显示（没有参数）

*/ 
Type.registerNamespace('UMP.Services');
UMP.Services.Calendar = function UMP$Services$Calendar(){
	this._getToToday="UMCalendar.getToToday";
	this._getMonthChange="UMCalendar.getMonthChange";
	this._getDayChange="UMCalendar.getDayChange";
	this._getCalendarTitle="UMCalendar.getCalendarTitle";
}
function UMP$Services$Calendar$getToToday(calendarID){
	var args={};
	args["id"] = calendarID;	
	var strArgs = $jsonToString(args);
	return $service.call(this._getToToday, strArgs); 
}
function UMP$Services$Calendar$getMonthChange(controllerName, actionName, params, isDataCollect, callbackActionID, contextmapping, customArgs){
	var args = {};
	args["viewid"] = controllerName;
	args["action"] = actionName;
	args["params"] = params;
	args["isDataCollect"] = isDataCollect;
	args["callback"] = callbackActionID;
	args["contextmapping"] = contextmapping;
	if(customArgs){//处理自定义参数，用于该服务的参数扩展
		for(key in customArgs){
			args[key] = customArgs[key];
		}
	}
	
   	var strArgs = $jsonToString(args);
	return $service.call(this._getMonthChange, strArgs);   
}
function UMP$Services$Calendar$getDayChange(controllerName, actionName, params, isDataCollect, callbackActionID, contextmapping, customArgs){
	var args = {};
	args["viewid"] = controllerName;
	args["action"] = actionName;
	args["params"] = params;
	args["isDataCollect"] = isDataCollect;
	args["callback"] = callbackActionID;
	args["contextmapping"] = contextmapping;
	if(customArgs){//处理自定义参数，用于该服务的参数扩展
		for(key in customArgs){
			args[key] = customArgs[key];
		}
	}
	
   	var strArgs = $jsonToString(args);
	return $service.call(this._getDayChange, strArgs);   
}
function UMP$Services$Calendar$getCalendarTitle(calendarID){
	var args={};
	args["id"] = calendarID;	
	var strArgs = $jsonToString(args);
	return $service.call(this._getCalendarTitle, strArgs); 
}
UMP.Services.Calendar.prototype = {
	getToToday : UMP$Services$Calendar$getToToday,
	getMonthChange : UMP$Services$Calendar$getMonthChange,
	getDayChange : UMP$Services$Calendar$getDayChange,
	getCalendarTitle : UMP$Services$Calendar$getCalendarTitle
};
UMP.Services.Calendar.registerClass('UMP.Services.Calendar');
var $calendar = new UMP.Services.Calendar();





//___________________________________________________________________________________________________ UMP.Services.File
UMP.Services.File = function UMP$Services$File(){
	this._downloadFile="UMService.downloadFile";	
}
function UMP$Services$File$downloadFile(fileid, downloadpath, filename, filetype, filesize, downflag, startposition, endposition){
	var args = {};
	args["fileid"]=fileid;//args.put("fileid","0001A11000000000ZEYD"); 文件ID
	args["downloadpath"]=downloadpath;//args.put("downloadpath","0001A11000000000ZEYD"); 文件下载路径
	args["filename"]=filename;//args.put("filename","abc"); 文件名称
	args["filetype"]=filetype;//args.put("filetype","doc"); 文件类型	
	args["filesize"]=filesize;//args.put("filesize"] = args.put("filesize","300"); 文件大小
	args["downflag"]=downflag;//args.put("downflag","false"); 是否断点续传
	args["startposition"]=startposition;//args.put("startposition","false"); 断点续传时开始位置
	args["endposition"]=endposition;//args.put("endposition","false"); 断点续传时结束位置
	
	
   	var strArgs = $jsonToString(args);
	return $service.call(this._downloadFile, strArgs);   
}
UMP.Services.File.prototype = {
	downloadFile : UMP$Services$File$downloadFile
};
UMP.Services.File.registerClass('UMP.Services.File');
var $file = new UMP.Services.File();

﻿
//______________________________________________________________________________________________________ Context or $ctx
Type.registerNamespace('UMP.UI.Container');
UMP.UI.Container.Context=function(){
	this._UMCtx_setUMContext = "UMCtx.setUMContext";
	this._UMCtx_dataBind = "UMCtx.dataBind";
	
	this._UMCtx_getValue = "UMCtx.getValue";
	this._UMCtx_setValue = "UMCtx.setValue";
	
	this._UMCtx_setAppValue = "UMCtx.setAppValue";
}
function UMP$UI$Container$Context$push(ctx){
	this.setContext(ctx);
}
function UMP$UI$Container$Context$dataBind(){
	$service.call(this._UMCtx_dataBind, {}, false);	//异步执行  dataBind无需参数		
}
function UMP$UI$Container$Context$setContext(ctx, isDataBinding){
	var json = {};
	if(ctx.__baseClass == "UMP.UI.Mvc.Context"){
		try{
			json = ctx.unload();
		}catch(e){
			var info = "尝试setContext，但是参数ctx不是一个有效的Context类型";
			$console.log(info);
			$console.log(info+",更多请查看console日志") 
		}
	}else if(typeof ctx == "object"){
		json = ctx;
	
	}else if(typeof ctx == "string"){
		json = ctx;
	}
	
	var str = $jsonToString(json);
	var args = {};
	args["context"] = str;
	args["isDataBinding"] = false;
	$service.call(this._UMCtx_setUMContext, args, true);	//同步执行
			
	if(typeof isDataBinding == "undefined" || isDataBinding == true){
		$service.call(this._UMCtx_dataBind, {}, false);	//异步执行  dataBind无需参数		
	}
}
function UMP$UI$Container$Context$getValue(expr, defaultvalue, isSync){
	if(typeof isSync == "undefined"){
		isSync = true;//默认获取是同步调用
	}	
	var args = {};
	args["expr"] = expr;
	args["default"] = defaultvalue;
	var strArgs = $jsonToString(args);	
	return $service.call(this._UMCtx_getValue, strArgs, isSync);	//同步执行
}
//<action method="UMCtx.setValue" status="0" name="www" />
function UMP$UI$Container$Context$setValue(fieldName, value, isSync){
	//【注意】
	//仅仅支持给Context字段赋值
	//不支持给param和app等赋值，这些只能get不能set
	
	if(typeof isSync == "undefined")
		isSync = true;//默认给Context赋值是同步
		
	var args = {};
	args["expr"] = fieldName;//赋值时，不用加表达式
	args["value"] = $jsonToString(value);
	return $service.call(this._UMCtx_setValue, args, isSync);	//异步执行	
}
function UMP$UI$Container$Context$set(fieldName, value, isSync){
	this.setValue(fieldName, value, isSync);
}
function UMP$UI$Container$Context$put(fieldName, value, isSync){
	this.setValue(fieldName, value, isSync);
}
function UMP$UI$Container$Context$get(fieldName, defaultvalue, isSync){	
	//此方法仅仅支持获取Context字段的值
	var expr = "#{"+fieldName+"}";//字段表达式
	return this.getValue(expr, defaultvalue, isSync);	//同步执行	
}
function UMP$UI$Container$Context$getJSONArray(fieldName){	
	//此方法仅仅支持获取Context字段的值
	var expr = "#{"+fieldName+"}";//字段表达式
	return this.getValue(expr, defaultvalue, isSync);	//同步执行	
}




function UMP$UI$Container$Context$param(paramName, defaultvalue, isSync){	
	var expr = "#{plug."+paramName+"}";
	return this.getValue(expr, defaultvalue, isSync);	//同步执行	
}
function UMP$UI$Container$Context$getApp(key, defaultvalue, isSync){
	/* key的取值如下：
	"user"
	"userid"
	"password"
	"token"
	"funcid"
	"tabid"
	"applicationid"
	"wfaddress"
	"deivceid"
	"groupid"
	"sessionid"
	"token"	
	*/
	var expr = "#{app."+key+"}";
	return this.getValue(expr, defaultvalue, isSync);	//同步执行	
}
function UMP$UI$Container$Context$setApp(json, isSync){
	/*
	var json={
		a:"x",
		b:"#{plug.x}",
		c:"#{name}",
		d:"#{cursor.x}"
	}
	*/
	if(typeof isSync == "undefined"){
		isSync = true;	//默认同步执行
	}
	var args = json;
	var strArgs = $jsonToString(args);	
	return $service.call(this._UMCtx_setAppValue, strArgs, isSync);
}

UMP.UI.Container.Context.prototype ={
	push : UMP$UI$Container$Context$push,
	setContext: UMP$UI$Container$Context$setContext,
	dataBind: UMP$UI$Container$Context$dataBind,
	
	get : UMP$UI$Container$Context$get,//简写形式
	set : UMP$UI$Container$Context$set,//简写形式
	put : UMP$UI$Container$Context$put,//简写形式
	
	getJSONArray : UMP$UI$Container$Context$getJSONArray,//简写形式
	
	
	//私有方法
	getValue : UMP$UI$Container$Context$getValue,
	setValue : UMP$UI$Container$Context$setValue,
	
	param : UMP$UI$Container$Context$param,//只有get 没有set
	
	getApp:UMP$UI$Container$Context$getApp,
	setApp:UMP$UI$Container$Context$setApp
}
UMP.UI.Container.Context.registerClass('UMP.UI.Container.Context');
var $ctx = new UMP.UI.Container.Context();
UM_Context = $ctx;
//______________________________________________________________________________________________________ $ctx End

//___________________________________________________________________________________________________ $cache UMP.Services.Cache
Type.registerNamespace('UMP.Services');
//写缓存文件
/*
UMFile.write(UMEventArgs args) 参数：append 覆盖还是追加 charset字符字符集  content是内容 path文件名

UMFile.read(UMEventArgs args)  参数：charset字符字符集  maxlength读取最大长度 path文件名
读取出的内容会放在ctx中，key值为content

UMService.callAction  发送请求
*/ 
UMP.Services.Cache = function UMP$Services$Cache(){	
	this._store = "um_Store";//ok
    this._restore = "um_Restore";//ok	
}
var ___cache_UIState = {};
function UMP$Services$Cache$get(charset){
	if($environment.DeviceType == $environment.DeviceIOS){
		return $service.reStore();
	}else if($environment.DeviceType == $environment.DeviceAndroid){
		var args ={};
		if(charset)
			args["charset"] = charset;
			
		var str = $jsonToString(args);
		var strContent = UM_NativeCall.callService("UMFile.read", str, true);
		//$console.log("get =="+strContent);
		return strContent;
	}
}
function UMP$Services$Cache$set(content, append, charset, isSync){
	if($environment.DeviceType == $environment.DeviceIOS){
		$console.log("Cache API [push] no implementation...pls consult the IOS developer of UMP");
	}else if($environment.DeviceType == $environment.DeviceAndroid){
		var args ={};
		if(content)
			args["content"] = content;
		if(append)
			args["append"] = append;
		if(charset)
			args["charset"] = charset;	
		
		var str = $jsonToString(args);
		if(typeof isSync == "undefined")
			return UM_NativeCall.callService("UMFile.write", str, true);//默认都是同步调用，避免write后read不到最新的结果
		else
			return UM_NativeCall.callService("UMFile.write", str, isSync);
		//___cache_UIState["content"] = content;
	}
}
function UMP$Services$Cache$write2(key, value, append, charset, isSync){
	if($environment.DeviceType == $environment.DeviceIOS){
		var str = value;
		if(typeof value != "string"){
			str = $jsonToString(value);
		}		
		UM_callNativeService(this._store, key, str);		
	}else if($environment.DeviceType == $environment.DeviceAndroid){
	    var args={};
		var oldObj = $cache.get();
		if(!oldObj)
			oldObj = {};
		oldObj[key] = value;
		args["content"] = oldObj;
		
		
		if(append)
			args["append"] = append;
		if(charset)
			args["charset"] = charset;	
		
		var str = $jsonToString(args);	
		
		//___cache_UIState["content"] = content;
		//$console.log("write之前的=="+str);
		if(typeof isSync == "undefined")
			return UM_NativeCall.callService("UMFile.write", str, true);//默认都是同步调用，避免write后read不到最新的结果
		else
			return UM_NativeCall.callService("UMFile.write", str, isSync);
	}
}
function UMP$Services$Cache$read2(key, maxlength, charset){
	var strContent = "";
	if($environment.DeviceType == $environment.DeviceIOS){		
        strContent = UM_callNativeService(this._restore, key);
	}else if($environment.DeviceType == $environment.DeviceAndroid){
	   var content = {};
	   
		var args ={};
		if(maxlength)
			args["maxlength"] = maxlength;
		if(charset)
			args["charset"] = charset;	
		
		var str = $jsonToString(args);	
		strContent = UM_NativeCall.callService("UMFile.read", str, true);		
	}
	//$console.log("read出来的字符串是"+strContent);
	//苹果安卓统一返回处理结果
	if(strContent && strContent != ""){
		try{
			var obj = $stringToJSON(strContent);
			return obj[key];
		}catch(e){
			return null;
		}
	}else{
		return null;
	}
}

function UMP$Services$Cache$writeFile(filePath, content, append, charset, isSync){	
	if($environment.DeviceType == $environment.DeviceIOS){
		var str = content;
		if(typeof content != "string"){
			str = $jsonToString(content);
		}
		return UM_callNativeService(this._store, filePath, str);	
	}else if($environment.DeviceType == $environment.DeviceAndroid){
		var args ={};
		
		if(filePath)
			args["path"] = filePath;
		if(content)
			args["content"] = content;	
		if(append)
			args["append"] = append;
		if(charset)
			args["charset"] = charset;
		
		
		var str = $jsonToString(args);
		
		if(typeof isSync == "undefined")
			return UM_NativeCall.callService("UMFile.write", str, true);//默认都是同步调用，避免write后read不到最新的结果
		else
			return UM_NativeCall.callService("UMFile.write", str, isSync);
		//___cache_UIState[path] = content;
	}
}
function UMP$Services$Cache$readFile(filePath, maxlength, charset){
	var strContent = "";
	if($environment.DeviceType == $environment.DeviceIOS){
		strContent = UM_callNativeService(this._restore, filePath);	
	}else if($environment.DeviceType == $environment.DeviceAndroid){  
		var args ={};
		if(filePath)
			args["path"] = filePath;
		if(maxlength)
			args["maxlength"] = maxlength;
		if(charset)
			args["charset"] = charset;
			
		var str = $jsonToString(args);
		strContent = UM_NativeCall.callService("UMFile.read", str, true);		
	}
	
	//苹果安卓统一返回处理结果
	if(strContent && strContent != ""){
		try{
			/*  取出缓存的值不再强行转化为json，按照绝大多数平台通常的处理方式，缓存取出来后必要时需自行类型转化
			obj = $stringToJSON(strContent);
			return obj;
			*/
			return strContent;
		}catch(e){
			return strContent;
		}
	}else{
		return null;
	}
}
UMP.Services.Cache.prototype = {
	get: UMP$Services$Cache$get,
	set: UMP$Services$Cache$set,
	push: UMP$Services$Cache$set,
	write2: UMP$Services$Cache$write2,
	read2: UMP$Services$Cache$read2,
	
	write: UMP$Services$Cache$writeFile,
	read: UMP$Services$Cache$readFile,
	writeFile: UMP$Services$Cache$writeFile,
	readFile: UMP$Services$Cache$readFile
};
UMP.Services.Cache.registerClass('UMP.Services.Cache');
$cache = new UMP.Services.Cache();
$store = $cache;


//___________________________________________________________________________________________________$Console UMP.Services.Console

if(typeof __debugger == "undefined"){
	__debugger = false;
}
UMP.Services.Console = function UMP$Services$Console(){	
}
function UMP$Services$Console$log(info){
	if(__debugger){
		if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		
		}else{
			if(console){
				console.log("__________"+info);//console是原生JS中定义的对象
			}
		}
	}
}
function UMP$Services$Console$alert(info){
	if(__debugger){
		if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
		
		}else{
			alert(info);	
		}
	}
}
UMP.Services.Console.prototype = {
	log : UMP$Services$Console$log,
	alert : UMP$Services$Console$alert
};
UMP.Services.Console.registerClass('UMP.Services.Console');
$console = new UMP.Services.Console();
﻿

//___________________________________________________________________________________________________ $res UMP.Services.Resource
//Resource相关服务
/*
*/ 
Type.registerNamespace('UMP.Services');
UMP.Services.Resource = function UMP$Services$Resource(){
	this._getResString="um_getResString";
}
function UMP$Services$Resource$getResString(resid, isSync){
	if(typeof isSync == "undefined"){
		isSync = true;//默认同步方式调用资源
	}
	var str = "";
    if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
    	str = UM_callNativeService(this._getResString, resid);
    }else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		str = $service.call("UMService.getResString", "{resname:'" + resid + "'}", isSync);//默认同步调用
    }
    return str;
}
UMP.Services.Resource.prototype = {
	getResString : UMP$Services$Resource$getResString
};
UMP.Services.Resource.registerClass('UMP.Services.Resource');
$res = new UMP.Services.Resource();

//___________________________________________________________________________________________________ $umdevice UMP.Services.UMView
UMP.Services.UMView = function UMP$Services$UMView(){	
}
function UMP$Services$UMView$open(jsonArgs){
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.open", strArgs);
	}
}
function UMP$Services$UMView$close(jsonArgs){
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.close", strArgs);
	}
}
function UMP$Services$UMView$openPop(jsonArgs){
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.openPop", strArgs);
	}
}
function UMP$Services$UMView$closePop(jsonArgs){
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.closePop", strArgs);
	}
}
function UMP$Services$UMView$openDialog(jsonArgs){
	/*
	style
	titile
	bingdire
	
	
	*/
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.openDialog", strArgs);
	}
}
function UMP$Services$UMView$openReference(jsonArgs){
	if(jsonArgs){
		var strArgs = $jsonToString(jsonArgs);	
		UM_NativeCall.callService("UMView.openReference", strArgs);
	}
}
function UMP$Services$UMView$openPicker(args){
	//参数过多，args为一个json对象
	//UMView.openPicker(args);
	/*    args结构如下：
	参数：
	"pickercount" 必填 枚举值是 1 ,2 ,3
	"datasource"  必填 数据源对应的字段名
	"title"  iOS 可以没有
	"okbuttontitle" 确定控钮 显示的文字
	"cancelbuttontitle" 取消控钮 显示的文字
	"picker1binder"    picker1收集在context中的字段名
	"picker2binder"    picker2收集在context中的字段名
	"picker3binder"    picker3收集在context中的字段名

	事件：
	"okaction"  确定 控钮的事件，事件中会收集picker中所选 中的数据 加入到context中。
	"okaction"  确定 控钮的事件，事件中会收集picker中所选 中的数据 加入到context中。
	" onselectedchange1"  picker1选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
	" onselectedchange2"  picker2选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
	" onselectedchange3"  picker3选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
	
	*/
	//args形如args1
	var args1 ={
		pickercount:"1",
		datasource:"fieldA",
		title:"",
		okbuttontitle:"确定",
		cancelbuttontitle:"取消",
		picker1binder:"fieldA",
		picker2binder:"fieldB",
		picker3binder:"fieldC",
		okaction:"okAction",  //确定 控钮的事件，事件中会收集picker中所选 中的数据 加入到context中。
		cancelaction:"cancelAction",  //确定 控钮的事件，事件中会收集picker中所选 中的数据 加入到context中。
		onselectedchange1:"action1",  //picker1选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
		onselectedchange2:"action2",  //picker2选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
		onselectedchange3:"action3"  //picker3选中值发生改变后的事件，用户可以在这事件中动态 改变 context中的数据。
	};
	
	if(args){
		var strArgs = $jsonToString(args);	
		UM_NativeCall.callService("UMView.openPicker", strArgs);
	}
}
function UMP$Services$UMView$alert(msg){
	var args = {
		title:"确认",
		style:"ok",		
		message:msg		
	};
	this.openDialog(args);
}
function UMP$Services$UMView$confirm(msg){
	var args = {
		title:"确认",
		style:"ok-cancel",		
		message:msg		
	};
	this.openDialog(args);
}
UMP.Services.UMView.prototype = {		
	open : UMP$Services$UMView$open,
	openPop : UMP$Services$UMView$openPop,
	closePop : UMP$Services$UMView$closePop,
	openDialog : UMP$Services$UMView$openDialog,
	openReference : UMP$Services$UMView$openReference,
	openPicker : UMP$Services$UMView$openPicker,
	alert : UMP$Services$UMView$alert,
	confirm : UMP$Services$UMView$confirm
};
UMP.Services.UMView.registerClass('UMP.Services.UMView');
var $umview = new UMP.Services.UMView();
//----------------------------------------------------------------------------END


//___________________________________________________________________________________________________ $umdevice UMP.Services.UMDevice
UMP.Services.UMDevice = function UMP$Services$UMDevice(){
	this._UMDevice_getDeviceInfo="UMDevice.getDeviceInfo";	
}
function UMP$Services$UMDevice$getTimeZoneID(){
	return	UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
}
function UMP$Services$UMDevice$getTimeZoneDisplayName(){
	return	UM_NativeCall.callService("UMDevice.getTimeZoneDisplayName", "", true);
}
function UMP$Services$UMDevice$getDeviceInfo(jsonArgs){
	/*
		用法1、使用同步调用直接获取返回值。
		var devinfo = call2("UMDevice.getDeviceInfo");        //无参数
		
		用法2、使用异步调用方法，CallBack中获取返回值
		call("UMDevice.getDeviceInfo","{bindfield:devinf,callback:sendToMA}"); 
	*/
	var result = "";
	if(jsonArgs){
		var result = $service.call(this._UMDevice_getDeviceInfo, $jsonToString(jsonArgs), false);
	}else{
		var result = $service.call(this._UMDevice_getDeviceInfo, "", true);
	}
	//$console.log(result);
	//$console.log($jsonToString(result););
	return result;
	/*
	var jsonArgs = {
		bindfield:devinf,
		callback:sendToMA
	};
	return	UM_NativeCall.callService(this._UMDevice_getDeviceInfo, $jsonToString(jsonArgs), false);
	*/
	
}
UMP.Services.UMDevice.prototype = {	
	getTimeZoneID : UMP$Services$UMDevice$getTimeZoneID,
	getTimeZoneDisplayName : UMP$Services$UMDevice$getTimeZoneDisplayName,
	getDeviceInfo : UMP$Services$UMDevice$getDeviceInfo
};
UMP.Services.UMDevice.registerClass('UMP.Services.UMDevice');
var $umdevice = new UMP.Services.UMDevice();
