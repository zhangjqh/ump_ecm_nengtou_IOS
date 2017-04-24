Type.registerNamespace('nc.bs.oa.oama.ecm.urgewinController');
nc.bs.oa.oama.ecm.urgewinController = function() {

}
function nc$bs$oa$oama$ecm$urgewinController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$urgewinController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$urgewinController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$urgewinController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$urgewinController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$urgewinController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$urgewinController$urgeonload(ctx){
	var taskid = ctx.params()["taskid"];
	var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action" : "urgeOnload",
		              "taskid" : taskid,
		              "callback" : "setCheckboxEnable"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$urgewinController$setCheckboxEnable(ctx){
		//动态配置提醒方式 对于没有的置灰处理
	var msgEnable = ctx.get("msgEnable");
	var emailEnable = ctx.get("emailEnable");
	var smsEnable = ctx.get("smsEnable");
	var imEnable = ctx.get("imEnable");
	if(msgEnable == null){
		$controls.set("label2","color","#c8c7cc");
		$controls.set("checkbox0","readonly","true");
	}
	if(emailEnable == null){
		$controls.set("label3","color","#c8c7cc");
		$controls.set("checkbox1","readonly","true");
	}
	if(smsEnable == null){
		$controls.set("label4","color","#c8c7cc");
		$controls.set("checkbox2","readonly","true");
	}
	if(imEnable == null){
		$controls.set("label5","color","#c8c7cc");
		$controls.set("checkbox3","readonly","true");
	}
}
function nc$bs$oa$oama$ecm$urgewinController$urgeError(ctx){
	alert("操作失败,请稍后重试！");
}
nc.bs.oa.oama.ecm.urgewinController.prototype = {
    initialize : nc$bs$oa$oama$ecm$urgewinController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$urgewinController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$urgewinController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$urgewinController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$urgewinController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$urgewinController$UMonDataBinding,
    urgeonload : nc$bs$oa$oama$ecm$urgewinController$urgeonload,
    setCheckboxEnable : nc$bs$oa$oama$ecm$urgewinController$setCheckboxEnable,
    urgeError : nc$bs$oa$oama$ecm$urgewinController$urgeError
};
nc.bs.oa.oama.ecm.urgewinController.registerClass('nc.bs.oa.oama.ecm.urgewinController');
