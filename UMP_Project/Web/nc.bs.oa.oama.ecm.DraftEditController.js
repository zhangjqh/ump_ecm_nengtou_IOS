Type.registerNamespace('nc.bs.oa.oama.ecm.DraftEditController');
nc.bs.oa.oama.ecm.DraftEditController = function() {}

function nc$bs$oa$oama$ecm$DraftEditController$onDataLoad(ctx){
	var currentwork = stringToJSON(ctx.params()["currentwork"]);
	ctx.load(currentwork);
	
	var flownum = currentwork["flowedit"].length;
	var attachnum = currentwork["attachment"].length;
	$controls.set("flowInfoLabel", "text", flownum);
	$controls.set("attachmentInfoLabel", "text", attachnum);
}
function nc$bs$oa$oama$ecm$DraftEditController$onCancelBtnClick(ctx){
	var title = ctx.get("title").trim();
	var content = ctx.get("textcontent");
	var flownum = ctx.unload()["flowedit"].length;
	var attachnum = ctx.unload()["attachment"].length;
	if(title || content || flownum || attachnum) {// 单据内容不为空
		_$sys.callAction('beforeCancel'); // 确认取消
	} else {
		_$sys.callAction('onCloseClick'); // 关闭页面
	}
}
function nc$bs$oa$oama$ecm$DraftEditController$flowCallback(ctx){
	var flowedit = stringToJSON(ctx.params()["flowedit"]) || [];
	var editable = stringToJSON(ctx.params()["editable"]) || "false";
	var notice = stringToJSON(ctx.params()["notice"]);
	ctx.load({"flowedit" : flowedit});
	ctx.load({"editable" : editable});
	ctx.load({"notice" : notice});
	
	$controls.set("flowInfoLabel", "text", flowedit.length);
}
function nc$bs$oa$oama$ecm$DraftEditController$attachmentCallback(ctx){
	var attachment = stringToJSON(ctx.params()["attachment"]) || [];
	ctx.load({"attachment" : attachment});
	
	$controls.set("attachmentInfoLabel", "text", attachment.length);
}
function nc$bs$oa$oama$ecm$DraftEditController$archiveCallback(ctx){
	var archiveset = stringToJSON(ctx.params()["archiveset"]) || {"folder":"", "isauto":"false"};
	ctx.load({"archiveset" : archiveset});
	
	$controls.set("archiveInfoLabel", "text", archiveset["folder"]);
}
function nc$bs$oa$oama$ecm$DraftEditController$onSubmitBtnClick(ctx){
	ctx.dispose();
	
	var title = ctx.get("title").trim();
	var flowedit = ctx.unload()["flowedit"];
	if(!title) {
		alert($res.getResString("flow_titleplaceholder")); // 请输入标题
		return;
	}
	if(flowedit.length <= 0) {
		alert($res.getResString("flow_processnull")); // 请进行流程设置
		return;
	}
	//if(flowedit.length <= 1) {
	//	alert($res.getResString("flow_nextstep")); // 请设置流程下一步信息
	//	return;
	//}
	
	var params = getParams(ctx);
	params["method"] = "2";// 1 暂存， 2 提交
	params["callback"] = "submitSuccess";
	params["error"] = "errorDialog";
	params["timeout"] = "30000";
	
	UM_NativeCall.callService("UMService.callAction", jsonToString(params));
}
function nc$bs$oa$oama$ecm$DraftEditController$onDraftBtnClick(ctx){
	ctx.dispose();
	
	var title = ctx.get("title").trim();
	if(!title) {
		alert($res.getResString("flow_titleplaceholder")); // 请输入标题
		return;
	}
	
	var params = getParams(ctx);
	params["method"] = "1";// 1 暂存， 2 提交
	params["callback"] = "draftSuccess";
	params["error"] = "errorDialog";
	
	UM_NativeCall.callService("UMService.callAction", jsonToString(params));
}
function getParams(ctx){
	var workdetail = ctx.unload();
	workdetail["id"] = ctx.get("id") || "";
	workdetail["title"] = ctx.get("title") || "";
	workdetail["priority"] = ctx.get("priority") || "1"; // 1 普通， 2 重要
	workdetail["textcontent"] = ctx.get("textcontent") || "";
	workdetail["ts"] = ctx.get("ts") || "";
	
	return {
		"viewid" : "nc.bs.oa.oama.freeflow.WorkController",
		"action" : "save",
		"contextmapping" : "ResultValue",
		"workdetail" : workdetail
	};
}
function nc$bs$oa$oama$ecm$DraftEditController$errorDialog(ctx){
	var errMsg = stringToJSON(ctx.params()["err_msg"]);
	if(errMsg){
		var index = errMsg.indexOf(":");
		alert(errMsg.substring(index+1));
	}
}
function nc$bs$oa$oama$ecm$DraftEditController$cacheDraft(ctx){
	ctx.dispose();
	$cache.writeFile("OAPPREFRESH", "DRAFT");
	
	_$sys.callAction('onCloseClick');
}
function nc$bs$oa$oama$ecm$DraftEditController$cacheSent(ctx){
	ctx.dispose();
	$cache.writeFile("OAPPREFRESH", "SENT");
	
	_$sys.callAction('onCloseClick');
}

function nc$bs$oa$oama$ecm$DraftEditController$initialize(ctx){}

nc.bs.oa.oama.ecm.DraftEditController.prototype = {
    initialize : nc$bs$oa$oama$ecm$DraftEditController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$DraftEditController$onDataLoad,
    onCancelBtnClick : nc$bs$oa$oama$ecm$DraftEditController$onCancelBtnClick,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$DraftEditController$onSubmitBtnClick,
    onDraftBtnClick : nc$bs$oa$oama$ecm$DraftEditController$onDraftBtnClick,
    flowCallback : nc$bs$oa$oama$ecm$DraftEditController$flowCallback,
    archiveCallback : nc$bs$oa$oama$ecm$DraftEditController$archiveCallback,
    attachmentCallback : nc$bs$oa$oama$ecm$DraftEditController$attachmentCallback,
    errorDialog : nc$bs$oa$oama$ecm$DraftEditController$errorDialog,
    cacheDraft : nc$bs$oa$oama$ecm$DraftEditController$cacheDraft,
    cacheSent : nc$bs$oa$oama$ecm$DraftEditController$cacheSent
};
nc.bs.oa.oama.ecm.DraftEditController.registerClass('nc.bs.oa.oama.ecm.DraftEditController');
