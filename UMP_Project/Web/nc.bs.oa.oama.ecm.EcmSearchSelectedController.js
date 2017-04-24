Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchSelectedController');
nc.bs.oa.oama.ecm.EcmSearchSelectedController = function() {}

function nc$bs$oa$oama$ecm$EcmSearchSelectedController$onDataLoad(ctx){
	var selecteds = getCache() || [];
	var content = ctx.unload();
	content["list"] = selecteds;
	ctx.load(content);
}

function nc$bs$oa$oama$ecm$EcmSearchSelectedController$onItemClick(ctx){
	var rowindex = ctx.params()["rowindex"];
	var persons = ctx.unload()["list"];
	var person = persons[rowindex];
	var isSelected = person["checked"];
	
	var selecteds = getCache() || [];
	if (true == isSelected || "true" == isSelected){ // 已选中
		persons[rowindex]["checked"] = false;
		persons[rowindex]["ListViewSelector"] = 0;
		for (var i=0; i<selecteds.length; i++){
			var selected = selecteds[i];
			if (selected["user"] == person["user"] || selected["id"] == person["id"]){ // 该员工已经在选中列表中，去勾选
				selecteds.splice(i, 1);
				break;
			}
		}
	} else { // 尚未选中
		persons[rowindex]["checked"] = true;
		persons[rowindex]["ListViewSelector"] = 1;
		selecteds.push(person);
	}
	
	var content = ctx.unload();
	content["list"] = persons;
	ctx.load(content);
	
	updateCache(selecteds);
}
function getCache(){
	return eval($cache.readFile("ECMPERSONSELECTED")) || [];
}
function updateCache(value){
	$cache.writeFile("ECMPERSONSELECTED", value || []);
}

function nc$bs$oa$oama$ecm$EcmSearchSelectedController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmSearchSelectedController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmSearchSelectedController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$EcmSearchSelectedController$onDataLoad,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchSelectedController$onItemClick
};
nc.bs.oa.oama.ecm.EcmSearchSelectedController.registerClass('nc.bs.oa.oama.ecm.EcmSearchSelectedController');
