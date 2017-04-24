Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchPGController');
nc.bs.oa.oama.ecm.EcmSearchPGController = function() {}
var count = 0;
function nc$bs$oa$oama$ecm$EcmSearchPGController$beforeLoad(ctx){
	ctx.dispose();
	updateSelected();
	
	_$sys.callAction('loadData');
}
function nc$bs$oa$oama$ecm$EcmSearchPGController$loadError(ctx){
	var param = ctx.params();
	var errorMsg = param["err_msg"];
	if(errorMsg == "nc.bs.oa.oama.ecm.PersonController"){
		var args = {
		"viewid":"nc.bs.oa.oama.freeflow.PersonController",
		"action":"psnGroup",
		"autoDataBinding":"true"
		};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$EcmSearchPGController$onItemClick(ctx){
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
		"action" : "psnList",
		"upperid" : upperid,
		"uppername" : uppername,
		"callback" : "selectedCallback"
	};
	$service.callService("UMView.open", jsonToString(params), true);
}
function nc$bs$oa$oama$ecm$EcmSearchPGController$selectedCallback(ctx){
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

function nc$bs$oa$oama$ecm$EcmSearchPGController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchPGController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchPGController$initialize,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchPGController$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchPGController$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchPGController$beforeLoad,
    loadError : nc$bs$oa$oama$ecm$EcmSearchPGController$loadError
};
nc.bs.oa.oama.ecm.EcmSearchPGController.registerClass('nc.bs.oa.oama.ecm.EcmSearchPGController');
