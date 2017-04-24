Type.registerNamespace('nc.bs.oa.oama.ecm.shareschedulerdetailController');
nc.bs.oa.oama.ecm.shareschedulerdetailController = function() {

}
function nc$bs$oa$oama$ecm$shareschedulerdetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$shareschedulerdetailController$detailOnload(ctx){
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
nc.bs.oa.oama.ecm.shareschedulerdetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$shareschedulerdetailController$initialize,
    detailOnload : nc$bs$oa$oama$ecm$shareschedulerdetailController$detailOnload
};
nc.bs.oa.oama.ecm.shareschedulerdetailController.registerClass('nc.bs.oa.oama.ecm.shareschedulerdetailController');
