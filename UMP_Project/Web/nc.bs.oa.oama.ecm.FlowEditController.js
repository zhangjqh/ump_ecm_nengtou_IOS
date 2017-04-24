Type.registerNamespace('nc.bs.oa.oama.ecm.FlowEditController');
nc.bs.oa.oama.ecm.FlowEditController = function() {}

function nc$bs$oa$oama$ecm$FlowEditController$onDataLoad(ctx){
	var flowedit = stringToJSON(ctx.params()["flowedit"]);
	var editable = ctx.params()["editable"];
	var notice = stringToJSON(ctx.params()["notice"]);
	
	for (var i=0; i<flowedit.length; i++) {
		var step = flowedit[i];
		var active = step["active"];
		var rule = step["rule"];
		step["rulename"] = flowEditController$getRuleName(active, rule);
	}
	
	ctx.load({"flowedit" : flowedit});
	ctx.load({"editable" : editable});
	ctx.load({"notice" : notice});
	
	flowEditController$updateVisble(flowedit);
	flowEditController$updateNotice(notice);
}
function nc$bs$oa$oama$ecm$FlowEditController$onUpBtnClick(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$onDownBtnClick(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$onDeleteBtnClick(ctx){
	var delIndex = parseInt(ctx.params()["index"]);
	var flowedit = ctx.unload()["flowedit"];
	flowedit.splice(delIndex, 1); // 删除
	for (var i=delIndex; i<flowedit.length; i++){
		var step = flowedit[i];
		step["index"] = (i + 1) + "";
	}

	ctx.load({"flowedit" : flowedit});
	flowEditController$updateVisble(flowedit);
}
function nc$bs$oa$oama$ecm$FlowEditController$onReturnBtnClick(ctx){
	ctx.dispose();
	
	var flowedit = ctx.unload()["flowedit"];
	var editable = ctx.unload()["editable"];
	var notice = ctx.unload()["notice"];
	var params = {
		"iskeep" : false,
		"resultcode" : "15",
		"flowedit" : flowedit,
		"editable" : editable,
		"notice" : notice
	};
	UM_NativeCall.callService("UMView.close", jsonToString(params));
}
function nc$bs$oa$oama$ecm$FlowEditController$onListBtnClick(ctx){
	var status = $controls.get("listView", "status") || "browse";
	if ("browse" != status){ // 当前为删除态，切换为浏览态
		set("listView", "status", "browse");
		set("listBtn", "value", $res.getResString("flow_edit"));
		show("addBtn");
	} else { // 当前为浏览态，切换为删除态
		set("listView", "status", "delete");
		set("listBtn", "value", $res.getResString("flow_save"));
		hide("addBtn");
	}
}
function nc$bs$oa$oama$ecm$FlowEditController$addCallback(ctx){
	var editstep = stringToJSON(ctx.params()["editstep"]);
	if (editstep["steps"].length <= 0){
		return; // 新增流程为空
	}
	var flowedit = ctx.unload()["flowedit"];
	var startindex = flowedit.length;
	var model = editstep["model"];
	var active = editstep["active"];
	if ("1" == model) { // 串行
		var steps = editstep["steps"];
		for (var i=0; i<steps.length; i++){
			var step = steps[i];
			step["index"]="1";
			var newstep = {  
				"index" : (startindex + 1),
				"model" : "2",
				"rule"  : "3",
				"active": active,
				"rulename"  : flowEditController$getRuleName(active, "3"),
				"names" : step["name"],
				"steps" : [step]
			};
			flowedit[startindex] = newstep;
			startindex++;
		}
	} else { // 并行
		var rule = editstep["rule"];
		editstep["rulename"] = flowEditController$getRuleName(active, rule);
		if(editstep["steps"].length<=1)
			{editstep["rule"]="3";
			editstep["rulename"]="";
			}
		editstep["index"] = startindex + 1;
		flowedit[startindex] = editstep;
	}
	
	ctx.load({"flowedit" : flowedit});
	flowEditController$updateVisble(flowedit);
	
	$cache.writeFile("ECMPERSONSELECTED", []);
}
function nc$bs$oa$oama$ecm$FlowEditController$editCallback(ctx){
	var flowedit = ctx.unload()["flowedit"];
	var editstep = stringToJSON(ctx.params()["editstep"]);
	var aryIndex = parseInt(editstep["index"]) - 1; // 数组中的索引小1
	if (editstep["steps"].length <= 0){ // 编辑后流程为空
		flowedit.splice(aryIndex, 1); // 删除
		for (var i=aryIndex; i<flowedit.length; i++){
			var step = flowedit[i];
			step["index"] = (i + 1) + "";
		}
	} else { // 编辑后流程更新
		var model = editstep["model"];
		var active = editstep["active"];
		if ("1" == model) { // 串行
			flowedit.splice(aryIndex, 1); // 删除
			var steps = editstep["steps"];
			
			for (var i=0; i<steps.length; i++){
				var step = steps[i];
				step["index"]="1";
				var newstep = {
					"index" : (aryIndex + 1),
					"model" : "2",
					"rule"  : "3",
					"active"  : active,
					"rulename"  : flowEditController$getRuleName(active, "3"),
					"names" : step["name"],
					"steps" : [step]
				};
				flowedit.splice(aryIndex, 0,newstep);
				aryIndex++;

			}
			// 编辑行之后的序号更新
			for (var i=aryIndex; i<flowedit.length; i++){
				var step = flowedit[i];
				step["index"] = (i + 1) + "";
			}
		} else { // 并行
			var rule = editstep["rule"];
			editstep["rulename"] = flowEditController$getRuleName(active, rule);
			if(editstep["steps"].length<=1)
			{editstep["rule"]="3";
			editstep["rulename"]="";
			}
			flowedit[aryIndex] = editstep;
		}
	}
		
	ctx.load({"flowedit" : flowedit});
	flowEditController$updateVisble(flowedit);
	
	$cache.writeFile("ECMPERSONSELECTED", []);
}
function flowEditController$getRuleName(active, rule) {
	var activeName = {
		"2" : $res.getResString("flow_deliver")
	};
	var ruleName = {
		"1" : $res.getResString("flow_countersign"),
		"2" : $res.getResString("flow_seize")
	};
	return activeName[active] || (ruleName[rule] || "");
	
}
function flowEditController$updateVisble(flowedit) {
	var status = $controls.get("listView", "status");
	if (flowedit.length <= 0) {
		hide("listView");
		hide("listBtn");
		show("nullPanel");
		show("addBtn");
		if ("browse" != status){  // 当前为删除态
			set("listView", "status", "browse");
			set("listBtn", "value", $res.getResString("flow_edit"));
		}
	} else {
		hide("nullPanel");
		show("listView");	 
		if ("delete" == status){  // 当前为删除态
			set("listBtn", "value", $res.getResString("flow_save"));
			hide("addBtn");
		} else {// 当前为浏览态
			set("listBtn", "value", $res.getResString("flow_edit"));
			show("addBtn");
		}
		show("listBtn");
	}
}
function flowEditController$updateNotice(notice){
	if(!notice){
		return;
	}
	if(notice["msgable"] && "true" == notice["msgable"]){
		set("msgCheckbox", "readonly", "false");
		set("msgLabel", "color", "#000000");
	}
	if(notice["mailable"] && "true" == notice["mailable"]){
		set("mailCheckbox", "readonly", "false");
		set("mailLabel", "color", "#000000");
	}
	if(notice["mobileable"] && "true" == notice["mobileable"]){
		set("mobileCheckbox", "readonly", "false");
		set("mobileLabel", "color", "#000000");
	}
	if(notice["imable"] && "true" == notice["imable"]){
		set("imCheckbox", "readonly", "false");
		set("imLabel", "color", "#000000");
	}
	if(notice["approveable"] && "true" == notice["approveable"]){
		set("approveCheckbox", "readonly", "false");
		set("approveLabel", "color", "#000000");
	}
	if(notice["flowable"] && "true" == notice["flowable"]){
		set("flowCheckbox", "readonly", "false");
		set("flowLabel", "color", "#000000");
	}
}
function set(id, attr, value){
	$controls.set(id, attr, value);
}
function show(id){
	$controls.set(id, "visible", "true");
}
function hide(id){
	$controls.set(id, "display", "none");
}

function nc$bs$oa$oama$ecm$FlowEditController$initialize(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$FlowEditController$UMonDataBinding(ctx){}

nc.bs.oa.oama.ecm.FlowEditController.prototype = {
    initialize : nc$bs$oa$oama$ecm$FlowEditController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$FlowEditController$onDataLoad,
    onUpBtnClick : nc$bs$oa$oama$ecm$FlowEditController$onUpBtnClick,
    onDownBtnClick : nc$bs$oa$oama$ecm$FlowEditController$onDownBtnClick,
    onDeleteBtnClick : nc$bs$oa$oama$ecm$FlowEditController$onDeleteBtnClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$FlowEditController$onReturnBtnClick,
    onListBtnClick : nc$bs$oa$oama$ecm$FlowEditController$onListBtnClick,
    addCallback : nc$bs$oa$oama$ecm$FlowEditController$addCallback,
    editCallback : nc$bs$oa$oama$ecm$FlowEditController$editCallback,
    UMonInit : nc$bs$oa$oama$ecm$FlowEditController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$FlowEditController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$FlowEditController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$FlowEditController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$FlowEditController$UMonDataBinding
};
nc.bs.oa.oama.ecm.FlowEditController.registerClass('nc.bs.oa.oama.ecm.FlowEditController');
