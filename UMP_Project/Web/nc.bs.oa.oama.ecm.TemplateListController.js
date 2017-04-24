Type.registerNamespace('nc.bs.oa.oama.ecm.TemplateListController');
nc.bs.oa.oama.ecm.TemplateListController = function() {}

function nc$bs$oa$oama$ecm$TemplateListController$loadCallback(ctx){
	var templates = ctx.unload()["templates"] || [];
	var outofrange = ctx.unload()["outofrange"] || "N";
	
	if (templates.length > 0) {
		hide("nullPanel");
		show("listView");
	}
	
	if ("Y" == outofrange) {
		show("rangePanel");
		show("spaceOutPanel1");
	}
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id){
	$controls.set(id, "display", "none");
}

function nc$bs$oa$oama$ecm$TemplateListController$initialize(ctx){}

nc.bs.oa.oama.ecm.TemplateListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$TemplateListController$initialize,
    loadCallback : nc$bs$oa$oama$ecm$TemplateListController$loadCallback
};
nc.bs.oa.oama.ecm.TemplateListController.registerClass('nc.bs.oa.oama.ecm.TemplateListController');
