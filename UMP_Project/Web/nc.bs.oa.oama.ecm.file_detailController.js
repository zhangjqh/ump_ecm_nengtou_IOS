Type.registerNamespace('nc.bs.oa.oama.ecm.file_detailController');
nc.bs.oa.oama.ecm.file_detailController = function() {

}
function nc$bs$oa$oama$ecm$file_detailController$initialize(ctx) {
	//your logic code below...
	//demo code : var companyEnity = ctx.entity();
	//demo code : var departmentEntity = companyEnity.field("depts");
	//demo code : var employeeEntity = departmentEntity.get("empls");
	//demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
	//demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
	//demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
	//yon can attach event on the entity object...

}

function nc$bs$oa$oama$ecm$file_detailController$UMonInit(ctx) {
	//your logic code below...
	//you can get the current context by $context or the parameter[ctx]
	//demo code : $context.get("a")
	//demo code : $context.get("cust").get("ca")
	//demo code : $context.get("lines").get(0,"la")
	//demo code : $context.get("lines").get(0,"details").get(0,"da")

}

function nc$bs$oa$oama$ecm$file_detailController$UMonLoad(ctx) {
	//your logic code below...
	//you can get the current context by $context or the parameter[ctx]
	//demo code : $context.get("a")
	//demo code : $context.get("cust").get("ca")
	//demo code : $context.get("lines").get(0,"la")
	//demo code : $context.get("lines").get(0,"details").get(0,"da")

}

function nc$bs$oa$oama$ecm$file_detailController$UMonUnload(ctx) {
	//your logic code below...
	//you can get the current context by $context or the parameter[ctx]
	//demo code : $context.get("a")
	//demo code : $context.get("cust").get("ca")
	//demo code : $context.get("lines").get(0,"la")
	//demo code : $context.get("lines").get(0,"details").get(0,"da")

}

function nc$bs$oa$oama$ecm$file_detailController$fileonload(ctx) {
	var ctxJson = ctx.params();
	var attrow = ctxJson["row"];
	if(attrow != 'undefined' && attrow != null){
		var attrowJson = stringToJSON(attrow);
		var attlist = attrowJson["attachmentlist"];
		$context.set("attachment",attlist);
	}else{
	var taskid = ctx.params()["taskid"];
	var type = ctx.params()["type"];
	
	var serviceType = "UMService.callAction";
	var params = {
		"taskid" : taskid,
		"type" : type
	};
	var serviceParams = {
		"viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		"isDataCollect" : "true",
		"action" : "getAttachmentList",
		"params" : $jsonToString(params),
	};
	UM_NativeCall.callService(serviceType,$jsonToString(serviceParams));		
	}

//	UM_NativeCall.callService("UMService.callAction", "{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',params:{taskid:'" + taskid + "', type : '" + type + "'},action:'getAttachmentList'}");
}

function nc$bs$oa$oama$ecm$file_detailController$UMonComplete(ctx) {
	//your logic code below...
	//you can get the current context by $context or the parameter[ctx]
	//demo code : $context.get("a")
	//demo code : $context.get("cust").get("ca")
	//demo code : $context.get("lines").get(0,"la")
	//demo code : $context.get("lines").get(0,"details").get(0,"da")

}

function nc$bs$oa$oama$ecm$file_detailController$UMonDataBinding(ctx) {
	//your logic code below...
	//you can get the current context by $context or the parameter[ctx]
	//demo code : $context.get("a")
	//demo code : $context.get("cust").get("ca")
	//demo code : $context.get("lines").get(0,"la")
	//demo code : $context.get("lines").get(0,"details").get(0,"da")

}

function nc$bs$oa$oama$ecm$file_detailController$delitem(ctx) {
	//alert(ctx.params()["rowindex"]);
}

function nc$bs$oa$oama$ecm$file_detailController$fileitem(ctx) {
	alert(jsonToString(ctx.params()));
	var uploadfile = ctx.params()["uploadfile"];
	
	
	var fileid = ctx["fileid"];
	var filepath = ctx["filepath"];

	var attlist = ctx.unload() || {
		"attachment" : []
	};
	attlist["attachment"].push({
		"fileid" : fileid,
		"filename" : filename
	});
	ctx.load(attlist);
	UM_NativeCall.callService("UMCtx.setUMContext", jsonToString(ctx.unload()), false);

}

nc.bs.oa.oama.ecm.file_detailController.prototype = {
	initialize : nc$bs$oa$oama$ecm$file_detailController$initialize,
	UMonInit : nc$bs$oa$oama$ecm$file_detailController$UMonInit,
	UMonLoad : nc$bs$oa$oama$ecm$file_detailController$UMonLoad,
	UMonUnload : nc$bs$oa$oama$ecm$file_detailController$UMonUnload,
	delitem : nc$bs$oa$oama$ecm$file_detailController$delitem,
	fileonload : nc$bs$oa$oama$ecm$file_detailController$fileonload,
	fileitem : nc$bs$oa$oama$ecm$file_detailController$fileitem,
	UMonComplete : nc$bs$oa$oama$ecm$file_detailController$UMonComplete,
	UMonDataBinding : nc$bs$oa$oama$ecm$file_detailController$UMonDataBinding
};
nc.bs.oa.oama.ecm.file_detailController.registerClass('nc.bs.oa.oama.ecm.file_detailController');
