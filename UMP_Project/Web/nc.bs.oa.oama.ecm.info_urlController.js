Type.registerNamespace('nc.bs.oa.oama.ecm.info_urlController');
nc.bs.oa.oama.ecm.info_urlController = function() {

}
function nc$bs$oa$oama$ecm$info_urlController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$info_urlController$afterInfoLoad(ctx){
   ctx.set("binderfield","content");
	//ctx["binderfield"] = "content";

	//UM_Sys.callAction("htmlBind",$jsonToString(ctx.unload()));

}
function nc$bs$oa$oama$ecm$info_urlController$afterLoadError(ctx){
   alert($context.param("err_msg"));
	 _$sys.callAction('toClose');
}
function nc$bs$oa$oama$ecm$info_urlController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$info_urlController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$info_urlController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$info_urlController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$info_urlController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
nc.bs.oa.oama.ecm.info_urlController.prototype = {
    initialize : nc$bs$oa$oama$ecm$info_urlController$initialize,
    afterInfoLoad : nc$bs$oa$oama$ecm$info_urlController$afterInfoLoad,
    afterLoadError : nc$bs$oa$oama$ecm$info_urlController$afterLoadError,
    UMonInit : nc$bs$oa$oama$ecm$info_urlController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_urlController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$info_urlController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$info_urlController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_urlController$UMonDataBinding
};
nc.bs.oa.oama.ecm.info_urlController.registerClass('nc.bs.oa.oama.ecm.info_urlController');
