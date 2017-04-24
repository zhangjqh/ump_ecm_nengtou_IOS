Type.registerNamespace('nc.bs.oa.oama.ecm.timesetController');
nc.bs.oa.oama.ecm.timesetController = function() {

}
function nc$bs$oa$oama$ecm$timesetController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$timesetController$tabBarOnload(ctx){
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton2',checked:'true'}");
}
function nc$bs$oa$oama$ecm$timesetControllerBase$toTimeset(ctx){
	//nothing to do 
}
nc.bs.oa.oama.ecm.timesetController.prototype = {
    initialize : nc$bs$oa$oama$ecm$timesetController$initialize,
    toTimeset : nc$bs$oa$oama$ecm$timesetControllerBase$toTimeset,
    tabBarOnload : nc$bs$oa$oama$ecm$timesetController$tabBarOnload
};
nc.bs.oa.oama.ecm.timesetController.registerClass('nc.bs.oa.oama.ecm.timesetController');
