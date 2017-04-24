Type.registerNamespace('nc.bs.oa.oama.ecm.ForwardController');
nc.bs.oa.oama.ecm.ForwardController = function() {}

var isResume = true;

function nc$bs$oa$oama$ecm$ForwardController$onDataLoad(ctx){
	var sourceid = ctx.params()["sourceid"];
	var forwarddetail = {
		"sourceid" : sourceid,
		"opinion" : "",
		"flowedit" : [{
			"index" : "1",
			"model" : "2", // 1串行,2并行
			"rule" : "1", // 1会签、2抢占
			"names" : "",
			"steps" : []
		}],
		"attachment" : []
	};
	ctx.load(forwarddetail);
	
	$controls.set("flowInfoLabel", "text", "");
	$controls.set("attachmentInfoLabel", "text", "0");
}
function nc$bs$oa$oama$ecm$ForwardController$onCancelBtnClick(ctx){
	$cache.writeFile("OAPPREFRESH", "NULL");

	var opinion = ctx.get("opinion");
	var flownum = ctx.unload()["flowedit"].length;
	var attachnum = ctx.unload()["attachment"].length;
	if(opinion || flownum || attachnum) {// 单据内容不为空
		_$sys.callAction('beforeCancel'); // 确认取消
	} else {
		_$sys.callAction('onCloseClick'); // 关闭页面
	}
}
function nc$bs$oa$oama$ecm$ForwardController$flowCallback(ctx){
	if (!isResume){
		 isResume = true;
		 ctx.dispose();
		 return;
	}
	
	// 覆盖式，不可重复
	var personlist = eval($cache.readFile("ECMPERSONSELECTED")) || [];
	var flowedit = ctx.unload()["flowedit"];
	if (!personlist || !flowedit || !flowedit[0]){
		ctx.dispose();
		return;
	}
	var editstep = flowedit[0];
	var steps = [];
	
	var names = "";
	var index = steps.length;
	for(var i=0; i<personlist.length; i++) {
		var person = personlist[i];
		var personId = person["user"] || person["id"];
		names += names ? "," + person["name"] : person["name"];
		steps.push({
			index	: ++index,
			id		: personId,
			name	: person["name"]
		});
	}
	editstep["names"] = names;
	editstep["steps"] = steps;
	
	ctx.load({"flowedit" : flowedit});
	
	var signer = editstep["names"];
	$controls.set("flowInfoLabel", "text", signer);
}
function nc$bs$oa$oama$ecm$ForwardController$attachmentCallback(ctx){
	//isResume = false;
	 
	var attachment = stringToJSON(ctx.params()["attachment"]) || [];
	ctx.load({"attachment" : attachment});
	
	$controls.set("attachmentInfoLabel", "text", attachment.length);
}
function nc$bs$oa$oama$ecm$ForwardController$onSubmitBtnClick(ctx){
	ctx.dispose();
	
	var flowedit = ctx.unload()["flowedit"];
	if(flowedit.length <= 0 || flowedit[0]["steps"].length <= 0) {
		alert($res.getResString("flow_forwardtonull")); // 请选择要转发的人员
		return;
	}
	
	var forwarddetail = ctx.unload();
	forwarddetail["sourceid"] = ctx.get("sourceid") || "";
	forwarddetail["opinion"] = ctx.get("opinion") || "";
	
	var params =  {
		"viewid" : "nc.bs.oa.oama.freeflow.WorkController",
		"action" : "forward",
		"contextmapping" : "ResultValue",
		"callback" : "submitSuccess",
		"error" : "errorDialog",
		"forwarddetail" : forwarddetail,
		"timeout" : "30000"
	};
	
	UM_NativeCall.callService("UMService.callAction", jsonToString(params));
}
function nc$bs$oa$oama$ecm$ForwardController$errorDialog(ctx){
	var errMsg = stringToJSON(ctx.params()["err_msg"]);
	if(errMsg){
		var index = errMsg.indexOf(":");
		alert(errMsg.substring(index+1));
	}
}
function nc$bs$oa$oama$ecm$ForwardController$onCloseClick(ctx){
	$cache.writeFile("ECMPERSONSELECTED", []);
	
	var params =  {
		"resultcode" : "0",
		"iskeep" : "false"
	};
	UM_NativeCall.callService("UMView.close", jsonToString(params));
}
function nc$bs$oa$oama$ecm$ForwardController$cacheSent(ctx){
	ctx.dispose();
	$cache.writeFile("OAPPREFRESH", "SENT");
	
	_$sys.callAction('onCloseClick');
}

function nc$bs$oa$oama$ecm$ForwardController$initialize(ctx){}

nc.bs.oa.oama.ecm.ForwardController.prototype = {
    initialize : nc$bs$oa$oama$ecm$ForwardController$initialize,
    onCancelBtnClick : nc$bs$oa$oama$ecm$ForwardController$onCancelBtnClick,
    onCloseClick : nc$bs$oa$oama$ecm$ForwardController$onCloseClick,
    attachmentCallback : nc$bs$oa$oama$ecm$ForwardController$attachmentCallback,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$ForwardController$onSubmitBtnClick,
    onDataLoad : nc$bs$oa$oama$ecm$ForwardController$onDataLoad,
    cacheSent : nc$bs$oa$oama$ecm$ForwardController$cacheSent,
    errorDialog : nc$bs$oa$oama$ecm$ForwardController$errorDialog,
    flowCallback : nc$bs$oa$oama$ecm$ForwardController$flowCallback
};
nc.bs.oa.oama.ecm.ForwardController.registerClass('nc.bs.oa.oama.ecm.ForwardController');
