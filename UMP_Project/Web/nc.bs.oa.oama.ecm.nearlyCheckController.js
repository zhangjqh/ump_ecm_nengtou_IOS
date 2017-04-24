Type.registerNamespace('nc.bs.oa.oama.ecm.nearlyCheckController');
nc.bs.oa.oama.ecm.nearlyCheckController = function() {

}
function nc$bs$oa$oama$ecm$nearlyCheckController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$nearlyCheckController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$nearlyCheckController$UMonLoad(ctx){
	//your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")
}
function nc$bs$oa$oama$ecm$nearlyCheckController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$nearlyCheckController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$nearlyCheckController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$listViewOnload(ctx){
	//var usrid1 = UM_NativeCall.callService("UMCtx.getValue","{expr:'app.userid'}");
	var param = ctx.params();
	var usrid=param["userid"];
    var cacheKey = "RencentPsnList" + usrid;
    //读出来的是一个对象，写的明明是string?
    var rencentPsnList = $cache.read(cacheKey);
    if(rencentPsnList&&rencentPsnList!=null&&rencentPsnList!=""){
    	//UM_NativeCall.callService("UMCtx.setUMContext",jsonToString(rencentPsnList));
		//ctx.dispose();
		ctx.load(rencentPsnList);
		var psns = ctx.get("persons");
		if(psns!=undefined&&psns!=null){
			var rows=psns.rows();
			for(var i = 0;i<rows.length;i++){
				if(rows[i].get("sex")=="1"){
					rows[i].set(rows[i].rowSelector(),1);
				}else if(rows[i].get("sex")=="2"){
					rows[i].set(rows[i].rowSelector(),2);
				}else{
					rows[i].set(rows[i].rowSelector(),0);
				}
			}
		}
    }
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton0',checked:'true'}");
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNearlyCheck(ctx){
	//nothing to do
}
nc.bs.oa.oama.ecm.nearlyCheckController.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$tabBarOnload,
    UMonInit : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonUnload,
    listViewOnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$listViewOnload,
    UMonComplete : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonDataBinding,
    toNearlyCheck : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNearlyCheck
};
nc.bs.oa.oama.ecm.nearlyCheckController.registerClass('nc.bs.oa.oama.ecm.nearlyCheckController');
