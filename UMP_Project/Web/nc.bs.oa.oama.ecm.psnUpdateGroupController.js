Type.registerNamespace('nc.bs.oa.oama.ecm.psnUpdateGroupController');
nc.bs.oa.oama.ecm.psnUpdateGroupController = function() {

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$listViewOnload(ctx){
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnGroupListExtendController",
		"action":"getPsnGroupList",
		"callback":"initChecked", 
		"params":{
		}
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
}
function nc$bs$oa$oama$ecm$psnUpdateGroupControllerBase$initChecked(ctx){
	var param = ctx.params();
	var crows = stringToJSON(param["crows"]);
	var persongroups = ctx.get("persongroups");
	if(persongroups!=undefined&&persongroups!=null){
		var rows=persongroups.rows();
		for(var i=0;i<rows.length;i++){
			for(var j=0;j<crows.length;j++){
				if(rows[i].get("psngroupid")==crows[j]["psngroupid"]){
					persongroups.set(i,"isChecked",true);
				}
			}
		}
	}
}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$onSave(ctx){
	var param = ctx.params();
	var personid = param["psnid"];
	var psnjobid = param["psnjobid"];
	var persongroups = ctx.get("persongroups");
	if(persongroups!=undefined&&persongroups!=null){
		var rows=persongroups.rows();
		var psngroupids = "";
		for(var i = 0;i<rows.length;i++){
			if(rows[i].get("isChecked")==true || rows[i].get("isChecked")=="true"){
				if(psngroupids==""){
					psngroupids = psngroupids + rows[i].get("psngroupid");
				}else{
					psngroupids = psngroupids + "," +rows[i].get("psngroupid");
				}
			}
		}
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
			"action":"updatePsnGroups",
			"callback":"onCancel", 
			"personid":personid,
			"psnjobid":psnjobid,
			"psngroupids":psngroupids
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}else{
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
			"action":"updatePsnGroups",
			"callback":"onCancel", 
			"personid":personid,
			"psnjobid":psnjobid,
			"psngroupids":""
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$psnUpdateGroupController$setChecked(ctx){
	var persongroups = ctx.get("persongroups");
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var isChecked = row["isChecked"];
	var rowIndex = param["cindex"];
	if(isChecked==true || isChecked=="true"){
		isChecked = false;
	}else{
		isChecked = true;
	}
	persongroups.set(rowIndex,"isChecked",isChecked);
}
nc.bs.oa.oama.ecm.psnUpdateGroupController.prototype = {
    initialize : nc$bs$oa$oama$ecm$psnUpdateGroupController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonLoad,
    onSave : nc$bs$oa$oama$ecm$psnUpdateGroupController$onSave,
    UMonUnload : nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonUnload,
    initChecked : nc$bs$oa$oama$ecm$psnUpdateGroupControllerBase$initChecked,
    setChecked : nc$bs$oa$oama$ecm$psnUpdateGroupController$setChecked,
    listViewOnload : nc$bs$oa$oama$ecm$psnUpdateGroupController$listViewOnload,
    UMonComplete : nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$psnUpdateGroupController$UMonDataBinding
};
nc.bs.oa.oama.ecm.psnUpdateGroupController.registerClass('nc.bs.oa.oama.ecm.psnUpdateGroupController');
