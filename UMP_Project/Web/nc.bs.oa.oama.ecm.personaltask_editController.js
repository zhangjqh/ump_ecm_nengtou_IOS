Type.registerNamespace('nc.bs.oa.oama.ecm.personaltask_editController');
nc.bs.oa.oama.ecm.personaltask_editController = function() {

}
function nc$bs$oa$oama$ecm$personaltask_editController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$personaltask_editController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_editController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_editController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_editController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_editController$poptipforall(ctx){

  	var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_mainviewpsn",
		              "iskeep" : "false",
		              "isDataCollect" : "true"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);  
//    UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.oatask.Mainview',isDataCollect:'true'}");

}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$dataonload(ctx){
   	var param = stringToJSON(ctx.params()["dada"]);
    if(!param){
    	param = "" ;
    }
    
    var params = {
    	"personaltaskdetail" : param
    };
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "isDataCollect" : "true",
		              "action" : "dataOnload",
		              "params" : $jsonToString(params)
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
//    UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.ListviewController',isDataCollect:'true',params:{personaltaskdetail:'"+param+"'},action:'dataOnload'}");

}

function nc$bs$oa$oama$ecm$personaltask_editController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$personaltask_editController$saveError(ctx){
    var param = ctx.params();
    var err_msg = param["err_msg"];
    if(err_msg){
        alert(err_msg);
    }else{
        alert("操作失败,请稍后重试！");
    }
}
function nc$bs$oa$oama$ecm$personaltask_editController$attchreturn(ctx){
	//alert(jsonToString(ctx.params()));
	var filelist = ctx.params()["allrow"];
	var count = 0;
	if(filelist){
		filelist = stringToJSON(filelist);
		count = filelist.length;
	}
	
    ctx.load({"count":count});
}
nc.bs.oa.oama.ecm.personaltask_editController.prototype = {
    initialize : nc$bs$oa$oama$ecm$personaltask_editController$initialize,
   attchreturn : nc$bs$oa$oama$ecm$personaltask_editController$attchreturn,
    UMonInit : nc$bs$oa$oama$ecm$personaltask_editController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$personaltask_editController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$personaltask_editController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$personaltask_editController$UMonComplete,
    dataonload : nc$bs$oa$oama$ecm$personaltask_editControllerBase$dataonload,
    poptipforall : nc$bs$oa$oama$ecm$personaltask_editController$poptipforall,
    UMonDataBinding : nc$bs$oa$oama$ecm$personaltask_editController$UMonDataBinding,
    saveError : nc$bs$oa$oama$ecm$personaltask_editController$saveError
};
nc.bs.oa.oama.ecm.personaltask_editController.registerClass('nc.bs.oa.oama.ecm.personaltask_editController');
