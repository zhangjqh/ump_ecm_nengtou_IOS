Type.registerNamespace('nc.bs.oa.oama.ecm.repeatdayrefController');
nc.bs.oa.oama.ecm.repeatdayrefController = function() {

}
function nc$bs$oa$oama$ecm$repeatdayrefController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$repeatdayrefController$initChecked(ctx){
	var param = ctx.params();
	var crows=stringToJSON(param["crows"]);
	var repeatdays = ctx.get("repeatdayresfs");
	if(repeatdays!=undefined&&repeatdays!=null&&crows!=undefined&&crows!=null){
		var rows=repeatdays.rows();
		for(var i=0;i<rows.length;i++){
			for(var j=0;j<crows.length;j++){
				if(crows[j]["isChecked"]==true || crows[j]["isChecked"]=="true"){
					if(rows[i].get("key")==crows[j]["key"]){
						repeatdays.set(i,"isChecked",true);
					}
				}
			}
		}
	}
}
function nc$bs$oa$oama$ecm$repeatdayrefController$setChecked(ctx){
    var repeatdayresfs = ctx.get("repeatdayresfs");
	var param = ctx.params();
	var crow=stringToJSON(param["crow"]);
	var isChecked = crow["isChecked"];
	var rowIndex = param["cindex"];
	if(isChecked==true || isChecked=="true"){
		isChecked = false;
	}else{
		isChecked = true;
	}
	repeatdayresfs.set(rowIndex,"isChecked",isChecked);
}
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$returnResult(ctx){
	var repeatdayresfsList = ctx.get("repeatdayresfs");
	var repeatdayresfs = [];
	var repeatday = "";
	var repeatdaydesc = "";
	var j=0;
	for(var i=0; i<repeatdayresfsList.length(); i++){
		repeatdayresfs.push(stringToJSON(repeatdayresfsList.rows()[i].unload()));
		if(repeatdayresfsList.get(i,"isChecked")==true || repeatdayresfsList.get(i,"isChecked")=="true"){
			if(j==0){
				repeatday = repeatdayresfsList.get(i,"key");
				repeatdaydesc = repeatdayresfsList.get(i,"name");
			}else{
				repeatday = repeatday + "," + repeatdayresfsList.get(i,"key");
				repeatdaydesc = repeatdaydesc + "," + repeatdayresfsList.get(i,"name");
			}
			j++;
		}
	}
	var args = {
		"iskeep":"false",
		"resultcode":"15",
		"result":{
			"repeatdayresfs":repeatdayresfs,
			"repeatdaydesc":repeatdaydesc,
			"repeatday":repeatday
		}
	};
	UM_NativeCall.callService("UMView.close",jsonToString(args));
	//UM_NativeCall.callService("UMView.close", "{iskeep:false,resultcode:'15',result:{repeatdayresfs:"+jsonToString(repeatdayresfs)+",repeatdaydesc:'"+repeatdaydesc+"',repeatday:'"+repeatday+"'}}");
}
nc.bs.oa.oama.ecm.repeatdayrefController.prototype = {
    initialize : nc$bs$oa$oama$ecm$repeatdayrefController$initialize,
    initChecked : nc$bs$oa$oama$ecm$repeatdayrefController$initChecked,
    setChecked : nc$bs$oa$oama$ecm$repeatdayrefController$setChecked,
    returnResult : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$returnResult
};
nc.bs.oa.oama.ecm.repeatdayrefController.registerClass('nc.bs.oa.oama.ecm.repeatdayrefController');
