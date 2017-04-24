Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_ConnectController');
nc.bs.oa.oama.ecm.Ecm_ConnectController = function() {}
function nc$bs$oa$oama$ecm$Ecm_ConnectController$initialize(ctx){}

function nc$bs$oa$oama$ecm$Ecm_ConnectController$afterSave(ctx){
	var isReset = ctx.params()["isreset"];
	ctx.dispose();
	if(isReset && (true == isReset || "true" == isReset))
	{
		_$sys.callAction('toLogin');
	}
	else
	{
		_$sys.callAction('closeWindow');
	}
}
function nc$bs$oa$oama$ecm$Ecm_ConnectController$saveservice(ctx){
	var path = ctx.get("path");
	if(path != undefined && path !=null){
		ctx.set("path","");
	}
	var key = unescape(ctx.get("key"));
	var setting = stringToJSON(key);
	var yonyouECM = setting["yonyouECM"];
	if(yonyouECM && yonyouECM != "undefined" && yonyouECM == "CONNECTION"){
		var ip = setting["host"];
		var port = setting["port"];
		var args = {
			"host" : ip,
			"port" : port,
			"https" : ""
		}
		UM_NativeCall.callService("UMService.writeConfigure", jsonToString(args));
		ctx.set("ip",ip);
		ctx.set("port",port);
		ctx.load();
	}else{
		alert("亲！可能还没有人分享可用的二维码，快去分享吧！");
		return;
	}
	
}
function nc$bs$oa$oama$ecm$Ecm_ConnectController$shareqrcode(ctx){
	var ip = ctx.get("ip").trim();
	var port = ctx.get("port").trim();
	if(!ip || !port)
	{
	   alert($res.getResString("servernull"));
	   return;
	}
	var args = {
		"host" : ip,
		"port" : port,
		"https" : ""
	}
	UM_NativeCall.callService("UMService.writeConfigure", jsonToString(args));
	//_$sys.callAction('toqrcodeimg');
	_$sys.callAction('getqrcodeimg');
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$Ecm_ConnectController$qrcodeError(ctx){
	var errorCode = ctx.params()["err_code"];
	var errorMsg = ctx.params()["err_msg"];
	 if(errorCode==0){
	 	alert($res.getResString("error_qr_ma"));
	 }else {
	 	alert(errorMsg);
	 }
	 //alert($res.getResString("error_qr_ip"));
}
nc.bs.oa.oama.ecm.Ecm_ConnectController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_ConnectController$initialize,
    afterSave : nc$bs$oa$oama$ecm$Ecm_ConnectController$afterSave,
    saveservice : nc$bs$oa$oama$ecm$Ecm_ConnectController$saveservice,
    shareqrcode : nc$bs$oa$oama$ecm$Ecm_ConnectController$shareqrcode,
    qrcodeError : nc$bs$oa$oama$ecm$Ecm_ConnectController$qrcodeError
};
nc.bs.oa.oama.ecm.Ecm_ConnectController.registerClass('nc.bs.oa.oama.ecm.Ecm_ConnectController');
