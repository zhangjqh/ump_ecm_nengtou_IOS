Type.registerNamespace('nc.bs.oa.oama.ecm.pushtimeController');
nc.bs.oa.oama.ecm.pushtimeController = function() {

}
function nc$bs$oa$oama$ecm$pushtimeController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$pushtimeController$onSave(ctx){
    var begintime = ctx.get("begintime");
    var endtime = ctx.get("endtime");
    var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
		"action":"saveRemindTime", 
		"callback":"onBack", 
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.EventDetailExtendController',action:'saveRemindTime',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',callback:'onBack'}");
}
nc.bs.oa.oama.ecm.pushtimeController.prototype = {
    initialize : nc$bs$oa$oama$ecm$pushtimeController$initialize,
    onSave : nc$bs$oa$oama$ecm$pushtimeController$onSave
};
nc.bs.oa.oama.ecm.pushtimeController.registerClass('nc.bs.oa.oama.ecm.pushtimeController');
