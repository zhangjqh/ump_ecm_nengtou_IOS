Type.registerNamespace('nc.bs.oa.oama.ecm.psnGroupController');
nc.bs.oa.oama.ecm.psnGroupController = function() {
	
}
function nc$bs$oa$oama$ecm$psnGroupController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$psnGroupController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnGroupController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnGroupController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnGroupController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnGroupController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$navbarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'button1',value:'"+$res.getResString("addr_oaadl_0010")+"'}");
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$listViewOnload(ctx){
	var status = $controls.get("listview0","status");
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"getPsnGroupList",
		"params":{
		}
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'getPsnGroupList',params:{}}");
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton1',checked:'true'}");
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$toPsnGroup(ctx){
	//nothing to do
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$addPsnGroup(ctx){
	var psngroupname = ctx["fieldvalue"];
	if(psngroupname!=null && psngroupname!=""){
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
			"action":"addPersonGroup",
			"callback":"listViewOnload",
			"psngroupname":psngroupname
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
		//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'addPersonGroup',params:{psngroupname:'"+psngroupname+"'},callback:'listViewOnload'}");
	}
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$toDelPG(ctx){
	var status = $controls.get("listview0","status");
	var editOrComplete = UM_NativeCall.callService("UMJS.getProperty","{id:'button1',propertyName:'value'}",true);
	if(status=="delete" || editOrComplete==$res.getResString("addr_oaadl_0019")){
		//$controls.set("listview0","status","browse");
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'browse'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button1',value:'"+$res.getResString("addr_oaadl_0010")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',visible:'true'}");
	}else{
		//$controls.set("listview0","status","delete");
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'delete'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button1',value:'"+$res.getResString("addr_oaadl_0019")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',visible:'false'}");
	}
}
function nc$bs$oa$oama$ecm$psnGroupControllerBase$delPsnGroup(ctx){
	var param = ctx.params();
	var rowindex=stringToJSON(param["rowindex"]);
	var psnGroupList=ctx.unload()["persongroups"];
	psnGroupList.splice(rowindex,1);
	ctx.load({"persongroups": psnGroupList});
	
	var row=stringToJSON(param["row"]);
	var psngroupid = row["psngroupid"];
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"deletePersonGroup",
		"contextmapping":"resultField",
		"psngroupid":psngroupid
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'deletePersonGroup',params:{psngroupid:'"+psngroupid+"'},callback:'listViewOnload'}");
}
nc.bs.oa.oama.ecm.psnGroupController.prototype = {
    initialize : nc$bs$oa$oama$ecm$psnGroupController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$psnGroupController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$psnGroupController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$psnGroupController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$psnGroupController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$psnGroupController$UMonDataBinding,
    navbarOnload : nc$bs$oa$oama$ecm$psnGroupControllerBase$navbarOnload,
    listViewOnload : nc$bs$oa$oama$ecm$psnGroupControllerBase$listViewOnload,
    tabBarOnload : nc$bs$oa$oama$ecm$psnGroupControllerBase$tabBarOnload,
    toPsnGroup : nc$bs$oa$oama$ecm$psnGroupControllerBase$toPsnGroup,
    toDelPG : nc$bs$oa$oama$ecm$psnGroupControllerBase$toDelPG,
    delPsnGroup : nc$bs$oa$oama$ecm$psnGroupControllerBase$delPsnGroup,
    addPsnGroup : nc$bs$oa$oama$ecm$psnGroupControllerBase$addPsnGroup
};
nc.bs.oa.oama.ecm.psnGroupController.registerClass('nc.bs.oa.oama.ecm.psnGroupController');
