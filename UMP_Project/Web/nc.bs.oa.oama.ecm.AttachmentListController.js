Type.registerNamespace('nc.bs.oa.oama.ecm.AttachmentListController');
nc.bs.oa.oama.ecm.AttachmentListController = function() {}

function nc$bs$oa$oama$ecm$AttachmentListController$onDataLoad(ctx){
	var attachment = stringToJSON(ctx.params()["attachment"]) || [];
	ctx.load({"attachment": attachment});
	
	if (attachment.length <= 0) {
		hide("listView");
		show("nullPanel");
	} else {
		hide("nullPanel");
		show("listView");
	}
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id){
	$controls.set(id, "display", "none");
}

function nc$bs$oa$oama$ecm$AttachmentListController$initialize(ctx){}
function nc$bs$oa$oama$ecm$AttachmentListController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$AttachmentListController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$AttachmentListController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$AttachmentListController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$AttachmentListController$UMonDataBinding(ctx){}

nc.bs.oa.oama.ecm.AttachmentListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$AttachmentListController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$AttachmentListController$onDataLoad,
    onDataLoad : nc$bs$oa$oama$ecm$AttachmentListController$onDataLoad,
    UMonInit : nc$bs$oa$oama$ecm$AttachmentListController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$AttachmentListController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$AttachmentListController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$AttachmentListController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$AttachmentListController$UMonDataBinding
};
nc.bs.oa.oama.ecm.AttachmentListController.registerClass('nc.bs.oa.oama.ecm.AttachmentListController');
