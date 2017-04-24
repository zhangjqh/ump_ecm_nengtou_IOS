Type.registerNamespace('nc.bs.oa.oama.ecm.msg_MessageContentDetailController');
nc.bs.oa.oama.ecm.msg_MessageContentDetailController = function() {

}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailController$OnLoadMsgDetail(ctx){	
    var currentMsg = stringToJSON(ctx.params()["currentmsg"]);
	if(ctx.load(currentMsg).get("attachment")=="0")
	{
		hide("panelAttachment");
	}
	else
	{
		show("panelAttachment");
	}	
	ctx.load(currentMsg);
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id, isHolder){
	if(isHolder){
		$controls.set(id, "visible", "false");
	}else{
		$controls.set(id, "display", "none");
	}
}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailController$GoBack(ctx){
	alert(ctx);
}
nc.bs.oa.oama.ecm.msg_MessageContentDetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$msg_MessageContentDetailController$initialize,
    GoBack : nc$bs$oa$oama$ecm$msg_MessageContentDetailController$GoBack,
    OnLoadMsgDetail : nc$bs$oa$oama$ecm$msg_MessageContentDetailController$OnLoadMsgDetail
};
nc.bs.oa.oama.ecm.msg_MessageContentDetailController.registerClass('nc.bs.oa.oama.ecm.msg_MessageContentDetailController');
