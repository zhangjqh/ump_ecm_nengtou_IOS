Type.registerNamespace('nc.bs.oa.oama.ecm.Info_commentdetailController');
nc.bs.oa.oama.ecm.Info_commentdetailController = function() {

}
function nc$bs$oa$oama$ecm$Info_commentdetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$Info_commentdetailController$dataload(ctx){
     var commentRow = ctx.params()["commentrow"];
     if(commentRow && typeof commentRow == "string"){
     	commentRow = stringToJSON(commentRow);
     }
     var commentPerson = commentRow["commentperson"];
     var commentdate = commentRow["commentdate"];
     var commentcontent = commentRow["commentcontent"];
     $controls.set("commentperson", "text", commentPerson);
     $controls.set("commentdate", "text", commentdate);
     $controls.set("commentcontent", "text", commentcontent);

}
function nc$bs$oa$oama$ecm$Info_commentdetailController$label0_onclick(){

}
nc.bs.oa.oama.ecm.Info_commentdetailController.prototype = {
    label0_onclick : nc$bs$oa$oama$ecm$Info_commentdetailController$label0_onclick,
    initialize : nc$bs$oa$oama$ecm$Info_commentdetailController$initialize,
    dataload : nc$bs$oa$oama$ecm$Info_commentdetailController$dataload
};
nc.bs.oa.oama.ecm.Info_commentdetailController.registerClass('nc.bs.oa.oama.ecm.Info_commentdetailController');
