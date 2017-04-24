Type.registerNamespace('nc.bs.oa.oama.ecm.task_editController');
nc.bs.oa.oama.ecm.task_editController = function() {

}
function nc$bs$oa$oama$ecm$task_editController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$crtPersonInfo(ctx){
	
	//alert("adadsf");
	var list  =  stringToJSON(ctx["b"]);
	alert(list.length);
	var templist  = new Array();
	if(list != null && list.length >0){
		for (var i = 0 ; i < list.length ; i ++){
		if(list[i]["ischecked"] != "undefined" && list[i]["ischecked"]){
			templist.push(jsonToString(list[i]));
		}
	}
	}
	
	// var tempvar = stringToJSON(templist);
	//$context.set("assistantstructlist",templist);
	
	
	var staffstr ="";
	if(templist != null && templist.length >0){
		for(var j = 0 ; j < templist.length ; j++){
		 staffstr = staffstr + templist[j]["nsme"]+"/";
	}
	}
	// 将 拼成 人员/人员/ 的格式
	$context.set("assistpersonlist",staffstr);
	// templist 赋给  assistantstructlist  以便后传打开后设置选中
	 //var tempvar = stringToJSON(templist);
	//alert(templist.toString);
	$context.set("assistantstructlistcache",jsonToString(templist));


}
function nc$bs$oa$oama$ecm$task_editController$returnpsn(ctx){
var clist  =  stringToJSON(ctx["c"]);
	//alert(list.length);
	var psnclist  = new Array();
	if(clist != null && clist.length >0){
		for (var i = 0 ; i < clist.length ; i ++){
		if(clist[i]["ischecked"] != "undefined" && clist[i]["ischecked"]){
			psnclist.push(jsonToString(clist[i]));
		}
	}
	}
	var psnstaffstr ="";
	if(psnclist != null && psnclist.length >0){
		for(var j = 0 ; j < psnclist.length ; j++){
		 psnstaffstr = psnstaffstr + psnclist[j]["nsme"]+"/";
	}
	}
	// 将 拼成 人员/人员/ 的格式
	$context.set("exammanpsnlist",psnstaffstr);
	// templist 赋给  assistantstructlist  以便后传打开后设置选中
	 //var tempvar = stringToJSON(templist);
	//alert(templist.toString);
	$context.set("exammanstructlistcache",jsonToString(psnclist));	
}
function nc$bs$oa$oama$ecm$task_editController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$UMonDataBinding(ctx){
}
function nc$bs$oa$oama$ecm$task_editController$detailonload(ctx){
	//清空缓存
	$cache.writeFile("OAPOCROWSELECTED", "" || []);
	$cache.writeFile("OAPOVIEWSELECTED", "" || []);
	var para = stringToJSON(ctx.params()["taskdetail"]);
    if(!para){
    	para = "" ;
    }
    
    var params = {
    	"taskdetail" : para
    };
    var serviceType = "UMService.callAction";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "isDataCollect" : "true",
		              "action" : "dataOnload",
		               "callback" : "setCheckboxEnable",
		              "params" : $jsonToString(params)
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$task_editController$setCheckboxEnable(ctx){
	//动态配置提醒方式 对于没有的置灰处理
	var msgEnable = ctx.get("msgEnable");
	var emailEnable = ctx.get("emailEnable");
	var smsEnable = ctx.get("smsEnable");
	var imEnable = ctx.get("imEnable");
	if(msgEnable == null){
		$controls.set("label222","color","#c8c7cc");
		$controls.set("checkbox0","readonly","true");
	}else{
		if(ctx.get("taskid") == null || ctx.get("taskid") == "")
		   ctx.set("msg","true");
	}
	if(emailEnable == null){
		$controls.set("label223","color","#c8c7cc");
		$controls.set("checkbox1","readonly","true");
	}
	if(smsEnable == null){
		$controls.set("label224","color","#c8c7cc");
		$controls.set("checkbox2","readonly","true");
	}
	if(imEnable == null){
		$controls.set("label225","color","#c8c7cc");
		$controls.set("checkbox3","readonly","true");
	}
	
}
function nc$bs$oa$oama$ecm$task_editController$attchreturn(ctx){
	//alert(jsonToString(ctx.params()));
	var filelist = ctx.params()["allrow"];
	var count = 0;
	if(filelist){
		filelist = stringToJSON(filelist);
		count = filelist.length;
	}
	
    ctx.load({"count":count});
}
function nc$bs$oa$oama$ecm$task_editController$returnlist(ctx){
	$cache.writeFile("OAPOCROWSELECTED",  []);
	$cache.writeFile("OAPOVIEWSELECTED",  []);
	var serviceType = "UMView.open";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.ecm.Task_mainviewtwo",
		              "iskeep" : "false"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
}
nc.bs.oa.oama.ecm.task_editController.prototype = {
    initialize : nc$bs$oa$oama$ecm$task_editController$initialize,
    crtPersonInfo : nc$bs$oa$oama$ecm$task_editController$crtPersonInfo,
    UMonInit : nc$bs$oa$oama$ecm$task_editController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$task_editController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$task_editController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$task_editController$UMonComplete,
    returnpsn : nc$bs$oa$oama$ecm$task_editController$returnpsn,
    detailonload : nc$bs$oa$oama$ecm$task_editController$detailonload,
    attchreturn : nc$bs$oa$oama$ecm$task_editController$attchreturn,
    setCheckboxEnable : nc$bs$oa$oama$ecm$task_editController$setCheckboxEnable,
    UMonDataBinding : nc$bs$oa$oama$ecm$task_editController$UMonDataBinding,
    returnlist : nc$bs$oa$oama$ecm$task_editController$returnlist
};
nc.bs.oa.oama.ecm.task_editController.registerClass('nc.bs.oa.oama.ecm.task_editController');
