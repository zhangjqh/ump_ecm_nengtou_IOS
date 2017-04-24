Type.registerNamespace('nc.bs.oa.oama.ecm.reportconfirmdetailController');
nc.bs.oa.oama.ecm.reportconfirmdetailController = function() {

}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$getreporthistory(ctx){
    var taskid = ctx.get("taskid");//获取当前ctx 值
   //  UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Reporthistorylist',isDataCollect:'true',params:{taskid:'"+taskid+"'},iskeep:'true'}");
    var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_reporthistory",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "iskeep"  : "true"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
  //   UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Reportlisttest',isDataCollect:'true',taskid:'"+taskid+"',iskeep:'true'}");
    $context.dispose();
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$reportonload(ctx){
   var taskid = ctx.params()["taskid"];//获取上一个ctx值
   
   var params = {
   	 "taskid" : taskid
   };
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action" : "getReportDetail",
		              "iskeep"  : "true",
		              "params"  : $jsonToString(params)
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
//   UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{taskid:'"+taskid+"'},action:'getReportDetail'}");
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$reportconfirmdetailControllerBase$openurgewin(ctx){
	 var taskid = ctx.get("taskid");//获取当前ctx 值
   //  UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Reporthistorylist',isDataCollect:'true',params:{taskid:'"+taskid+"'},iskeep:'true'}");
        var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Urgewin",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "iskeep"  : "true"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
//     UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Urgewin',isDataCollect:'true',taskid:'"+taskid+"',iskeep:'true'}");
     $context.dispose();
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$agreeclick(ctx){
	var taskid = ctx.get("taskid");
	
    var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_refuseoragree",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "approvaltype" : "1",
		              "iskeep"  : "false"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);	
//	 UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Refuseoragree',isDataCollect:'true',taskid:'"+taskid+"',approvaltype:'1',iskeep:'false'}");
	
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$refuseclick(ctx){
		var taskid = ctx.get("taskid");
		
		    var serviceType = "UMView.open";
	 var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_refuseoragree",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "approvaltype" : "2",
		              "iskeep"  : "false"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
//	 UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Refuseoragree',isDataCollect:'true',taskid:'"+taskid+"',approvaltype:'2',iskeep:'false'}");
	
}
function nc$bs$oa$oama$ecm$reportconfirmdetailController$openattwin(ctx){
	var taskid = ctx.get("taskid");
	
    var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_file_detail",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "type" : "2",
		              "iskeep"  : "true"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);	
//	 UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.File_detail',isDataCollect:'true',taskid:'"+taskid+"',type:'2',iskeep:'true'}");
    $context.dispose();
}
nc.bs.oa.oama.ecm.reportconfirmdetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$reportconfirmdetailController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonUnload,
    getreporthistory : nc$bs$oa$oama$ecm$reportconfirmdetailController$getreporthistory,
    UMonComplete : nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonComplete,
    refuseclick: nc$bs$oa$oama$ecm$reportconfirmdetailController$refuseclick,
    agreeclick: nc$bs$oa$oama$ecm$reportconfirmdetailController$agreeclick,
    openattwin: nc$bs$oa$oama$ecm$reportconfirmdetailController$openattwin,
    openurgewin : nc$bs$oa$oama$ecm$reportconfirmdetailControllerBase$openurgewin,
    reportonload : nc$bs$oa$oama$ecm$reportconfirmdetailController$reportonload,
    UMonDataBinding : nc$bs$oa$oama$ecm$reportconfirmdetailController$UMonDataBinding
};
nc.bs.oa.oama.ecm.reportconfirmdetailController.registerClass('nc.bs.oa.oama.ecm.reportconfirmdetailController');
