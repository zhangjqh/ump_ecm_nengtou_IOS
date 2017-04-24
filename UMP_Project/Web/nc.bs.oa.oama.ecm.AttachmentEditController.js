Type.registerNamespace('nc.bs.oa.oama.ecm.AttachmentEditController');
nc.bs.oa.oama.ecm.AttachmentEditController = function() {}

function nc$bs$oa$oama$ecm$AttachmentEditController$onDataLoad(ctx){
	var attachment = stringToJSON(ctx.params()["attachment"]) || [];
	ctx.load({"attachment": attachment});
	
	updateVisible(attachment);
}
function nc$bs$oa$oama$ecm$AttachmentEditController$onItemClick(ctx){
	ctx.dispose();
	var row = stringToJSON(ctx.params()["row"]);
	if (row["id"]){
		// 从服务器打开
		var params = {
			"modulename" : "oapp",
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
function nc$bs$oa$oama$ecm$AttachmentEditController$addCallback(ctx){
	var uploadfile = ctx.unload()["UploadFile"];
	if (!uploadfile){
		return;
	}
	var attachlist = ctx.unload()["attachment"] || [];
	
	var attachment = {
		"index" : (attachlist.length + 1),
		"name" : uploadfile["name"],
		"type" : uploadfile["type"],
		"size" : uploadfile["size"],
		"sizeshow" : uploadfile["sizeshow"],
		"filepath" : uploadfile["filepath"]
	};
	attachlist.push(attachment);
	ctx.load({"attachment" : attachlist});
	
	updateVisible(attachlist);
}
function nc$bs$oa$oama$ecm$AttachmentEditController$deleteCallback(ctx){
	var resultvalue = ctx.unload()["ResultValue"];
	var attachlist = ctx.unload()["attachment"] || [];
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
	ctx.load({"attachment" : attachlist});
	
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

function nc$bs$oa$oama$ecm$AttachmentEditController$initialize(ctx){}

nc.bs.oa.oama.ecm.AttachmentEditController.prototype = {
    initialize : nc$bs$oa$oama$ecm$AttachmentEditController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$AttachmentEditController$onDataLoad,
    onItemClick : nc$bs$oa$oama$ecm$AttachmentEditController$onItemClick,
    addCallback : nc$bs$oa$oama$ecm$AttachmentEditController$addCallback,
    deleteCallback : nc$bs$oa$oama$ecm$AttachmentEditController$deleteCallback
};
nc.bs.oa.oama.ecm.AttachmentEditController.registerClass('nc.bs.oa.oama.ecm.AttachmentEditController');
