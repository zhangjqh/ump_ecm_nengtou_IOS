Type.registerNamespace('nc.bs.oa.oama.ecm.MainController');
nc.bs.oa.oama.ecm.MainController = function() {}
function nc$bs$oa$oama$ecm$MainController$initialize(ctx){}
function nc$bs$oa$oama$ecm$MainController$beforeLoadDraft(ctx){
	ctx.dispose();
	
	$controls.set("sentImgBtn", "checked", "false");
	$controls.set("draftImgBtn", "checked", "true");
	_$sys.callAction('loadDraftData');
}
function nc$bs$oa$oama$ecm$MainController$beforeLoadSent(ctx){
	ctx.dispose();
	
	$controls.set("draftImgBtn", "checked", "false");
	$controls.set("sentImgBtn", "checked", "true");
	_$sys.callAction('loadSentData');
}
function nc$bs$oa$oama$ecm$MainController$resumeCallback(ctx){
	try
	{
		ctx.dispose();
		
		var refreshType = $cache.readFile("OAPPREFRESH");
		//alert(refreshType);
		if ("SENT" == refreshType){
			$controls.set("draftImgBtn", "checked", "false");
			$controls.set("sentImgBtn", "checked", "true");
			_$sys.callAction('loadSentData');
		} else if("DRAFT" == refreshType) {
			$controls.set("draftImgBtn", "checked", "true");
			$controls.set("sentImgBtn", "checked", "false");
			_$sys.callAction('loadDraftData');
		}
		$cache.writeFile("OAPPREFRESH", "NULL");
	}
	catch(e)
	{
		//为IOS 第一次加载吞掉异常，不建议这么写，但是。。。
	}
}
function nc$bs$oa$oama$ecm$MainController$detailError(ctx){
	var errMsg = stringToJSON(ctx.params()["err_msg"]);
	if(errMsg){
		var index = errMsg.indexOf(":");
		alert(errMsg.substring(index+1));
	}
}

nc.bs.oa.oama.ecm.MainController.prototype = {
    initialize : nc$bs$oa$oama$ecm$MainController$initialize,
    beforeLoadDraft : nc$bs$oa$oama$ecm$MainController$beforeLoadDraft,
    beforeLoadSent : nc$bs$oa$oama$ecm$MainController$beforeLoadSent,
    resumeCallback : nc$bs$oa$oama$ecm$MainController$resumeCallback,
    detailError : nc$bs$oa$oama$ecm$MainController$detailError
};
nc.bs.oa.oama.ecm.MainController.registerClass('nc.bs.oa.oama.ecm.MainController');
