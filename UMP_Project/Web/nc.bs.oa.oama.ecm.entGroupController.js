Type.registerNamespace('nc.bs.oa.oama.ecm.entGroupController');
nc.bs.oa.oama.ecm.entGroupController = function() {

}
function nc$bs$oa$oama$ecm$entGroupController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$entGroupController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupControllerBase$toEntGroup(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$entGroupControllerBase$listViewOnload(ctx){
	UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.addresslist.EGroupListExtendController',action:'getEnterpriseGroup',params:{},callback:'setSelector'}");
}
function nc$bs$oa$oama$ecm$entGroupControllerBase$setSelector(ctx){
	var eGroups = ctx.get("eGroups");
	var rows=eGroups.rows();
	for(var i=0;i<rows.length;i++){
		if(rows[i].get("psnnum")=="0"){
			rows[i].set(rows[i].rowSelector(),1);
		}else{
			rows[i].set(rows[i].rowSelector(),0);
		}
	}
}
function nc$bs$oa$oama$ecm$entGroupControllerBase$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton4',checked:'true'}");
}
nc.bs.oa.oama.ecm.entGroupController.prototype = {
    initialize : nc$bs$oa$oama$ecm$entGroupController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$entGroupController$UMonInit,
    toEntGroup : nc$bs$oa$oama$ecm$entGroupControllerBase$toEntGroup,
    UMonLoad : nc$bs$oa$oama$ecm$entGroupController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$entGroupController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$entGroupController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$entGroupController$UMonDataBinding,
    listViewOnload : nc$bs$oa$oama$ecm$entGroupControllerBase$listViewOnload,
    setSelector : nc$bs$oa$oama$ecm$entGroupControllerBase$setSelector,
    tabBarOnload : nc$bs$oa$oama$ecm$entGroupControllerBase$tabBarOnload
};
nc.bs.oa.oama.ecm.entGroupController.registerClass('nc.bs.oa.oama.ecm.entGroupController');
