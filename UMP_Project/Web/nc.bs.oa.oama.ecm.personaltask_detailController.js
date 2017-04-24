Type.registerNamespace('nc.bs.oa.oama.ecm.personaltask_detailController');
nc.bs.oa.oama.ecm.personaltask_detailController = function() {

}
function nc$bs$oa$oama$ecm$personaltask_detailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$personaltask_detailController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_detailController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_detailController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_detailController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_detailController$detailOnload(ctx){
    var personaltaskdetail = ctx.params()["abc"];
	
	var params = {
		"personaltaskdetail" : personaltaskdetail
	};
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "isDataCollect" : "true",
		              "action"  : "getPersonalTaskDetail",
		              "params" :  params
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);    
//    UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.ListviewController',isDataCollect:'true',params:{personaltaskdetail:'"+param+"'},action:'getPersonalTaskDetail'}");
    
}
function nc$bs$oa$oama$ecm$personaltask_detailController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptipforall(ctx){
   //不可用	var taskid = ctx.entity().get("taskid");
  // var taskid = $context.get("taskid");
  // var aaa = ctx.params();
  // alert($jsonToString(aaa));
	
    var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_mainviewpsn",
		              "isDataCollect" : "true",
		              "iskeep" : "false"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);    
//    UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.ListviewController',isDataCollect:'true',params:{personaltaskdetail:'"+param+"'},action:'getPersonalTaskDetail'}");
   
//    UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Mainview',isDataCollect:'true'}");
}
function nc$bs$oa$oama$ecm$personaltask_detailController$checkscheduletip(ctx){
	var result = stringToJSON(ctx.get("result"));
	var flag =  result["flag"];
	if(flag == 0){
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
	   $context.dispose();
		 
	}else if(flag == 2){
		var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
          	"style" : "ok",
          	"isDataCollect" : "true",
          	"okbuttontitle" : "确定",
          	"message"  : "该任务已不存在,请刷新数据后重试！"
       	};
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
	   $context.dispose();
	}else{
		 var serviceType = "UMView.openDialog";
	      var serviceparams = {
			"title" : "提示",
		              "style" : "ok-cancel",
		              "isDataCollect":"true",
		              "okbuttontitle":"确定",
		              "cancelbuttontitle":"取消",
		              "okaction":"addschedule",
		              "cancelaction" : "",
		              "message":"您选择的任务在日程已存在！是否继续添加?"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams); 
    $context.dispose();
	}
}
function nc$bs$oa$oama$ecm$personaltask_detailController$addschedule(ctx){
	var taskid = ctx.get("taskid");
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "isDataCollect" : "true",
		              "action"  : "addSchedule",
		              "taskid" :  taskid,
		              "callback" : "poptip",
		              "contextmapping" : "result"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);  
	$context.dispose();
}
function nc$bs$oa$oama$ecm$personaltask_detailController$completetasktip(ctx){
	ctx.set("taskcode","7");
	ctx.set("taskstate","已完成");
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
	//$context.dispose();
}
function nc$bs$oa$oama$ecm$personaltask_detailController$beforeEdit(ctx){
 	_$sys.callAction('editpersonaltask');//2015-12-03 v65 保持与pc端一致
	/*var taskcode = ctx.get("taskcode");
	if(taskcode == 7){
		var serviceType = "UMView.openDialog";
	   var serviceparams = {
			"title" : "提示",
			"style" : "ok",
			"isDataCollect" : "true",
			"okbuttontitle" : "确定",
			"message"  : "已完成的任务不能编辑！"
		};
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
	}else{
		 _$sys.callAction('editpersonaltask');
	}*/
}
function nc$bs$oa$oama$ecm$personaltask_detailController$completeError(ctx){
	alert("操作失败,请稍后重试！");
}
function nc$bs$oa$oama$ecm$personaltask_detailController$delError(ctx){
	alert("操作失败,请稍后重试！");
}
nc.bs.oa.oama.ecm.personaltask_detailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$personaltask_detailController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$personaltask_detailController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$personaltask_detailController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$personaltask_detailController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$personaltask_detailController$UMonComplete,
    detailOnload : nc$bs$oa$oama$ecm$personaltask_detailController$detailOnload,
     poptipforall : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptipforall,
     checkscheduletip: nc$bs$oa$oama$ecm$personaltask_detailController$checkscheduletip,
     addschedule: nc$bs$oa$oama$ecm$personaltask_detailController$addschedule,
     completetasktip : nc$bs$oa$oama$ecm$personaltask_detailController$completetasktip,
    UMonDataBinding : nc$bs$oa$oama$ecm$personaltask_detailController$UMonDataBinding,
    completeError : nc$bs$oa$oama$ecm$personaltask_detailController$completeError,
    delError : nc$bs$oa$oama$ecm$personaltask_detailController$delError,
    beforeEdit : nc$bs$oa$oama$ecm$personaltask_detailController$beforeEdit
};
nc.bs.oa.oama.ecm.personaltask_detailController.registerClass('nc.bs.oa.oama.ecm.personaltask_detailController');
