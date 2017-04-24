Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchListController');
nc.bs.oa.oama.ecm.EcmSearchListController = function() {}
function nc$bs$oa$oama$ecm$EcmSearchListController$loadError(ctx){
	_$sys.callAction('onDataLoadFive');
}
function nc$bs$oa$oama$ecm$EcmSearchListController$refreshError(ctx){
	_$sys.callAction('onDownRefreshFive');
}

function nc$bs$oa$oama$ecm$EcmSearchListController$onItemClick(ctx){
	var viewMap = {
		"ORG" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
		"EMP" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
		"ENT" : "nc.bs.oa.oama.ecm.Ecm_SearchList",
	  "GROUP" : "nc.bs.oa.oama.ecm.Ecm_SearchList"
	};
	var actionMap = {
		"ORG" : "orgList",
		"EMP" : "empList",
		"ENT" : "entList",
		"GROUP" : "psnList"
	};
	
	var rowindex = parseInt(ctx.params()["rowindex"]);
	var list = ctx.unload()["list"];
	var row = list[rowindex];
	var rowtype = row["type"];
	var rownum = row["num"];
	if (viewMap[rowtype]) { // 需要页面跳转
		ctx.dispose();
		
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
	} else { // 不需要页面跳转，人员列表
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
}
function nc$bs$oa$oama$ecm$EcmSearchListController$selectedCallback(ctx){
	var returnType = ctx.params()["returntype"];
	if("close" == returnType){
		ctx.dispose();
		_$sys.callAction('onOkBtnClick');
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
        if(!row["type"] || "PERSON" == row["type"]){
            if (selectedMap[row["user"]] || selectedMap[row["id"]]){
                row["checked"] = true;
                row["ListViewSelector"] = 1;
            } else {
                row["checked"] = false;
                row["ListViewSelector"] = 0;
            }
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

function nc$bs$oa$oama$ecm$EcmSearchListController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchListController$initialize,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchListController$onItemClick,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchListController$selectedCallback,
    loadError : nc$bs$oa$oama$ecm$EcmSearchListController$loadError,
    refreshError : nc$bs$oa$oama$ecm$EcmSearchListController$refreshError
};
nc.bs.oa.oama.ecm.EcmSearchListController.registerClass('nc.bs.oa.oama.ecm.EcmSearchListController');
