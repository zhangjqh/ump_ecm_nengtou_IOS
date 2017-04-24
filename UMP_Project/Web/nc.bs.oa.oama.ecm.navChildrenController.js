Type.registerNamespace('nc.bs.oa.oama.ecm.navChildrenController');
nc.bs.oa.oama.ecm.navChildrenController = function() {

}
function nc$bs$oa$oama$ecm$navChildrenController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    //console.msg("sss");
}
function nc$bs$oa$oama$ecm$navChildrenController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navChildrenController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navChildrenController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navChildrenController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navChildrenController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$listViewOnload(ctx){
    var param = ctx.params();
    var row=stringToJSON(param["row"]);
    var navid = row["navid"];
    var navName = row["navname"];
	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+navName+"'}");
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
		"action":"getOrgNavList",
		"callback":"setSelector", 
		"startline":"1",
		"count":"25",
		"navid":navid,
		"listid":"listview0",
		"autodatabinding":"false"
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$getNextPage(ctx){
    var param = ctx.params();
    var row=stringToJSON(param["row"]);
    var navid = row["navid"];
    var navName = row["navname"];
	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+navName+"'}");
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
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$setSelector(ctx){
	var navs = ctx.get("navs");
	var rows=navs.rows();
	for(var i=0;i<rows.length;i++){
		if(rows[i].get("navtype")=="2"){
			if(rows[i].get("sex")=="1"){
				rows[i].set(rows[i].rowSelector(),5);
			}else if(rows[i].get("sex")=="2"){
				rows[i].set(rows[i].rowSelector(),4);
			}else{
				rows[i].set(rows[i].rowSelector(),0);
			}
		}else if(rows[i].get("navtype")=="3"){
			rows[i].set(rows[i].rowSelector(),3);
		}else{
			if(rows[i].get("end")=="N"){
				rows[i].set(rows[i].rowSelector(),1);
			}else{
				if(rows[i].get("psncnt")=="0"){
					rows[i].set(rows[i].rowSelector(),2);
				}else{
					rows[i].set(rows[i].rowSelector(),3);
				}
			}
		}
	}
}
nc.bs.oa.oama.ecm.navChildrenController.prototype = {
    initialize : nc$bs$oa$oama$ecm$navChildrenController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$navChildrenController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$navChildrenController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$navChildrenController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$navChildrenController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$navChildrenController$UMonDataBinding,
    listViewOnload : nc$bs$oa$oama$ecm$navChildrenControllerBase$listViewOnload,
    getNextPage : nc$bs$oa$oama$ecm$navChildrenControllerBase$getNextPage,
    setSelector : nc$bs$oa$oama$ecm$navChildrenControllerBase$setSelector
};
nc.bs.oa.oama.ecm.navChildrenController.registerClass('nc.bs.oa.oama.ecm.navChildrenController');
