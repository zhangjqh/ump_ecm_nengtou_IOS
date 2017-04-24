Type.registerNamespace('nc.bs.oa.oama.ecm.task_detailController');
nc.bs.oa.oama.ecm.task_detailController = function() {

}
function nc$bs$oa$oama$ecm$task_detailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$task_detailController$poptip(ctx){
   alert("操作成功！");
   $context.dispose();

}
function nc$bs$oa$oama$ecm$task_detailController$taskonload(ctx){
   var btnvalue = ctx.params()["btnvalue"];
      var taskid = ctx.params()["taskdetail"];
      
      var urge = $stringToJSON(taskid)["urge"];
      if(urge != null && urge != ""){
      	UM_NativeCall.callService("UMJS.setProperty","{id:'rounddiv20',visible:'true'}");
      }
   if(btnvalue != null){
   	  if(btnvalue == '3'){ //负责按钮3
   	  	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'主办任务'}");
   	  	//UM_NativeCall.callService("UMJS.setProperty","{id:'title',text:'输入拒绝信息'}");
   	  }else if(btnvalue == '2'){ //协办按钮 2
   	  	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'协办任务'}");
   	  	//UM_NativeCall.callService("UMJS.setProperty","{id:'label0',margin-left:'85'}");
   	  	UM_NativeCall.callService("UMJS.setProperty","{id:'button2',visible:'false'}");
   	  	
   	  	UM_NativeCall.callService("UMJS.setProperty","{id:'rounddiv4',display:'none'}");
   	  	
   	  }else{ // 关注按钮1
   	  	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'关注任务'}");
   	  	//UM_NativeCall.callService("UMJS.setProperty","{id:'label0',margin-left:'85'}");
   	  	//UM_NativeCall.callService("UMJS.setProperty","{id:'toolbar0',visible:'false'}");
   	  	
   	   UM_NativeCall.callService("UMJS.setProperty","{id:'rounddiv4',display:'none'}");
   	   UM_NativeCall.callService("UMJS.setProperty","{id:'toolbar0',display:'none'}");
   	   
   	   UM_NativeCall.callService("UMJS.setProperty","{id:'rounddiv20',display:'none'}");
   	  }
   }

   var params = {
   	 "taskdetail" : taskid,
   	 "btnvalue" : btnvalue
   };
    var serviceType = "UMService.callAction";
	var serviceparams = {
		"viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		"isDataCollect":"true",
		"action" : "getTaskDetail",
		"params" : $jsonToString(params)
	};
	var serviceparams = $jsonToString(serviceparams);
	UM_NativeCall.callService(serviceType, serviceparams); 
   
//   UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{taskdetail:'"+taskid+"',btnvalue:'"+btnvalue+"'},action:'getTaskDetail'}");

}
function nc$bs$oa$oama$ecm$task_detailController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$task_detailController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$task_detailController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$task_detailController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$task_detailController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$task_detailController$addschedule(ctx){
	var taskid = ctx.get("taskid");
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "isDataCollect" : "true",
		              "action"  : "addSchedule",
		              "taskid" :  taskid,
		              "callback" : "returntip",
		              "contextmapping" : "result"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);  
	$context.dispose();
}
function nc$bs$oa$oama$ecm$task_detailController$checkscheduletip(ctx){
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

nc.bs.oa.oama.ecm.task_detailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$task_detailController$initialize,
    poptip : nc$bs$oa$oama$ecm$task_detailController$poptip,
    taskonload : nc$bs$oa$oama$ecm$task_detailController$taskonload,
    addschedule : nc$bs$oa$oama$ecm$task_detailController$addschedule,
    checkscheduletip : nc$bs$oa$oama$ecm$task_detailController$checkscheduletip,
    UMonInit : nc$bs$oa$oama$ecm$task_detailController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$task_detailController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$task_detailController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$task_detailController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$task_detailController$UMonDataBinding
};
nc.bs.oa.oama.ecm.task_detailController.registerClass('nc.bs.oa.oama.ecm.task_detailController');
