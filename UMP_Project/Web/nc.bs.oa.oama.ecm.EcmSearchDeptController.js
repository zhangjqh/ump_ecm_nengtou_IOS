Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchDeptController');
nc.bs.oa.oama.ecm.EcmSearchDeptController = function() {}

function nc$bs$oa$oama$ecm$EcmSearchDeptController$beforeLoad(ctx){
	updateSelected(ctx);
    _$sys.callAction('loadData');
}
function nc$bs$oa$oama$ecm$EcmSearchDeptController$catcherror(ctx){
	var param = ctx.params();
	var errorMsg = param["err_msg"];
	if(errorMsg == "nc.bs.oa.oama.ecm.PersonController"){
		var args = {
		"viewid":"nc.bs.oa.oama.freeflow.PersonController",
		"action":"list",
		"callback":"loadCallback", 
		"autoDataBinding":"false"
		};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$EcmSearchDeptController$loadCallback(ctx){
	var selectedMap = getSeletedMap();
	
	var list = ctx.unload()["list"] || [];
	for(var i=0; i<list.length; i++){
		var row = list[i];
		if (selectedMap[row["user"]] || selectedMap[row["id"]]){
			row["checked"] = true;
			row["ListViewSelector"] = 1;
		}else {
			row["checked"] = false;
			row["ListViewSelector"] = 0;
		}
	}
	
	var context = ctx.unload();
	context["list"] = list;
	ctx.load(context);
}
function nc$bs$oa$oama$ecm$EcmSearchDeptController$onItemClick(ctx){
	var rowindex = parseInt(ctx.params()["rowindex"]);
	var list = ctx.unload()["list"];
	var row = list[rowindex];
	var selecteds = getCache() || [];
	var isSelected = row["checked"];
	if (true == isSelected || "true" == isSelected){ // 已选中
		for (var i=0; i<selecteds.length; i++){
			var selected = selecteds[i];
			if (selected["user"] == row["user"] || selected["id"] == row["id"]){ // 该员工已经在选中列表中，去勾选
				selecteds.splice(i, 1);
				break;
			}
		}
	} else { // 尚未选中
		list[rowindex]["checked"] = true;
		list[rowindex]["ListViewSelector"] = 1;
		var selectedMap = getSeletedMap();
		if (!selectedMap[row["user"]] || !selectedMap[row["id"]]){
			selecteds.push(row);
		}
    }
    updateCache(selecteds);
	updateSelected(ctx);
}
function nc$bs$oa$oama$ecm$EcmSearchDeptController$selectedCallback(ctx){
	var returnType = ctx.params()["returntype"];
	if("close" == returnType){
		ctx.dispose();
		_$sys.callAction('onReturnBtnClick');
		return;
	}
	
	updateSelected(ctx);
}
function updateSelected(ctx){
	var length = (getCache() || []).length;
	$controls.set("numLabel", "text", $res.getResString("flow_selected") + "(" + length + ")");
    
    var selectedMap = getSeletedMap();
    var list = ctx.unload()["list"] || [];
    for(var i=0; i<list.length; i++){
        var row = list[i];
        if (selectedMap[row["user"]] || selectedMap[row["id"]]){
            row["checked"] = true;
            row["ListViewSelector"] = 1;
        } else {
            row["checked"] = false;
            row["ListViewSelector"] = 0;
        }
    }
    
    var content = ctx.unload();
    content["list"] = list;
    ctx.load(content);
}
function getSeletedMap(){
	var selectedMap = {};
	var selecteds = getCache() || [];
	for(var i=0; i<selecteds.length; i++){
		var selected = selecteds[i];
		var id = selected["user"] || selected["id"];
		selectedMap[id] = selected;
	}
	return selectedMap;
}
function getCache(){
	return eval($cache.readFile("ECMPERSONSELECTED")) || [];
}
function updateCache(value){
	$cache.writeFile("ECMPERSONSELECTED", value || []);
}

function nc$bs$oa$oama$ecm$EcmSearchDeptController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchDeptController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchDeptController$initialize,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchDeptController$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchDeptController$onItemClick,
    loadCallback : nc$bs$oa$oama$ecm$EcmSearchDeptController$loadCallback,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchDeptController$beforeLoad,
    catcherror : nc$bs$oa$oama$ecm$EcmSearchDeptController$catcherror
};
nc.bs.oa.oama.ecm.EcmSearchDeptController.registerClass('nc.bs.oa.oama.ecm.EcmSearchDeptController');
