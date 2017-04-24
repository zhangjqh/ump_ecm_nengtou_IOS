Type.registerNamespace('nc.bs.oa.oama.ecm.psnListController');
nc.bs.oa.oama.ecm.psnListController = function() {

}
function nc$bs$oa$oama$ecm$psnListController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$psnListController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnListController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnListController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnListController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnListController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnListControllerBase$listViewOnload(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var type = param["type"];
	if(type=="psn"){
		var psngroupid = row["psngroupid"];
		var psngroupname = row["psngroupname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+psngroupname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
			"action":"getPersonListByGroupID",
			"callback":"onloadCallback", 
			"startline":"1",
			"count":"25",
			"psngroupid":psngroupid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	}else if(type=="ent"){
		var egroupid = row["egroupid"];
		var groupname = row["groupname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+groupname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.EGroupListExtendController",
			"action":"getPersonListByEntGroupID",
			"callback":"onloadCallback", 
			"startline":"1",
			"count":"25",
			"egroupid":egroupid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	}else if(type=="nav"){
		var navid = row["navid"];
		var navname = row["navname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+navname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
			"action":"getPersonListByNavID",
			"callback":"onloadCallback", 
			"startline":"1",
			"count":"25",
			"navid":navid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$psnListControllerBase$getNextPage(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var type = param["type"];
	if(type=="psn"){
		var psngroupid = row["psngroupid"];
		var psngroupname = row["psngroupname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+psngroupname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
			"action":"getPersonListByGroupID",
			"callback":"onloadCallback", 
			"psngroupid":psngroupid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'getPersonListByGroupID',psngroupid:'"+psngroupid+"',callback:'onloadCallback',autodatabinding:'false'}");
	}else if(type=="ent"){
		var egroupid = row["egroupid"];
		var groupname = row["groupname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+groupname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.EGroupListExtendController",
			"action":"getPersonListByEntGroupID",
			"callback":"onloadCallback", 
			"egroupid":egroupid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.EGroupListExtendController',action:'getPersonListByEntGroupID',egroupid:'"+egroupid+"',callback:'onloadCallback',autodatabinding:'false'}");
	}else if(type=="nav"){
		var navid = row["navid"];
		var navname = row["navname"];
		UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+navname+"'}");
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.NavListExtendController",
			"action":"getPersonListByNavID",
			"callback":"onloadCallback", 
			"navid":navid,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.NavListExtendController',action:'getPersonListByNavID',navid:'"+navid+"',callback:'onloadCallback',autodatabinding:'false'}");
	}
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$psnListControllerBase$onloadCallback(ctx){
	var psns = ctx.get("persons");
	if(psns!=undefined&&psns!=null){
		var rows=psns.rows();
		for(var i = 0;i<rows.length;i++){
			if(rows[i].get("sex")=="1"){
				rows[i].set(rows[i].rowSelector(),2);
			}else if(rows[i].get("sex")=="2"){
				rows[i].set(rows[i].rowSelector(),1);
			}else{
				rows[i].set(rows[i].rowSelector(),0);
			}
		}
	}
}
nc.bs.oa.oama.ecm.psnListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$psnListController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$psnListController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$psnListController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$psnListController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$psnListController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$psnListController$UMonDataBinding,
    getNextPage : nc$bs$oa$oama$ecm$psnListControllerBase$getNextPage,
    listViewOnload : nc$bs$oa$oama$ecm$psnListControllerBase$listViewOnload,
    onloadCallback : nc$bs$oa$oama$ecm$psnListControllerBase$onloadCallback
};
nc.bs.oa.oama.ecm.psnListController.registerClass('nc.bs.oa.oama.ecm.psnListController');
