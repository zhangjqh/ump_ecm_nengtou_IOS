Type.registerNamespace('nc.bs.oa.oama.ecm.FlowHistoryController');
nc.bs.oa.oama.ecm.FlowHistoryController = function() {}

function nc$bs$oa$oama$ecm$FlowHistoryController$onDataLoad(ctx){
	var title = ctx.params()["title"];
	var flowhistory = stringToJSON(ctx.params()["flowhistory"]);
	ctx.load({
		"title" : title,
		"flowhistory" : flowhistory
	});
	
	var transactors = flowhistory["transactor"];
	if (transactors.length <= 0) {
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
function nc$bs$oa$oama$ecm$FlowHistoryController$initialize(ctx){}

nc.bs.oa.oama.ecm.FlowHistoryController.prototype = {
    initialize : nc$bs$oa$oama$ecm$FlowHistoryController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$FlowHistoryController$onDataLoad
};
nc.bs.oa.oama.ecm.FlowHistoryController.registerClass('nc.bs.oa.oama.ecm.FlowHistoryController');
