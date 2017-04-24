Type.registerNamespace('nc.bs.oa.oama.ecm.info_wordController');
nc.bs.oa.oama.ecm.info_wordController = function() {

}
function nc$bs$oa$oama$ecm$info_wordController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$doSubmitComment(ctx){
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
		"action":"oneInfoSubmitComment"		
	}
	
	var str = $jsonToString(args);
	UM_NativeCall.callService("UMService.callAction",str);
	ctx.dispose();
	alert($res.getResString("info_dialog_text"));//评论成功
	$controls.set("textarea0","value","");
}
function nc$bs$oa$oama$ecm$info_wordController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$UMonDataBinding(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$info_wordController$afterLoadError(ctx){
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
function nc$bs$oa$oama$ecm$info_wordController$afterInfoLoad(ctx){
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
	
	//UM_Sys.callAction("bindWord",$jsonToString(ctx.unload()));
}
function nc$bs$oa$oama$ecm$info_wordController$openWord(ctx){
	var param = ctx.params();

	var attach = param["fileid"];
	var filename = param["contentname"];
	var ext = param["contentext"];
	ext = ext.substr(1);
	
	var args = {
		"filesize":"100",
		"downloadpath": attach,
		"filename": filename,
		"filetype": ext,
		"fileid": attach,
		"downflag":"1",
		"modulename":""
	}
	
	var str = $jsonToString(args);
	UM_NativeCall.callService("UMService.downloadFile",str);
}
nc.bs.oa.oama.ecm.info_wordController.prototype = {
    initialize : nc$bs$oa$oama$ecm$info_wordController$initialize,
    doSubmitComment : nc$bs$oa$oama$ecm$info_wordController$doSubmitComment,
    UMonUnload : nc$bs$oa$oama$ecm$info_wordController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$info_wordController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_wordController$UMonDataBinding,
    UMonInit : nc$bs$oa$oama$ecm$info_wordController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_wordController$UMonLoad,
    afterInfoLoad : nc$bs$oa$oama$ecm$info_wordController$afterInfoLoad,
    openWord : nc$bs$oa$oama$ecm$info_wordController$openWord,
    afterLoadError : nc$bs$oa$oama$ecm$info_wordController$afterLoadError
};
nc.bs.oa.oama.ecm.info_wordController.registerClass('nc.bs.oa.oama.ecm.info_wordController');
