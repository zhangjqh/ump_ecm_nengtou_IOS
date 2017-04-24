Type.registerNamespace('nc.bs.oa.oama.ecm.pgPsnListController');
nc.bs.oa.oama.ecm.pgPsnListController = function() {

}
function nc$bs$oa$oama$ecm$pgPsnListController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$pgPsnListController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgPsnListController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgPsnListController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgPsnListController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgPsnListController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$navbarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("addr_oaadl_0010")+"'}");
}
 var psngroupid = "";
 var psngroupname = "";
function nc$bs$oa$oama$ecm$pgPsnListController$listViewOnload(ctx){
    var param = ctx.params();
   
	var type = param["type"];
	if(type=="add"){
		psngroupid = param["psngroupid"];
		psngroupname = param["psngroupname"];
	}
	else
	{
		if(psngroupid==null ||psngroupid =="")
		{
			var row=stringToJSON(param["currentrow"]);
			psngroupid = row["psngroupid"];
			psngroupname = row["psngroupname"];	
		}
		
	}
	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+psngroupname+"'}");
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"getPersonListByGroupID",
		"callback":"onloadCallback", 
		"startline":"1",
		"count":"25",
		"psngroupid":psngroupid,
		"psngroupname":psngroupname,
		"listid":"listview0",
		"autodatabinding":"false"
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
	//UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'getPersonListByGroupID',count:'25',startline:'1',psngroupid:'"+psngroupid+"',psngroupname:'"+psngroupname+"',callback:'onloadCallback'}");
}
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$getNextPage(ctx){
	var param = ctx.params();
	var type = param["type"];
	if(type=="add"){
		psngroupid = param["psngroupid"];
		psngroupname = param["psngroupname"];
	}
	else
	{
		if(psngroupid==null ||psngroupid =="")
		{
			var row=stringToJSON(param["currentrow"]);
			psngroupid = row["psngroupid"];
			psngroupname = row["psngroupname"];	
		}
	}
	UM_NativeCall.callService("UMJS.setProperty","{id:'label0',text:'"+psngroupname+"'}");
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"getPersonListByGroupID",
		"callback":"onloadCallback", 
		"psngroupid":psngroupid,
		"psngroupname":psngroupname,
		"listid":"listview0",
		"autodatabinding":"false"
	};
	UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
	//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'getPersonListByGroupID',psngroupid:'"+psngroupid+"',psngroupname:'"+psngroupname+"',callback:'onloadCallback',autodatabinding:'false'}");
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$onloadCallback(ctx){
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
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$toPgAddPsn(ctx){
	var psngroupid = ctx["psngroupid"];
	var psngroupname = ctx["psngroupname"];
	var args = {
		"viewid" : "nc.bs.oa.oama.ecm.Addr_pgAddPsn",
		"iskeep" : "true",
		"psngroupid" : psngroupid,
		"psngroupname" : psngroupname,
		"callback" : "listViewOnload"
	};
	UM_NativeCall.callService("UMView.open", jsonToString(args)); 
	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.PgAddPsn',iskeep:'true',psngroupid:'"+psngroupid+"',psngroupname:'"+psngroupname+"',callback:'listViewOnload'}");
}
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$toDelPsn(ctx){
	var status = $controls.get("listview0","status");
	var editOrComplete = UM_NativeCall.callService("UMJS.getProperty","{id:'button1',propertyName:'value'}",true);
	if(status=="delete" || editOrComplete==$res.getResString("addr_oaadl_0019")){
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'browse'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("addr_oaadl_0010")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button0',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button1',visible:'true'}");
	}else{
		UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',status:'delete'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button2',value:'"+$res.getResString("addr_oaadl_0019")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button0',visible:'false'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'button1',visible:'false'}");
	}
}
function nc$bs$oa$oama$ecm$pgPsnListControllerBase$delPsn(ctx){
	var param = ctx.params();
	var pgrow=stringToJSON(param["pgrow"]);
	if(psngroupid==null ||psngroupid =="")
	{
		psngroupid = pgrow["psngroupid"];
	}
	var psnrow=stringToJSON(param["psnrow"]);
	var psnid = psnrow["psnid"];
	var psnjobid = psnrow["psnjobid"];
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"delPsnsToPGroup",
		"callback":"listViewOnload", 
		"psngroupid":psngroupid,
		"personids":psnid+","+psnjobid
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.ecm.PsnGroupListExtendController',action:'delPsnsToPGroup',params:{psngroupid:'"+psngroupid+"',personids:'"+psnid+"'},callback:'listViewOnload'}");
}
nc.bs.oa.oama.ecm.pgPsnListController.prototype = {
    initialize : nc$bs$oa$oama$ecm$pgPsnListController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$pgPsnListController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$pgPsnListController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$pgPsnListController$UMonUnload,
    navbarOnload : nc$bs$oa$oama$ecm$pgPsnListControllerBase$navbarOnload,
    listViewOnload : nc$bs$oa$oama$ecm$pgPsnListController$listViewOnload,
    getNextPage : nc$bs$oa$oama$ecm$pgPsnListControllerBase$getNextPage,
    onloadCallback : nc$bs$oa$oama$ecm$pgPsnListControllerBase$onloadCallback,
    UMonComplete : nc$bs$oa$oama$ecm$pgPsnListController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$pgPsnListController$UMonDataBinding,
    toPgAddPsn : nc$bs$oa$oama$ecm$pgPsnListControllerBase$toPgAddPsn,
    toDelPsn : nc$bs$oa$oama$ecm$pgPsnListControllerBase$toDelPsn,
    delPsn : nc$bs$oa$oama$ecm$pgPsnListControllerBase$delPsn
};
nc.bs.oa.oama.ecm.pgPsnListController.registerClass('nc.bs.oa.oama.ecm.pgPsnListController');
