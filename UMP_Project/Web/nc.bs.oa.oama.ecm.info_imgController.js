Type.registerNamespace('nc.bs.oa.oama.ecm.info_imgController');
nc.bs.oa.oama.ecm.info_imgController = function() {

}
function nc$bs$oa$oama$ecm$info_imgController$initialize(ctx){   
}
function nc$bs$oa$oama$ecm$info_imgController$doSubmitComment(ctx){
	var txt = $controls.get("textarea0","value");
	if(!txt){
		alert($res.getResString("info_alert_msg1"));//评论信息不能为空
		ctx.dispose();
		return;
	}
	var len = txt.length;
	if(len>500){
		alert($res.getResString("info_dialog_countlimit"));//评论字数不能超过500
		ctx.dispose();
		return;
	}
	txt = txt.replace(/(^\s*)|(\s*$)/g, "");

	if(txt==""){
		alert($res.getResString("info_alert_msg1"));//评论信息不能为空
		ctx.dispose();
		return;
	}
	
	var infoid = $context.get_infoid();
	var args = {
		"viewid":"nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"isDataCollect":"true",
		"contextmapping": "none",
		"params":{
			"infoid": infoid,
			"commentcontent": txt
		},
		"action": "oneInfoSubmitComment"
	}
	UM_NativeCall.callService("UMService.callAction",$jsonToString(args));
	ctx.dispose();
	alert($res.getResString("info_dialog_text"));//评论成功
	$controls.set("textarea0","value","");
}
function nc$bs$oa$oama$ecm$info_imgController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$info_imgController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$info_imgController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$info_imgController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$info_imgController$afterLoadError(ctx){
	//alert($context.param("err_msg"));
	var params = getParams(ctx);
	UM_NativeCall.callService("UMView.openDialog", jsonToString(params));	
	 //_$sys.callAction('toClose');
}

function getParams(ctx){
	return {
		"message" : $context.param("err_msg"),
		"title" : "提示信息",
		"okaction" : "toClose",
		"okbuttontitle" : "OK",
		"style" : "ok"
	};
	 
}
function nc$bs$oa$oama$ecm$info_imgController$nextImgLoad(ctx){
	//alert(1);
	var imglist = ctx.get("imglist");
	var infoid = ctx.get("infoid");
	
	//var screenw = ctx.get("screenw");
	//var screenh = ctx.get("screenh");
	
	var screenw = "";
	var screenh = "";
	var devinfo = UM_NativeCall.callService("UMDevice.getDeviceInfo", "", true);
	
	eval("var deviceJson = "+devinfo); 
	if(deviceJson && deviceJson["screen"]){
		screenw = deviceJson["screen"]["width"];
		screenh = deviceJson["screen"]["height"];
	}
	
	
	var imgslen = imglist.length();
	
	if(imgslen == 0){
		return;
	} 
	var idx = 0;
	
	var imgpk = $context.get("imgfilepk");

	for(var i=0; i<imgslen; i++){
		var r = imglist.rows()[i];
		
		if(r.get("infopicid") == imgpk){
			idx = i;
			break;
		}
	}

	if(idx == 0){
		idx = imgslen-1;
	}
	else{
		idx = idx - 1;
	}

	var nextRow = imglist.rows()[idx];
	imgpk = nextRow.get("infopicid");
	
	var args = {
		"viewid": "nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"isDataCollect": "true",
		"params":{
			"imgid": imgpk,
			"infoid": infoid,
			"screenw": screenw,
			"screenh": screenh,
			"ts":"--"
		},
		"action":"onePicLoad"		
	}
	UM_NativeCall.callService("UMService.callAction",$jsonToString(args));
}
function nc$bs$oa$oama$ecm$info_imgController$preImgLoad(ctx){
	//alert(2);
	var imglist = ctx.get("imglist");
	var infoid = ctx.get("infoid");
	
	//var screenw = ctx.get("screenw");
	//var screenh = ctx.get("screenh");
	
	var screenw = "";
	var screenh = "";
	var devinfo = UM_NativeCall.callService("UMDevice.getDeviceInfo", "", true);
	
	eval("var deviceJson = "+devinfo); 
	if(deviceJson && deviceJson["screen"]){
		screenw = deviceJson["screen"]["width"];
		screenh = deviceJson["screen"]["height"];
	}
	
	var imgslen = imglist.length();
	
	if(imgslen == 0){
		return;
	} 
	var idx = 0;
	
	var imgpk = $context.get("imgfilepk");
	
	for(var i=0; i<imgslen; i++){
		var r = imglist.rows()[i];
		
		if(r.get("infopicid") == imgpk){
			idx = i;
			break;
		}
	}
	if(idx == imgslen-1){
		idx = 0;
	}
	else{
		idx = idx + 1;
	}
	
	var nextRow = imglist.rows()[idx];
	imgpk = nextRow.get("infopicid");
	
	var args = {
		"viewid":"nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"isDataCollect":"true",
		"params":{
			"imgid": imgpk,
			"infoid": infoid,
			"screenw": screenw,
			"screenh": screenh,
			"ts":"--"
		},
		"action":'onePicLoad'	
	}
	UM_NativeCall.callService("UMService.callAction",$jsonToString(args));
}
function nc$bs$oa$oama$ecm$info_imgController$afterInfoLoad(ctx){
	var attach = $context.get_attachflag();
	var comment = $context.get_commentflag();
	if(attach=='N'){
		var args = {
			"id":"panel2",
			"display":"none"
		}
		UM_NativeCall.callService("UMJS.setProperty",$jsonToString(args));
	}
	if(comment=='N'){
		var args2 = {
			"id":"panel3",
			"display":"none"
		}
		UM_NativeCall.callService("UMJS.setProperty",$jsonToString(args2));
	}
	
	ctx.set("binderfield","content");
	//ctx["binderfield"] = "content";

	//UM_Sys.callAction("htmlBind",$jsonToString(ctx.unload()));
}
function nc$bs$oa$oama$ecm$info_imgController$UMonDataBinding(ctx){
}
nc.bs.oa.oama.ecm.info_imgController.prototype = {
    initialize : nc$bs$oa$oama$ecm$info_imgController$initialize,
    doSubmitComment : nc$bs$oa$oama$ecm$info_imgController$doSubmitComment,
    UMonInit : nc$bs$oa$oama$ecm$info_imgController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_imgController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$info_imgController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$info_imgController$UMonComplete,
    nextImgLoad : nc$bs$oa$oama$ecm$info_imgController$nextImgLoad,
    preImgLoad : nc$bs$oa$oama$ecm$info_imgController$preImgLoad,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_imgController$UMonDataBinding,
    afterInfoLoad : nc$bs$oa$oama$ecm$info_imgController$afterInfoLoad,
    afterLoadError : nc$bs$oa$oama$ecm$info_imgController$afterLoadError
};
nc.bs.oa.oama.ecm.info_imgController.registerClass('nc.bs.oa.oama.ecm.info_imgController');
