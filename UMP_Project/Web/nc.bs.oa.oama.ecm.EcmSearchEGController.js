Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchEGController');
nc.bs.oa.oama.ecm.EcmSearchEGController = function() {}
function nc$bs$oa$oama$ecm$EcmSearchEGController$beforeLoad(ctx){
	ctx.dispose();
	updateSelected();
	
	_$sys.callAction('loadData');
}
function nc$bs$oa$oama$ecm$EcmSearchEGController$loadError(ctx){
	var param = ctx.params();
	var errorMsg = param["err_msg"];
	if(errorMsg == "nc.bs.oa.oama.ecm.PersonController"){
		var args = {
		"viewid":"nc.bs.oa.oama.freeflow.PersonController",
		"action":"entGroup",
		"autoDataBinding":"true"
		};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$EcmSearchEGController$onItemClick(ctx){
	ctx.dispose();
	
	var rowindex = parseInt(ctx.params()["rowindex"]);
	var list = ctx.unload()["list"];
	var row = list[rowindex];
	var rownum = row["num"];
	
	if (!rownum || !parseInt(rownum)){
		return; // num为空或为0则不跳转，直接返回
	}
	var upperid = row["id"];
	var uppername = row["name"];
	var params = {
		"iskeep" : "true",
		"viewid" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
		"action" : "entList",
		"upperid" : upperid,
		"uppername" : uppername,
		"callback" : "selectedCallback"
	};
	$service.callService("UMView.open", jsonToString(params), true);
}
function nc$bs$oa$oama$ecm$EcmSearchEGController$selectedCallback(ctx){
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

function nc$bs$oa$oama$ecm$EcmSearchEGController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchEGController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchEGController$initialize,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchEGController$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchEGController$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchEGController$beforeLoad,
    loadError : nc$bs$oa$oama$ecm$EcmSearchEGController$loadError
};
nc.bs.oa.oama.ecm.EcmSearchEGController.registerClass('nc.bs.oa.oama.ecm.EcmSearchEGController');
