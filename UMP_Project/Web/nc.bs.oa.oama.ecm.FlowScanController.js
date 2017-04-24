Type.registerNamespace('nc.bs.oa.oama.ecm.FlowScanController');
nc.bs.oa.oama.ecm.FlowScanController = function() {}

function nc$bs$oa$oama$ecm$FlowScanController$onDataLoad(ctx){
	var flowedit = stringToJSON(ctx.params()["flowedit"]);
	var editable = ctx.params()["editable"];
	var notice = stringToJSON(ctx.params()["notice"]);
	
	for (var i=0; i<flowedit.length; i++) {
		var step = flowedit[i];
		var active = step["active"];
		var rule = step["rule"];
		step["rulename"] = getRuleName(active, rule);
	}
	
	ctx.load({"flowedit" : flowedit});
	ctx.load({"editable" : editable});
	ctx.load({"notice" : notice});
	
	if (flowedit.length <= 0) {
		hide("listView");
		show("nullPanel");
	} else {
		hide("nullPanel");
		show("listView");
	}
}
function getRuleName(active, rule) {
	var activeName = {
		"2" : $res.getResString("flow_deliver")
	};
	var ruleName = {
		"1" : $res.getResString("flow_countersign"),
		"2" : $res.getResString("flow_seize")
	};

	return activeName[active] || (ruleName[rule] || "");
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id){
	$controls.set(id, "display", "none");
}

function nc$bs$oa$oama$ecm$FlowScanController$initialize(ctx){}
function nc$bs$oa$oama$ecm$FlowScanController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$FlowScanController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$FlowScanController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$FlowScanController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$FlowScanController$UMonDataBinding(ctx){}

nc.bs.oa.oama.ecm.FlowScanController.prototype = {
    initialize : nc$bs$oa$oama$ecm$FlowScanController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$FlowScanController$onDataLoad,
    UMonInit : nc$bs$oa$oama$ecm$FlowScanController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$FlowScanController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$FlowScanController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$FlowScanController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$FlowScanController$UMonDataBinding
};
nc.bs.oa.oama.ecm.FlowScanController.registerClass('nc.bs.oa.oama.ecm.FlowScanController');
