Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchOrgController');
nc.bs.oa.oama.ecm.EcmSearchOrgController = function() {}
var count = 0;
function nc$bs$oa$oama$ecm$EcmSearchOrgController$beforeLoad(ctx){
	ctx.dispose();
	updateSelected();
	
	_$sys.callAction('loadData');
}
function nc$bs$oa$oama$ecm$EcmSearchOrgController$loadError(ctx){
	_$sys.callAction('loadDataFive');
}
function nc$bs$oa$oama$ecm$EcmSearchOrgController$nextDataError(ctx){
	_$sys.callAction('nextDataFive');
}
function nc$bs$oa$oama$ecm$EcmSearchOrgController$onItemClick(ctx){
	ctx.dispose();
	var viewMap = {
		"ORG" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
		"EMP" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
	};
	var actionMap = {
		"ORG" : "orgList",
		"EMP" : "empList",
	};
	
	var rowindex = parseInt(ctx.params()["rowindex"]);
	var list = ctx.unload()["list"];
	var row = list[rowindex];
	var rowtype = row["type"];
	var rownum = row["num"];
	
	if (!rownum || !parseInt(rownum)){
		return; // num为空或为0则不跳转，直接返回
	}
	var upperid = row["id"];
	var uppername = row["name"];
	var params = {
		"iskeep" : "true",
		"viewid" : viewMap[rowtype],
		"action" : actionMap[rowtype],
		"upperid" : upperid,
		"uppername" : uppername,
		"callback" : "selectedCallback"
	};
	$service.callService("UMView.open", jsonToString(params), true);
}
function nc$bs$oa$oama$ecm$EcmSearchOrgController$selectedCallback(ctx){
	var returnType = ctx.params()["returntype"];
	if("close" == returnType){
		ctx.dispose();
		_$sys.callAction('onReturnBtnClick');
		return;
	}
	
	updateSelected();
}
function updateSelected(){
	length = (getCache() || []).length;
	$controls.set("numLabel", "text", $res.getResString("flow_selected") + "(" + length + ")");
}
function getCache(){
	return eval($cache.readFile("ECMPERSONSELECTED")) || [];
}

function nc$bs$oa$oama$ecm$EcmSearchOrgController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchOrgController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchOrgController$initialize,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchOrgController$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchOrgController$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchOrgController$beforeLoad,
    loadError : nc$bs$oa$oama$ecm$EcmSearchOrgController$loadError,
    nextDataError : nc$bs$oa$oama$ecm$EcmSearchOrgController$nextDataError
};
nc.bs.oa.oama.ecm.EcmSearchOrgController.registerClass('nc.bs.oa.oama.ecm.EcmSearchOrgController');
