Type.registerNamespace('nc.bs.oa.oama.ecm.attach_editController');
nc.bs.oa.oama.ecm.attach_editController = function() {

}
function nc$bs$oa$oama$ecm$attach_editController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$attach_editController$addload(ctx){
     var attachmentuuid = ctx.params()["attachmentuuid"];
	var type = ctx.params()["type"];
	
	var params = {
		"attachmentuuid" : attachmentuuid,
		"type" : type
	};
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action"  : "getTaskListByAttachment",
		              "params" :  params
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);  
//	UM_NativeCall.callService("UMService.callAction", "{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{attachmentuuid:'" + attachmentuuid + "', type : '" + type + "'},action:'getTaskListByAttachment'}");

}
function nc$bs$oa$oama$ecm$attach_editController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_editController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_editController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_editController$callloadmap(ctx){
    //alert(jsonToString(ctx.params()));
    var attachmentuuid = $controls.get("attid","value");
    
    var params = {
		"attachmentuuid" : attachmentuuid
	};
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action"  : "getTaskListByAttachment",
		              "params" :  params
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);  
//    UM_NativeCall.callService("UMService.callAction", "{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{attachmentuuid:'" + attachmentuuid + "'},action:'getTaskListByAttachment'}");   

}
function nc$bs$oa$oama$ecm$attach_editController$attedit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_editController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_editController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
nc.bs.oa.oama.ecm.attach_editController.prototype = {
    initialize : nc$bs$oa$oama$ecm$attach_editController$initialize,
    addload : nc$bs$oa$oama$ecm$attach_editController$addload,
    UMonInit : nc$bs$oa$oama$ecm$attach_editController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$attach_editController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$attach_editController$UMonUnload,
    callloadmap : nc$bs$oa$oama$ecm$attach_editController$callloadmap,
    attedit : nc$bs$oa$oama$ecm$attach_editController$attedit,
    UMonComplete : nc$bs$oa$oama$ecm$attach_editController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$attach_editController$UMonDataBinding
};
nc.bs.oa.oama.ecm.attach_editController.registerClass('nc.bs.oa.oama.ecm.attach_editController');
