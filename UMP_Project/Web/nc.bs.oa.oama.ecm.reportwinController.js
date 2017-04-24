Type.registerNamespace('nc.bs.oa.oama.ecm.reportwinController');
nc.bs.oa.oama.ecm.reportwinController = function() {

}
function nc$bs$oa$oama$ecm$reportwinController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$reportwinController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportwinController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportwinController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportwinController$viewonload(ctx){
  // var taskid = ctx.params()["taskid"];
 //  UM_NativeCall.callService("UMJS.setProperty","{id:'label6',value:'"+taskid+"'}");
  // ctx.load({"count":"0",}); 
//  alert("asdfds");
}
function nc$bs$oa$oama$ecm$reportwinController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportwinController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportwinController$attwinback(ctx){
	var filelist = ctx.params()["allrow"];
	var count = 0;
	if(filelist){
		filelist = stringToJSON(filelist);
		count = filelist.length;
	}
	
    ctx.load({"count":count});
}
nc.bs.oa.oama.ecm.reportwinController.prototype = {
	attwinback: nc$bs$oa$oama$ecm$reportwinController$attwinback,
    initialize : nc$bs$oa$oama$ecm$reportwinController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$reportwinController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$reportwinController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$reportwinController$UMonUnload,
    viewonload : nc$bs$oa$oama$ecm$reportwinController$viewonload,
    UMonComplete : nc$bs$oa$oama$ecm$reportwinController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$reportwinController$UMonDataBinding
};
nc.bs.oa.oama.ecm.reportwinController.registerClass('nc.bs.oa.oama.ecm.reportwinController');
