Type.registerNamespace('nc.bs.oa.oama.ecm.sharedgrouopController');
nc.bs.oa.oama.ecm.sharedgrouopController = function() {

}
function nc$bs$oa$oama$ecm$sharedgrouopController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$sharedgrouopController$listViewOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'browse'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("scdu_oascheduler_0029")+"'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'button0',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'button4',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'button3',visible:'false'}");
    var param = ctx.params();
	var eventid = param["eventid"];
	var begintime = param["begintime"];
	var endtime = param["endtime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var repeateventopenby = param["repeateventopenby"];
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"getEventDetail",
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone,
		"repeateventopenby":repeateventopenby
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'getEventDetail',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'"+repeateventopenby+"'}");
}
function nc$bs$oa$oama$ecm$sharedgrouopController$toEditShared(ctx){
    var status = $controls.get("listview0","status");
	var editOrComplete = UM_NativeCall.callService("UMJS.getProperty","{id:'button2',propertyName:'value'}",true);
	if(status=="delete" || editOrComplete==$res.getResString("scdu_oascheduler_0090")){
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'browse'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("scdu_oascheduler_0029")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button0',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button4',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button3',visible:'false'}");
		var param = ctx.params();
		var eventid = ctx.get("eventid");
		var begintime = param["begintime"];
		var endtime = param["endtime"];
		var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
		var ts = ctx.get("ts");
		var repeateventopenby = param["repeateventopenby"];
		var grouplist = ctx.unload()["grouplist"];
		var args = {
			"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
			"action":"saveShareToObjects",
			"callback":"listViewOnload",
			"eventid":eventid,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"ts":ts,
			"repeateventopenby":repeateventopenby,
			"grouplist":grouplist
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
		//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'saveShareToObjects',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',ts:'"+ts+"',repeateventopenby:'"+repeateventopenby+"',grouplist:'"+jsonToString(grouplist)+"',callback:'listViewOnload'}");
	}else{
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'delete'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("scdu_oascheduler_0090")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button3',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button0',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button4',visible:'true'}");
	}
}
function nc$bs$oa$oama$ecm$sharedgrouopController$delShared(ctx){
    var param = ctx.params();
	var cindex = param["cindex"];
	var grouplist = ctx.unload()["grouplist"];
	grouplist.splice(cindex, 1);
	ctx.load({"grouplist" : grouplist});
}
nc.bs.oa.oama.ecm.sharedgrouopController.prototype = {
    initialize : nc$bs$oa$oama$ecm$sharedgrouopController$initialize,
    delShared : nc$bs$oa$oama$ecm$sharedgrouopController$delShared,
    toEditShared : nc$bs$oa$oama$ecm$sharedgrouopController$toEditShared,
    listViewOnload : nc$bs$oa$oama$ecm$sharedgrouopController$listViewOnload
};
nc.bs.oa.oama.ecm.sharedgrouopController.registerClass('nc.bs.oa.oama.ecm.sharedgrouopController');
