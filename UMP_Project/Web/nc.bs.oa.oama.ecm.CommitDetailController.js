Type.registerNamespace('nc.bs.oa.oama.ecm.CommitDetailController');
nc.bs.oa.oama.ecm.CommitDetailController = function() {}

function nc$bs$oa$oama$ecm$CommitDetailController$onDataLoad(ctx){
	var actor = ctx["parameter"]["actor"];
	var commit = ctx["parameter"]["commit"];
	var title = $res.getResString("flow_annotationnull");
	
	if(actor){
		actor += " " + $res.getResString("flow_annotation");
	} else {
		actor = $res.getResString("flow_annotation");
	}
	if(!commit){
		commit = $res.getResString("flow_annotationnull");
	}
	$controls.set("navLabel", "value", actor);
	$controls.set("commitArea", "value", commit);
}

function nc$bs$oa$oama$ecm$CommitDetailController$initialize(ctx){}

nc.bs.oa.oama.ecm.CommitDetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$CommitDetailController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$CommitDetailController$onDataLoad
};
nc.bs.oa.oama.ecm.CommitDetailController.registerClass('nc.bs.oa.oama.ecm.CommitDetailController');
