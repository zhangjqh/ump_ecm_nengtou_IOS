Type.registerNamespace('nc.bs.oa.oama.ecm.pgAddPsnController');
nc.bs.oa.oama.ecm.pgAddPsnController = function() {

}
function nc$bs$oa$oama$ecm$pgAddPsnController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$pgAddPsnController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgAddPsnController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgAddPsnController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgAddPsnController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgAddPsnController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$pgAddPsnController$tipsOnload(ctx){
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getConditionDescription",
		"callback":"setTips", 
		"params":{
		}
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
    //UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.ecm.PsnListExtendController',action:'getConditionDescription',callback:'setTips',params:{}}");
}
function nc$bs$oa$oama$ecm$pgAddPsnControllerBase$setTips(ctx){
	var tip = ctx["conditiondesc"];
    UM_NativeCall.callService("UMJS.setProperty","{id:'search0',placeholder:'"+tip+"'}");
}
function nc$bs$oa$oama$ecm$pgAddPsnController$doSearch(ctx){
    //var condition = ctx.param("searchtext");
    var condition = UM_NativeCall.callService("UMJS.getProperty","{id:'search0',propertyName:'value'}",true);
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getPersonListByCondition",
		"callback":"searchCallback", 
		"startline":"1",
		"count":"25",
		"condition":condition,
		"listid":"listview0",
		"autodatabinding":"false"
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
    //UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.ecm.PsnListExtendController',action:'getPersonListByCondition',count:'25',startline:'1',condition:'"+condition+"',callback:'searchCallback'}");
}
function nc$bs$oa$oama$ecm$pgAddPsnControllerBase$getNextSearch(ctx){
    //var condition = ctx.param("searchtext");
    var condition = UM_NativeCall.callService("UMJS.getProperty","{id:'search0',propertyName:'value'}",true);
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getPersonListByCondition",
		"callback":"searchCallback", 
		"condition":condition,
		"listid":"listview0",
		"autodatabinding":"false"
	};
	UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
    //UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.ecm.PsnListExtendController',action:'getPersonListByCondition',condition:'"+condition+"',callback:'searchCallback',autodatabinding:'false'}");
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$pgAddPsnControllerBase$searchCallback(ctx){
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
function nc$bs$oa$oama$ecm$pgAddPsnController$save(ctx){
	var param = ctx.params();
	var psngroupid = param["psngroupid"];
	var persons = ctx.get("persons");
	if(persons!=undefined&&persons!=null){
		var rows=persons.rows();
		var personids = "";
		for(var i = 0;i<rows.length;i++){
			if(rows[i].get("isChecked")==true || rows[i].get("isChecked")=="true"){
				if(personids==""){
					personids = personids + rows[i].get("psnid") + "," + rows[i].get("psnjobid");
				}else{
					personids = personids + "_" +rows[i].get("psnid") + "," + rows[i].get("psnjobid");
				}
			}
		}
		UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.addresslist.PsnGroupListExtendController',action:'addPsnsToPGroup',params:{psngroupid:'"+psngroupid+"',personids:'"+personids+"'},callback:'cancelTest'}");
	}else{
		_$sys.callAction('cancelTest');
	}
}
function nc$bs$oa$oama$ecm$pgAddPsnController$cancel(ctx){
	var psngroupid = "0001111000000000BVIR";
	var psngroupname = "VOID";
	UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.PgPsnList',iskeep:'false',type:'add',psngroupid:'"+psngroupid+"',psngroupname='"+psngroupname+"'}");
}
function nc$bs$oa$oama$ecm$pgAddPsnControllerBase$setChecked(ctx){
	var persons = ctx.get("persons");
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var isChecked = row["isChecked"];
	var rowIndex = param["cindex"];
	if(isChecked==true || isChecked=="true"){
		isChecked = false;
	}else{
		isChecked = true;
	}
	UM_NativeCall.callService("UMJS.setProperty","{id:'activity',isNeedReLoad:'true'}",true);
	persons.set(rowIndex,"isChecked",isChecked);
}
nc.bs.oa.oama.ecm.pgAddPsnController.prototype = {
    initialize : nc$bs$oa$oama$ecm$pgAddPsnController$initialize,
    tipsOnload : nc$bs$oa$oama$ecm$pgAddPsnController$tipsOnload,
    setTips : nc$bs$oa$oama$ecm$pgAddPsnControllerBase$setTips,
    save : nc$bs$oa$oama$ecm$pgAddPsnController$save,
    doSearch : nc$bs$oa$oama$ecm$pgAddPsnController$doSearch,
    getNextSearch : nc$bs$oa$oama$ecm$pgAddPsnControllerBase$getNextSearch,
    searchCallback : nc$bs$oa$oama$ecm$pgAddPsnControllerBase$searchCallback,
    UMonInit : nc$bs$oa$oama$ecm$pgAddPsnController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$pgAddPsnController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$pgAddPsnController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$pgAddPsnController$UMonComplete,
    cancel : nc$bs$oa$oama$ecm$pgAddPsnController$cancel,
    UMonDataBinding : nc$bs$oa$oama$ecm$pgAddPsnController$UMonDataBinding,
    setChecked : nc$bs$oa$oama$ecm$pgAddPsnControllerBase$setChecked
};
nc.bs.oa.oama.ecm.pgAddPsnController.registerClass('nc.bs.oa.oama.ecm.pgAddPsnController');
