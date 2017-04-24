Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_ShareappController');
nc.bs.oa.oama.ecm.Ecm_ShareappController = function() {

}
function nc$bs$oa$oama$ecm$Ecm_ShareappController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$Ecm_ShareappController$loadset(ctx){
   UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton4',checked:'true'}");
}
function nc$bs$oa$oama$ecm$Ecm_ShareappController$openurl(ctx){
   alert("start");
   window.location.href="www.baidu.com";
}
nc.bs.oa.oama.ecm.Ecm_ShareappController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_ShareappController$initialize,
    loadset : nc$bs$oa$oama$ecm$Ecm_ShareappController$loadset,
    openurl : nc$bs$oa$oama$ecm$Ecm_ShareappController$openurl
};
nc.bs.oa.oama.ecm.Ecm_ShareappController.registerClass('nc.bs.oa.oama.ecm.Ecm_ShareappController');
