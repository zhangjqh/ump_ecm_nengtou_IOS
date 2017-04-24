Type.registerNamespace('nc.bs.oa.oama.ecm.SentDetailController');
nc.bs.oa.oama.ecm.SentDetailController = function() {}

function nc$bs$oa$oama$ecm$SentDetailController$onDataLoad(ctx){
	var currentwork = stringToJSON(ctx.params()["currentwork"]);
	ctx.load(currentwork);
	
	// 正文类型
	var type = {
		"1" : $res.getResString("flow_defaultcontent"),
		"2" : $res.getResString("flow_wordcontent")
	};
	$controls.set("contentInfoLabel", "text", (type[currentwork["contenttype"]] || currentwork["contenttype"]));
	
	// 附件个数
	var attachnum = currentwork["attachment"].length;
	$controls.set("attachmentInfoLabel", "text", attachnum);
}
function nc$bs$oa$oama$ecm$SentDetailController$contentCallback(ctx){
	ctx.dispose();
	
	var action = {
		"1" : "openDefaultContent",
		"2" : "openWordContent"
	};
	var contenttype = ctx.unload()["contenttype"];
	if (action[contenttype]){
		_$sys.callAction(action[contenttype]);
	} else {
		_$sys.callAction("openUnknownContent");
	}
}

function nc$bs$oa$oama$ecm$SentDetailController$initialize(ctx){}

nc.bs.oa.oama.ecm.SentDetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$SentDetailController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$SentDetailController$onDataLoad,
    contentCallback : nc$bs$oa$oama$ecm$SentDetailController$contentCallback
};
nc.bs.oa.oama.ecm.SentDetailController.registerClass('nc.bs.oa.oama.ecm.SentDetailController');
