Type.registerNamespace('nc.bs.oa.oama.ecm.DraftDetailController');
nc.bs.oa.oama.ecm.DraftDetailController = function() {}

function nc$bs$oa$oama$ecm$DraftDetailController$onDataLoad(ctx){
	var currentwork = stringToJSON(ctx.params()["currentwork"]);
	ctx.load(currentwork);
	
	var flownum = currentwork["flowedit"].length;
	var attachnum = currentwork["attachment"].length;
	if(flownum==0){
		$controls.set("flowPanel", "disabled", "disabled");
		
	}
	if(attachnum==0){
		$controls.set("attachmentPanel", "disabled", "disabled");
		
	}
	$controls.set("flowInfoLabel", "text", flownum);
	$controls.set("attachmentInfoLabel", "text", attachnum);
}
function nc$bs$oa$oama$ecm$DraftDetailController$onSubmitBtnClick(ctx){
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

	var workdetail = ctx.unload();
	workdetail["id"] = ctx.get("id") || "";
	workdetail["title"] = ctx.get("title") || "";
	workdetail["priority"] = ctx.get("priority") || "1"; // 1 普通， 2 重要
	workdetail["textcontent"] = ctx.get("textcontent") || "";
	workdetail["ts"] = ctx.get("ts") || "";
	
	var params =  {
		"viewid" : "nc.bs.oa.oama.freeflow.WorkController",
		"action" : "save",
		"contextmapping" : "ResultValue",
		"workdetail" : workdetail,
		"method" : "2",// 1 暂存， 2 提交
		"callback" : "submitSuccess",
		"error" : "errorDialog",
		"timeout" : "30000"
	};
	UM_NativeCall.callService("UMService.callAction", jsonToString(params));
}
function nc$bs$oa$oama$ecm$DraftDetailController$onDeleteBtnClick(ctx){
	var params = {
		"title" : $res.getResString("flow_notice"),
		"message" : $res.getResString("flow_deleteconfirm"),
		"style" : "ok-cancel",
		"okbuttontitle" : $res.getResString("flow_ok"),
		"cancelbuttontitle" : $res.getResString("flow_cancel"),
		"okaction" : "deleteWork"
	};
	UM_NativeCall.callService("UMView.openDialog", jsonToString(params));
}
function nc$bs$oa$oama$ecm$DraftDetailController$errorDialog(ctx){
	var errMsg = stringToJSON(ctx.params()["err_msg"]);
	if(errMsg){
		var index = errMsg.indexOf(":");
		alert(errMsg.substring(index+1));
	}
}
function nc$bs$oa$oama$ecm$DraftDetailController$cacheDraft(ctx){
	ctx.dispose();
	$cache.writeFile("OAPPREFRESH", "DRAFT");
	
	_$sys.callAction('onCloseClick');
}
function nc$bs$oa$oama$ecm$DraftDetailController$cacheSent(ctx){
	ctx.dispose();
	$cache.writeFile("OAPPREFRESH", "SENT");
	
	_$sys.callAction('onCloseClick');
}

function nc$bs$oa$oama$ecm$DraftDetailController$initialize(ctx){}

nc.bs.oa.oama.ecm.DraftDetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$DraftDetailController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$DraftDetailController$onDataLoad,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$DraftDetailController$onSubmitBtnClick,
    onDeleteBtnClick : nc$bs$oa$oama$ecm$DraftDetailController$onDeleteBtnClick,
    cacheDraft : nc$bs$oa$oama$ecm$DraftDetailController$cacheDraft,
    errorDialog : nc$bs$oa$oama$ecm$DraftDetailController$errorDialog,
    cacheSent : nc$bs$oa$oama$ecm$DraftDetailController$cacheSent
};
nc.bs.oa.oama.ecm.DraftDetailController.registerClass('nc.bs.oa.oama.ecm.DraftDetailController');
