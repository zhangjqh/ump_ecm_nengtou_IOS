Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchController');
nc.bs.oa.oama.ecm.EcmSearchController = function() {}

function nc$bs$oa$oama$ecm$EcmSearchController$setCondition(ctx){
    var condition = ctx.get("condition");
	$controls.set("searchInput", "placeholder", condition);
	
	updateSelected(ctx);
}
function nc$bs$oa$oama$ecm$EcmSearchController$conditionError(ctx){
   	var param = ctx.params();
	var errorMsg = param["err_msg"];
	if(errorMsg == "nc.bs.oa.oama.ecm.PersonController"){
		var args = {
		"viewid":"nc.bs.oa.oama.freeflow.PersonController",
		"action":"condition",
		"callback":"setCondition", 
		"autoDataBinding":"false"
		};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	};
}
function nc$bs$oa$oama$ecm$EcmSearchController$searchError(ctx){
   	var param = ctx.params();
	var errorMsg = param["err_msg"];
	if(errorMsg == "nc.bs.oa.oama.ecm.PersonController"){
		var args = {
		"viewid":"nc.bs.oa.oama.freeflow.PersonController",
		"action":"search",
		"callback":"selectedCallback", 
		"autoDataBinding":"true"
		};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$EcmSearchController$selectedCallback(ctx){
    var returnType = ctx.params()["returntype"];
	if("close" == returnType){
		ctx.dispose();
		_$sys.callAction('onReturnBtnClick');
		return;
	}
	
	updateSelected(ctx);
}
function nc$bs$oa$oama$ecm$EcmSearchController$onItemClick(ctx){
    var rowindex = parseInt(ctx.params()["rowindex"]);
	var list = ctx.unload()["list"] || [];
	var row = list[rowindex];
	var rowtype = row["type"]; // 不需要页面跳转，人员列表
	
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
		if (!selectedMap[row["user"]] && !selectedMap[row["id"]]){
			selecteds.push(row);
		}
    }
    updateCache(selecteds);
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
		if(selected["user"]){
			selectedMap[selected["user"]] = selected;
		}else if (selected["id"]){
			selectedMap[selected["id"]] = selected;
		}	
	}
	return selectedMap;
}
function getCache(){
	return eval($cache.readFile("ECMPERSONSELECTED")) || [];
}
function updateCache(value){
	$cache.writeFile("ECMPERSONSELECTED", value || []);
}

function nc$bs$oa$oama$ecm$EcmSearchController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchController$initialize,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchController$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchController$onItemClick,
    setCondition : nc$bs$oa$oama$ecm$EcmSearchController$setCondition,
    conditionError : nc$bs$oa$oama$ecm$EcmSearchController$conditionError,
    searchError : nc$bs$oa$oama$ecm$EcmSearchController$searchError
};
nc.bs.oa.oama.ecm.EcmSearchController.registerClass('nc.bs.oa.oama.ecm.EcmSearchController');
