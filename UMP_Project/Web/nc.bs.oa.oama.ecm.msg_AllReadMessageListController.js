Type.registerNamespace('nc.bs.oa.oama.ecm.msg_AllReadMessageListController');
nc.bs.oa.oama.ecm.msg_AllReadMessageListController = function() {

}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListController$onItemClick(ctx){
	alert(ctx);
}
nc.bs.oa.oama.ecm.msg_AllReadMessageListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$msg_AllReadMessageListController$initialize,
     onItemClick : nc$bs$oa$oama$ecm$msg_AllReadMessageListController$onItemClick,
    ReLoadData : nc$bs$oa$oama$ecm$msg_AllReadMessageListController$ReLoadData
};
nc.bs.oa.oama.ecm.msg_AllReadMessageListController.registerClass('nc.bs.oa.oama.ecm.msg_AllReadMessageListController');
