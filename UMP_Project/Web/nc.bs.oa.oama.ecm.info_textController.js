Type.registerNamespace('nc.bs.oa.oama.ecm.info_textController');
nc.bs.oa.oama.ecm.info_textController = function() {

}
function nc$bs$oa$oama$ecm$info_textController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$info_textController$doSubmitComment(ctx){
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
		"viewid": "nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"isDataCollect":"true",
		"contextmapping": "none",
		"params":{
			"infoid": infoid,
			"commentcontent": txt
		},
		"action":'oneInfoSubmitComment'	
	}
	UM_NativeCall.callService("UMService.callAction",$jsonToString(args));
	ctx.dispose();
	alert($res.getResString("info_dialog_text"));//评论成功
	$controls.set("textarea0","value","");
}
function nc$bs$oa$oama$ecm$info_textController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$info_textController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$info_textController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$info_textController$afterLoadError(ctx){
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
function nc$bs$oa$oama$ecm$info_textController$afterInfoLoad(ctx){
	var attach = $context.get_attachflag();
	var comment = $context.get_commentflag();
	if(attach!='Y'){
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
function nc$bs$oa$oama$ecm$info_textController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$info_textController$UMonDataBinding(ctx){
}
nc.bs.oa.oama.ecm.info_textController.prototype = {
    initialize : nc$bs$oa$oama$ecm$info_textController$initialize,
    doSubmitComment : nc$bs$oa$oama$ecm$info_textController$doSubmitComment,
    UMonInit : nc$bs$oa$oama$ecm$info_textController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_textController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$info_textController$UMonUnload,
    afterInfoLoad : nc$bs$oa$oama$ecm$info_textController$afterInfoLoad,
    UMonComplete : nc$bs$oa$oama$ecm$info_textController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_textController$UMonDataBinding,
    afterLoadError : nc$bs$oa$oama$ecm$info_textController$afterLoadError
};
nc.bs.oa.oama.ecm.info_textController.registerClass('nc.bs.oa.oama.ecm.info_textController');
