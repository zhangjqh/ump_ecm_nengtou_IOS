Type.registerNamespace('nc.bs.oa.oama.ecm.myschedulerdetailController');
nc.bs.oa.oama.ecm.myschedulerdetailController = function() {

}
function nc$bs$oa$oama$ecm$myschedulerdetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$myschedulerdetailController$detailOnload(ctx){
    var param = ctx.params();
	var eventid = param["eventid"];
	var begintime = param["begintime"];
	var endtime = param["endtime"];
	var daytime = param["daytime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var repeateventopenby = param["repeateventopenby"];
	if(repeateventopenby=='1'){
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
	}
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"getEventDetail", 
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"daytime":daytime,
		"timezone":timezone,
		"repeateventopenby":repeateventopenby
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'getEventDetail',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'"+repeateventopenby+"'}");
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$deleteScheduler(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = param["begintime"];
	var endtime = param["endtime"];
	var ts = row["ts"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var repeateventopenby = param["repeateventopenby"];
	var type = param["type"];
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"deleteOrCancelEvent", 
		"callback":"onBack", 
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone,
		"repeateventopenby":repeateventopenby,
		"type":type,
		"ts":ts
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'deleteOrCancelEvent',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'"+repeateventopenby+"',type:'"+type+"',ts:'"+ts+"',callback:'onBack'}");
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$cancelScheduler(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = param["begintime"];
	var endtime = param["endtime"];
	var ts = row["ts"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var repeateventopenby = param["repeateventopenby"];
	var type = param["type"];
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"deleteOrCancelEvent", 
		"callback":"onBack", 
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone,
		"repeateventopenby":repeateventopenby,
		"type":type,
		"ts":ts
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'deleteOrCancelEvent',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'"+repeateventopenby+"',type:'"+type+"',ts:'"+ts+"',callback:'onBack'}");
}
nc.bs.oa.oama.ecm.myschedulerdetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$myschedulerdetailController$initialize,
    detailOnload : nc$bs$oa$oama$ecm$myschedulerdetailController$detailOnload,
    deleteScheduler : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$deleteScheduler,
    cancelScheduler : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$cancelScheduler,
};
nc.bs.oa.oama.ecm.myschedulerdetailController.registerClass('nc.bs.oa.oama.ecm.myschedulerdetailController');
