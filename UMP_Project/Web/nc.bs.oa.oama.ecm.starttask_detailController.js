Type.registerNamespace('nc.bs.oa.oama.ecm.starttask_detailController');
nc.bs.oa.oama.ecm.starttask_detailController = function() {

}
function nc$bs$oa$oama$ecm$starttask_detailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$starttask_detailController$startload(ctx){
   var taskid = ctx.params()["taskid"];//获取上一个ctx值
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action" : "getTaskDetailCopy",
		              "params" : {
    	                         "taskid" : taskid
                                 }
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
	$context.dispose();
//   UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{taskid:'"+taskid+"'},action:'getTaskDetailCopy'}");

}
function nc$bs$oa$oama$ecm$starttask_detailController$altertip(ctx){
	var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
		              "style" : "ok",
		              "isDataCollect" : "true",
		              "okbuttontitle" : "确定",
		              "message"  : "操作成功！"
	               };
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
	 _$sys.callAction('returnback');
	 $context.dispose();
}
function nc$bs$oa$oama$ecm$starttask_detailController$openUrgewin(ctx){
    var taskstate = ctx.get("taskstatecode");
	
    if(taskstate != null && taskstate == '7'){
       var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
		              "style" : "ok",
		              "isDataCollect" : "true",
		              "okbuttontitle" : "确定",
		              "message"  : "已完成的任务不可催办！"
	               };
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
    }else{
        var taskid = ctx.get("taskid");//获取当前ctx 值
        var serviceType = "UMView.open";
	    var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_urgewin",
		              "isDataCollect" : "true",
		              "taskid" : taskid,
		              "iskeep"  : "true"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
    $context.dispose();
    }
}
function nc$bs$oa$oama$ecm$starttask_detailController$beforeedittask(ctx){
    var taskstate = ctx.get("taskstatecode");
	
    if(taskstate != null && taskstate == '7'){
       var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
		              "style" : "ok",
		              "isDataCollect" : "true",
		              "okbuttontitle" : "确定",
		              "message"  : "已完成的任务不可编辑！"
	               };
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
    }else{
         _$sys.callAction('edittask');
    $context.dispose();
    }
}
function nc$bs$oa$oama$ecm$starttask_detailController$canceljs(ctx){
    var taskstate = ctx.get("taskstatecode");
	
    if(taskstate != null && taskstate == '7'){
       var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
		              "style" : "ok",
		              "isDataCollect" : "true",
		              "okbuttontitle" : "确定",
		              "message"  : "已完成的任务不可取消！"
	               };
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
    }else{
           _$sys.callAction('canceldialog');
    $context.dispose();
    }
}
function nc$bs$oa$oama$ecm$starttask_detailController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$starttask_detailController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$starttask_detailController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$starttask_detailController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$starttask_detailController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
nc.bs.oa.oama.ecm.starttask_detailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$starttask_detailController$initialize,
    startload : nc$bs$oa$oama$ecm$starttask_detailController$startload,
    openUrgewin : nc$bs$oa$oama$ecm$starttask_detailController$openUrgewin,
    UMonInit : nc$bs$oa$oama$ecm$starttask_detailController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$starttask_detailController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$starttask_detailController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$starttask_detailController$UMonComplete,
    altertip : nc$bs$oa$oama$ecm$starttask_detailController$altertip,
    UMonDataBinding : nc$bs$oa$oama$ecm$starttask_detailController$UMonDataBinding,
    beforeedittask : nc$bs$oa$oama$ecm$starttask_detailController$beforeedittask,
    canceljs : nc$bs$oa$oama$ecm$starttask_detailController$canceljs
};
nc.bs.oa.oama.ecm.starttask_detailController.registerClass('nc.bs.oa.oama.ecm.starttask_detailController');
