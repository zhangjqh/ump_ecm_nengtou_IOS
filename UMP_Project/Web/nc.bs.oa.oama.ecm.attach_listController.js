Type.registerNamespace('nc.bs.oa.oama.ecm.attach_listController');
nc.bs.oa.oama.ecm.attach_listController = function() {

}
function nc$bs$oa$oama$ecm$attach_listController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$attach_listController$toOpenAttach(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var fileid = row["fileid"];
	var filename = row["filename"];
	var filetype = row["filletype"];
	var filesize = row["filesize"];
	var downflag = row["downflag"];
	var startposition = "0";
	var endposition = "1000000";
	
	//$file.downloadFile(fileid, filename, filetype, filesize, downflag, startposition, endposition);	
	var args = {};
	args["fileid"]=fileid;//args.put("fileid","0001A11000000000ZEYD"); 文件ID
	args["filepath"]=fileid;//args.put("filepath","abc"); 文件名称
	args["filename"]=filename;//args.put("filename","abc"); 文件名称
	args["filetype"]=filetype;//args.put("filetype","doc"); 文件类型	
	args["filesize"]=filesize;//args.put("filesize"] = args.put("filesize","300"); 文件大小
	args["downflag"]=downflag;//args.put("downflag","false"); 是否断点续传
	args["startposition"]=startposition;//args.put("startposition","false"); 断点续传时开始位置
	args["endposition"]=endposition;//args.put("endposition","false"); 断点续传时结束位置
   	var strArgs = $jsonToString(args);
	return $service.call("UMService.downloadFile", strArgs); 
	
}
function nc$bs$oa$oama$ecm$attach_listController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_listController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_listController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_listController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$attach_listController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
nc.bs.oa.oama.ecm.attach_listController.prototype = {
    initialize : nc$bs$oa$oama$ecm$attach_listController$initialize,
    toOpenAttach : nc$bs$oa$oama$ecm$attach_listController$toOpenAttach,
    UMonInit : nc$bs$oa$oama$ecm$attach_listController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$attach_listController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$attach_listController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$attach_listController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$attach_listController$UMonDataBinding
};
nc.bs.oa.oama.ecm.attach_listController.registerClass('nc.bs.oa.oama.ecm.attach_listController');
