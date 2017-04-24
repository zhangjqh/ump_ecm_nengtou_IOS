Type.registerNamespace('nc.bs.oa.oama.ecm.comment_listController');
nc.bs.oa.oama.ecm.comment_listController = function() {

}
function nc$bs$oa$oama$ecm$comment_listController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$comment_listController$doSubmitComment(ctx){
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
	$cache.write("oainf_comment_infoid", infoid);
	var args1 = {
		"viewid":"nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"isDataCollect":"true",
		"params":{
			"infoid": infoid,
			"commentcontent": txt
		},
		"action":"oneInfoSubmitComment",
		"callback":"refreshList",
		"error" : "errorCallback"
	}
	UM_NativeCall.callService("UMService.callAction",$jsonToString(args1));
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$comment_listController$alertMsg(ctx){
	alert($res.getResString("info_dialog_text"));//评论成功
	$controls.set("textarea0","value","");
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$comment_listController$errorCallback(ctx){
	alert($res.getResString("info_dialog_text_error"));//评论失败
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$comment_listController$refreshList(ctx){
	var infoid = $cache.read("oainf_comment_infoid");
	//alert(infoid);
	var args2 = {
		"viewid":"nc.bs.oa.oainf.ma.infopublish.OneinfoExtendController",
		"params":{
			"infoid": infoid,
			"count": "25",
			"startline": "1"
		},
		"action": "oneInfoCommentLoad",
		"count": "25",
		"startline": "1",
		"callback":"alertMsg"
	}
	UM_NativeCall.callService("UMList.getFirstPage",$jsonToString(args2));

	ctx.dispose();
}
function nc$bs$oa$oama$ecm$comment_listController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$comment_listController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$comment_listController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$comment_listController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$comment_listController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
nc.bs.oa.oama.ecm.comment_listController.prototype = {
    initialize : nc$bs$oa$oama$ecm$comment_listController$initialize,
    doSubmitComment : nc$bs$oa$oama$ecm$comment_listController$doSubmitComment,
    alertMsg : nc$bs$oa$oama$ecm$comment_listController$alertMsg,
    errorCallback : nc$bs$oa$oama$ecm$comment_listController$errorCallback,
    refreshList : nc$bs$oa$oama$ecm$comment_listController$refreshList,
    UMonInit : nc$bs$oa$oama$ecm$comment_listController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$comment_listController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$comment_listController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$comment_listController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$comment_listController$UMonDataBinding
};
nc.bs.oa.oama.ecm.comment_listController.registerClass('nc.bs.oa.oama.ecm.comment_listController');
