Type.registerNamespace('nc.bs.oa.oama.ecm.StepEditController');
nc.bs.oa.oama.ecm.StepEditController = function() {}

function nc$bs$oa$oama$ecm$StepEditController$onDataLoad(ctx){
	var editstep = stringToJSON(ctx.params()["editstep"]) || {
		"index"	: "",
		"model"	: "2",
		"rule"	: "1",
		"active": "1",
		"names"	: "",
		"steps"	: []
	};
	
	stepEditController$updateVisble(editstep);
	ctx.load({"editstep" : editstep});
	
	var steps = editstep["steps"];
	stepEditController$updateSelected(steps);
	if (steps.length <= 0){
		// 当前步骤为空，直接打开选人页面
		_$sys.callAction('onAddBtnClick');
	}
}
function nc$bs$oa$oama$ecm$StepEditController$onUpBtnClick(ctx){
	var upIndex = parseInt(ctx.params()["index"]);
	var editstep  = ctx.unload()["editstep"];
	
	if(!upIndex || !editstep){
		return;
	}

	var names = editstep["names"];
	var nameAry = names.split(",");
	var moveName = nameAry[upIndex];
	var preName = nameAry[upIndex - 1];
	var moveStep = editstep["steps"][upIndex];
	var preStep = editstep["steps"][upIndex - 1];
	
	moveStep["index"] = upIndex;
	preStep["index"] = upIndex + 1;

	nameAry[upIndex - 1] = moveName;
	nameAry[upIndex] = preName;
	editstep["steps"][upIndex - 1] = moveStep;
	editstep["steps"][upIndex] = preStep;
	editstep["names"] = nameAry.toString();
	
	stepEditController$updateSelected(editstep["steps"]);

	ctx.load({"editstep" : editstep});
}
function nc$bs$oa$oama$ecm$StepEditController$onDownBtnClick(ctx){
	var downIndex = parseInt(ctx.params()["index"]) ;
	var editstep  = ctx.unload()["editstep"];
	
	if(!(downIndex || editstep)){
		return;
	}
	
	if(downIndex == (editstep["steps"].length -1)){
		return; // 最后一步
	}
	
	var names = editstep["names"];
	var nameAry = names.split(",");
	var moveName = nameAry[downIndex];
	var nextName = nameAry[downIndex + 1];
	var moveStep = editstep["steps"][downIndex];
	var nextStep = editstep["steps"][downIndex + 1];

	nextStep["index"] = downIndex + 1;
	moveStep["index"] = downIndex + 2;

	nameAry[downIndex] = nextName;
	nameAry[downIndex + 1] = moveName;
	editstep["steps"][downIndex] = nextStep;
	editstep["steps"][downIndex + 1] = moveStep;
	editstep["names"] = nameAry.toString();

	stepEditController$updateSelected(editstep["steps"]);
	ctx.load({"editstep" : editstep});
}
function nc$bs$oa$oama$ecm$StepEditController$onDeleteBtnClick(ctx){
	var delIndex = ctx.params()["index"];
	var editstep  = ctx.unload()["editstep"];
	
	if(!(delIndex || editstep)){
		return;
	}
	
	var names = editstep["names"];
	var nameAry = names.split(",");
	nameAry.splice(delIndex, 1);
	editstep["names"] = nameAry.toString();
	
	var steps = editstep["steps"];
	steps.splice(delIndex, 1);
	for (var i=delIndex; i<steps.length; i++){
		var step = steps[i];
		var index = parseInt(step["index"]);
		step["index"] = (index - 1) + "";
	}

	stepEditController$updateVisble(editstep);
	stepEditController$updateSelected(editstep["steps"]);
	ctx.load({"editstep" : editstep});
}

function nc$bs$oa$oama$ecm$StepEditController$onSeizeBtnClick(ctx){
	var editstep  = ctx.unload()["editstep"];
	editstep["rule"] = "2";
	
	stepEditController$updateVisble(editstep);	
	ctx.load({"editstep" : editstep});
}
function nc$bs$oa$oama$ecm$StepEditController$onCountersignBtnClick(ctx){
	var editstep  = ctx.unload()["editstep"];
	editstep["rule"] = "1";
	
	stepEditController$updateVisble(editstep);	
	ctx.load({"editstep" : editstep});
}

function nc$bs$oa$oama$ecm$StepEditController$onSerialBtnClick(ctx){
	var editstep  = ctx.unload()["editstep"];
	editstep["model"] = "1";
	
	stepEditController$updateVisble(editstep);	
	ctx.load({"editstep" : editstep});
}
function nc$bs$oa$oama$ecm$StepEditController$onParallelBtnClick(ctx){
	var editstep  = ctx.unload()["editstep"];
	editstep["model"] = "2";
	
	stepEditController$updateVisble(editstep);	
	ctx.load({"editstep" : editstep});
}
function nc$bs$oa$oama$ecm$StepEditController$addCallBack(ctx){
	var personlist = getCache();
	var editstep = ctx.unload()["editstep"];
	if (!editstep){
        editstep = {
            "index"	: "",
            "model"	: "2",
            "rule"	: "1",
            "active": "1",
            "names"	: "",
            "steps"	: []
        };
	}
	var steps = editstep["steps"];
	if(steps.length <= 0 && personlist.length <= 0){
		// 当前步骤为空，直接返回上一页面
		_$sys.callAction('onReturnBtnClick');
		return;
	}
	
	// 覆盖式，不可重复
	// 清空已选列表
	if (personlist && editstep) {
		steps = [];
		var index = 0;
		var names = "";
		for(var i=0; i<personlist.length; i++) {
			var person = personlist[i];
			var personId = person["user"] || person["id"];
			names += names ? "," + person["name"] : person["name"];
			steps.push({
				"index"	: ++index,
				"id"	: personId,
				"name"	: person["name"]
			});
		}
		editstep["steps"] = steps;
		editstep["names"] = names;
		
		stepEditController$updateVisble(editstep);
		ctx.load({"editstep" : editstep});
	}
}
function stepEditController$updateSelected(steps){
	var selecteds = [];
	for(var i=0; i<steps.length; i++){
		selecteds.push({
			"checked" : "true",
			"index"	: i+1,
			"id"	: steps[i]["id"],
			"user"	: steps[i]["id"],
			"name"	: steps[i]["name"],
			"ListViewSelector": 1
		});
	}
	updateCache(selecteds);
}
function stepEditController$updateVisble(editstep) {
	var steps = editstep["steps"].length;
	if (steps <= 0){ // 无人时
		hide("spaceOutPanel1");
		hide("listView");		// 隐藏列表
		unshow("modelPanel");		// 隐藏模式
		unshow("rulePanel");		// 隐藏规则
		editstep["rule"] = "3";	// 规则设置为3
		show("nullPanel");
	} else 	if (steps <= 1){ // 只有一个人时
		hide("nullPanel");
		hide("spaceOutPanel1");
		unshow("modelPanel");		// 隐藏模式
		unshow("rulePanel");		// 隐藏规则
		editstep["rule"] = "3";	// 规则设置为3
		show("listView");		// 显示列表
	} else { // 两个人或者更多时
		hide("nullPanel");
		show("spaceOutPanel1");
		show("listView");		// 显示列表
		show("modelPanel");		// 显示模式
		var model = editstep["model"];
		if (model == "1") { // 串行
			unshow("rulePanel");		// 隐藏规则
			editstep["rule"] = "3";	// 规则设置为3
		} else { // 并行
			var active = editstep["active"];
			var rule = editstep["rule"];
			if ("1" == active){ // 活动类型为协同时显示规则，知会不显示
				if (rule != "1" && rule != "2"){
					editstep["rule"] = "1";	// 规则默认为1
				}
				show("rulePanel");	// 显示规则
			}
		}
	}
}
function getCache(){
	return eval($cache.readFile("ECMPERSONSELECTED")) || [];
}
function updateCache(value){
	$cache.writeFile("ECMPERSONSELECTED", value || []);
}
function show(id){
	$controls.set(id, "visible", "true");
}
function unshow(id){
	$controls.set(id, "visible", "false");
}
function hide(id){
	$controls.set(id, "display", "none");
}

function nc$bs$oa$oama$ecm$StepEditController$initialize(ctx){}

nc.bs.oa.oama.ecm.StepEditController.prototype = {
    initialize : nc$bs$oa$oama$ecm$StepEditController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$StepEditController$onDataLoad,
    onDeleteBtnClick : nc$bs$oa$oama$ecm$StepEditController$onDeleteBtnClick,
    onSeizeBtnClick : nc$bs$oa$oama$ecm$StepEditController$onSeizeBtnClick,
    onSerialBtnClick : nc$bs$oa$oama$ecm$StepEditController$onSerialBtnClick,
    onParallelBtnClick : nc$bs$oa$oama$ecm$StepEditController$onParallelBtnClick,
    onUpBtnClick : nc$bs$oa$oama$ecm$StepEditController$onUpBtnClick,
    onDownBtnClick : nc$bs$oa$oama$ecm$StepEditController$onDownBtnClick,
    addCallBack : nc$bs$oa$oama$ecm$StepEditController$addCallBack,
    onCountersignBtnClick : nc$bs$oa$oama$ecm$StepEditController$onCountersignBtnClick,
};
nc.bs.oa.oama.ecm.StepEditController.registerClass('nc.bs.oa.oama.ecm.StepEditController');
