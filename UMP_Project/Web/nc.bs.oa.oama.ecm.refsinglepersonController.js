Type.registerNamespace('nc.bs.oa.oama.ecm.refsinglepersonController');
nc.bs.oa.oama.ecm.refsinglepersonController = function() {

}
function nc$bs$oa$oama$ecm$refsinglepersonController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function  nc$bs$oa$oama$ecm$refsinglepersonController$searchpsnbykey(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',visibleLoadMore:'true'}");
	var param = ctx.params();
	var keywords = param["searchtext"];
//    var serviceType = "UMService.callAction";
//	var params = {
//		"viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
//		"keyword" : keywords,
//		"isDataCollect":"true",
//		"action" : "getStaffList"
//	};
//	var serviceparams = $jsonToString(params);
//	UM_NativeCall.callService(serviceType, serviceparams);
	
	var serviceType = "UMList.getFirstPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "startline" : "1",
		              "count" : "25",
		              "action"  : "getStaffList",
		              "keyword" : keywords,
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
	
}
function nc$bs$oa$oama$ecm$refsinglepersonController$getnextpage(ctx){
	var keywords = $controls.get("search0","keyword");
	var serviceType = "UMList.getNextPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "action"  : "getStaffList",
		              "keyword" : keywords,
		               "listid":"listview0",
		              "autodatabinding" : "false"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams); 
	ctx.dispose();
}
nc.bs.oa.oama.ecm.refsinglepersonController.prototype = {
    initialize : nc$bs$oa$oama$ecm$refsinglepersonController$initialize,
   getnextpage : nc$bs$oa$oama$ecm$refsinglepersonController$getnextpage,
        searchpsnbykey : nc$bs$oa$oama$ecm$refsinglepersonController$searchpsnbykey
};
nc.bs.oa.oama.ecm.refsinglepersonController.registerClass('nc.bs.oa.oama.ecm.refsinglepersonController');
