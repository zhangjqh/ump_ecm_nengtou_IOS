Type.registerNamespace('nc.bs.oa.oama.ecm.StepScanController');
nc.bs.oa.oama.ecm.StepScanController = function() {}

function nc$bs$oa$oama$ecm$StepScanController$onDataLoad(ctx){
	var editstep = stringToJSON(ctx.params()["editstep"]);
	
	var steps = editstep["steps"].length;
	if (steps > 1){ // 两个人或者更多时
		$controls.set("spaceOutPanel1", "visible", "true");	// 显示规则
		$controls.set("rulePanel", "visible", "true");	// 显示规则
	}
		
	ctx.load({"editstep" : editstep});
}

function nc$bs$oa$oama$ecm$StepScanController$initialize(ctx){}

nc.bs.oa.oama.ecm.StepScanController.prototype = {
    initialize : nc$bs$oa$oama$ecm$StepScanController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$StepScanController$onDataLoad
};
nc.bs.oa.oama.ecm.StepScanController.registerClass('nc.bs.oa.oama.ecm.StepScanController');
