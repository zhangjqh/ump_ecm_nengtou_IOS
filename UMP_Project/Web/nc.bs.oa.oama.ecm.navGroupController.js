Type.registerNamespace('nc.bs.oa.oama.ecm.navGroupController');
nc.bs.oa.oama.ecm.navGroupController = function() {

}
function nc$bs$oa$oama$ecm$navGroupController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$navGroupController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupControllerBase$toNavGroup(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navGroupControllerBase$listViewOnload(ctx){
    var navid = "";
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
		"action":"getOrgNavList",
		"callback":"setSelector", 
		"startline":"1",
		"count":"25",
		"listid":"listview0",
		"navid":navid
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	//UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.ecm.NavListExtendController',action:'getOrgNavList',count:'25',startline:'1',navid:'"+navid+"',callback:'setSelector'}");
	//ctx.set("isSearch","false");
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$setSelector(ctx){
	var navs = ctx.get("navs");
	if(navs!=undefined&&navs!=null){
		var rows=navs.rows();
		for(var i = 0;i<rows.length;i++){
			if(rows[i].get("end")=="N"){
				rows[i].set(rows[i].rowSelector(),0);
			}else{
				if(rows[i].get("psncnt")=="0"){
					rows[i].set(rows[i].rowSelector(),1);
				}else{
					rows[i].set(rows[i].rowSelector(),2);
				}
			}
		}
	}
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton3',checked:'true'}");
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$doSearch(ctx){
    var condition = ctx.param("searchtext");
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
		"action":"getOrgsByCondition",
		"callback":"setSelector", 
		"startline":"1",
		"count":"25",
		"listid":"listview0",
		"condition":condition
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
    //UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.ecm.NavListExtendController',action:'getOrgsByCondition',count:'25',startline:'1',condition:'"+condition+"',callback:'setSelector'}");
    //ctx.set("isSearch","true");
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$getNextPage(ctx){
	if(ctx.get("isSearch")=="true"){
		var condition = $controls.get("search0","keyword");//ctx.param("searchtext");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
			"action":"getOrgsByCondition",
			"callback":"setSelector", 
			"condition":condition,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.NavListExtendController',action:'getOrgsByCondition',condition:'"+condition+"',callback:'setSelector',autodatabinding:'false'}");
	}else{
		var navid = "";
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
			"action":"getOrgNavList",
			"callback":"setSelector", 
			"navid":navid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.NavListExtendController',action:'getOrgNavList',navid:'"+navid+"',callback:'setSelector',autodatabinding:'false'}");
	}
	ctx.dispose();
}
nc.bs.oa.oama.ecm.navGroupController.prototype = {
    initialize : nc$bs$oa$oama$ecm$navGroupController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$navGroupController$UMonInit,
    toNavGroup : nc$bs$oa$oama$ecm$navGroupControllerBase$toNavGroup,
    UMonLoad : nc$bs$oa$oama$ecm$navGroupController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$navGroupController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$navGroupController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$navGroupController$UMonDataBinding,
    listViewOnload : nc$bs$oa$oama$ecm$navGroupControllerBase$listViewOnload,
    getNextPage : nc$bs$oa$oama$ecm$navGroupControllerBase$getNextPage,
    setSelector : nc$bs$oa$oama$ecm$navGroupControllerBase$setSelector,
    tabBarOnload : nc$bs$oa$oama$ecm$navGroupControllerBase$tabBarOnload,
    doSearch : nc$bs$oa$oama$ecm$navGroupControllerBase$doSearch
};
nc.bs.oa.oama.ecm.navGroupController.registerClass('nc.bs.oa.oama.ecm.navGroupController');
