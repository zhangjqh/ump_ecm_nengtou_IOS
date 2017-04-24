Type.registerNamespace('nc.bs.oa.oama.ecm.Msg_AttachmentListController');
nc.bs.oa.oama.ecm.Msg_AttachmentListController = function() {

}
function nc$bs$oa$oama$ecm$Msg_AttachmentListController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}

function nc$bs$oa$oama$ecm$Msg_AttachmentListController$OnLoadData(ctx){
	
	var attachment = stringToJSON(ctx.params()["attachment"]) || [];
	ctx.load({"attachmentlist": attachment});	
	updateVisible(attachment);
}
function nc$bs$oa$oama$ecm$Msg_AttachmentListController$onItemClick(ctx){
    ctx.dispose();
	var row = stringToJSON(ctx.params()["row"]);
	if (row["id"]){
		// 从服务器打开
		var params = {
			"modulename" : "oaco",
			"fileid" : row["id"],
			"filesize" : row["size"],
			"filename" : row["name"],
			"filetype" : row["type"],
			"downloadpath" : row["id"],
			"downflag" : "1",
			"startposition" : "0",
			"endposition" : "0"
		};
		$service.callService("UMService.downloadFile", jsonToString(params));
	} else {
		// 打开本地
		var params = {
			"filename" : row["name"],
			"filetype" : row["type"],
			"filepath" : row["filepath"]
		};
		$service.callService("UMDevice.openFile", jsonToString(params));
	}

}
function nc$bs$oa$oama$ecm$Msg_AttachmentListController$addCallback(ctx){	
   var uploadfile = ctx.unload()["UploadFile"];
	if (!uploadfile){
		return;
	}
	var attachlist = ctx.unload()["attachmentlist"] || [];
	var attachment = {
		"index" : (attachlist.length + 1),
		"name" : uploadfile["name"],
		"type" : uploadfile["type"],
		"size" : uploadfile["size"],
		"sizeshow" : uploadfile["sizeshow"],
		"filepath" : uploadfile["filepath"]
	};
	attachlist.push(attachment);
	ctx.load({"attachmentlist" : attachlist});
	updateVisible(attachlist);
}
function nc$bs$oa$oama$ecm$Msg_AttachmentListController$deleteCallback(ctx){
    var resultvalue = ctx.unload()["ResultValue"];
	var attachlist = ctx.unload()["attachmentlist"] || [];
	if (!resultvalue || !attachlist){
		return;
	}
	var delIndex = resultvalue["des"];
	attachlist.splice(delIndex, 1);
	for (var i=delIndex; i<attachlist.length; i++){
		var attach = attachlist[i];
		var index = parseInt(attach["index"]);
		attach["index"] = (index - 1) + "";
	}
	ctx.load({"attachmentlist" : attachlist});
	
	updateVisible(attachlist);
}
function updateVisible(attachlist){
	if (attachlist.length <= 0) {
		hide("listView");
		show("nullPanel");
		show("addBtn");
	} else {
		hide("nullPanel");
		show("listView");
	}
}
function set(id, attr, value){
	$controls.set(id, attr, value);
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id, isHolder){
	if(isHolder){
		$controls.set(id, "visible", "false");
	}else{
		$controls.set(id, "display", "none");
	}
}
nc.bs.oa.oama.ecm.Msg_AttachmentListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Msg_AttachmentListController$initialize,
    OnLoadData : nc$bs$oa$oama$ecm$Msg_AttachmentListController$OnLoadData,
    onItemClick : nc$bs$oa$oama$ecm$Msg_AttachmentListController$onItemClick,
    addCallback : nc$bs$oa$oama$ecm$Msg_AttachmentListController$addCallback,
    deleteCallback : nc$bs$oa$oama$ecm$Msg_AttachmentListController$deleteCallback
};
nc.bs.oa.oama.ecm.Msg_AttachmentListController.registerClass('nc.bs.oa.oama.ecm.Msg_AttachmentListController');
