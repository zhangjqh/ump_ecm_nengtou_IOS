Type.registerNamespace('nc.bs.oa.oama.ecm.refuseoragreeController');
nc.bs.oa.oama.ecm.refuseoragreeController = function() {

}
function nc$bs$oa$oama$ecm$refuseoragreeController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$refuseoragreeController$initload(ctx){
   var approvaltype = ctx.params()["approvaltype"];
   // var reportid = ctx.params()["reportid"];
    //alert(approvaltype);
    // alert(reportid);
    if(approvaltype == '2'){
    	UM_NativeCall.callService("UMJS.setProperty","{id:'title0',text:'输入拒绝信息'}");
        UM_NativeCall.callService("UMJS.setProperty","{id:'reforagrbtn',value:'拒绝'}");
    }
    if(approvaltype == '1'){
    	UM_NativeCall.callService("UMJS.setProperty","{id:'title0',text:'输入接受信息'}");
        UM_NativeCall.callService("UMJS.setProperty","{id:'reforagrbtn',value:'接受'}");
    }

}

function nc$bs$oa$oama$ecm$refuseoragreeController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$refuseoragreeController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$refuseoragreeController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$refuseoragreeController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$refuseoragreeController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$refuseoragreeControllerBase$returnback(ctx){
//var serviceType = "UMList.getFirstPage";
//	var serviceparams = {
//		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
//		              "startline" : "1",
//	              "count" : "25",
		             
//	              "action"  : "getTaskList",
//		              "tasktype" : "6"
//	               };
//    var serviceparams = $jsonToString(serviceparams);              
//	UM_NativeCall.callService(serviceType,serviceparams);

// 应该返回到 待确认列表 此处是个bug 暂留
	var serviceType = "UMView.open";
	var serviceparams = {
		      "viewid" : "nc.bs.oa.oama.ecm.Task_mainviewconfirm",
		      "iskeep" : "false"
	};
	var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$refuseoragreeController$back(ctx){
	var taskid = ctx.params()["taskid"];
    var serviceType = "UMView.open";
	var params = {
		"viewid" : "nc.bs.oa.oama.ecm.Task_reportconfirmdetail",
		"taskid" : taskid,
		"btnvalue" : "6",
		"iskeep" : "false"
	};
	var serviceparams = $jsonToString(params);
	UM_NativeCall.callService(serviceType, serviceparams);
}
nc.bs.oa.oama.ecm.refuseoragreeController.prototype = {
    initialize : nc$bs$oa$oama$ecm$refuseoragreeController$initialize,
    initload : nc$bs$oa$oama$ecm$refuseoragreeController$initload,
   returnback: nc$bs$oa$oama$ecm$refuseoragreeControllerBase$returnback,
   back : nc$bs$oa$oama$ecm$refuseoragreeController$back,
    UMonInit : nc$bs$oa$oama$ecm$refuseoragreeController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$refuseoragreeController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$refuseoragreeController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$refuseoragreeController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$refuseoragreeController$UMonDataBinding
};
nc.bs.oa.oama.ecm.refuseoragreeController.registerClass('nc.bs.oa.oama.ecm.refuseoragreeController');
