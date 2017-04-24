Type.registerNamespace('nc.bs.oa.oama.ecm.searchsharedController');
nc.bs.oa.oama.ecm.searchsharedController = function() {

}
function nc$bs$oa$oama$ecm$searchsharedController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$searchsharedController$tipsOnload(ctx){
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"getShareToCondition",
		"callback":"setTips", 
		"params":{
		}
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
    //UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'getShareToCondition',callback:'setTips',params:{}}");
}
function nc$bs$oa$oama$ecm$searchsharedController$setTips(ctx){
    var tip = ctx["conditiondesc"];
    UM_NativeCall.callService("UMJS.setProperty","{id:'search0',placeholder:'"+tip+"'}");
}
function nc$bs$oa$oama$ecm$searchsharedController$doSearch(ctx){
	var condition = ctx.param("searchtext");
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"getShareToCandidate",
		"startline":"1",
		"count":"25",
		"listid":"listview0",
		"condition":condition
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	//UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'getShareToCandidate',count:'25',startline:'1',condition:'"+condition+"'}");
}
function nc$bs$oa$oama$ecm$searchsharedController$getNextSearch(ctx){
    var condition = ctx.param("searchtext");
    var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"getShareToCandidate",
		"condition":condition,
		"listid":"listview0",
		"autodatabinding":"true"
	};
	UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
    //UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'getShareToCandidate',condition:'"+condition+"',autodatabinding:'false'}");
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$searchsharedControllerBase$returnResult(ctx){
	var param = ctx.params();
	var result = param["result"];
	var grouplist = [];
	grouplist.push(stringToJSON(result));
	var args = {
		"iskeep":"false",
		"resultcode":"15",
		"result":{
			"grouplist":grouplist
		}
	};
	UM_NativeCall.callService("UMView.close",jsonToString(args));
	//UM_NativeCall.callService("UMView.close", "{iskeep:false,resultcode:'15',result:{grouplist:'"+jsonToString(grouplist)+"'}}");
}
nc.bs.oa.oama.ecm.searchsharedController.prototype = {
    initialize : nc$bs$oa$oama$ecm$searchsharedController$initialize,
    tipsOnload : nc$bs$oa$oama$ecm$searchsharedController$tipsOnload,
    setTips : nc$bs$oa$oama$ecm$searchsharedController$setTips,
    doSearch : nc$bs$oa$oama$ecm$searchsharedController$doSearch,
    getNextSearch : nc$bs$oa$oama$ecm$searchsharedController$getNextSearch,
    returnResult : nc$bs$oa$oama$ecm$searchsharedControllerBase$returnResult
};
nc.bs.oa.oama.ecm.searchsharedController.registerClass('nc.bs.oa.oama.ecm.searchsharedController');
