Type.registerNamespace('nc.bs.oa.oama.ecm.Task_reporthistoryController');
nc.bs.oa.oama.ecm.Task_reporthistoryController = function() {

}
function nc$bs$oa$oama$ecm$Task_reporthistoryController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$Task_reporthistoryController$loadreporthistory(ctx){
	var  taskid = ctx.params()["taskid"];
    var params = {
   		"taskid" : taskid
    };
   	var serviceParams = {
   		"viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
   		"action" : "getReportHisList",
   		"isDataCollect" : "true",
   		"params" : jsonToString(params)
   	};
    UM_NativeCall.callService("UMService.callAction", jsonToString(serviceParams)); 
}
function nc$bs$oa$oama$ecm$Task_reporthistoryController$listviewdefine0_onload(){

}
nc.bs.oa.oama.ecm.Task_reporthistoryController.prototype = {
    listviewdefine0_onload : nc$bs$oa$oama$ecm$Task_reporthistoryController$listviewdefine0_onload,
    initialize : nc$bs$oa$oama$ecm$Task_reporthistoryController$initialize,
    loadreporthistory : nc$bs$oa$oama$ecm$Task_reporthistoryController$loadreporthistory
};
nc.bs.oa.oama.ecm.Task_reporthistoryController.registerClass('nc.bs.oa.oama.ecm.Task_reporthistoryController');
