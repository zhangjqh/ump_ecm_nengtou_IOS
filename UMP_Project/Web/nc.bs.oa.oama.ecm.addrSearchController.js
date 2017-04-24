Type.registerNamespace('nc.bs.oa.oama.ecm.addrSearchController');
var RECENTCACHEKEY = "OAADDRRECENTCACHE"; // 必须与nc.bs.oa.oama.ecm.psnDetailController中变量同名
nc.bs.oa.oama.ecm.addrSearchController = function() {

}
function nc$bs$oa$oama$ecm$addrSearchController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$addrSearchController$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton0',checked:'true'}");
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$addrSearchController$tipsOnload(ctx){
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getConditionDescription",
		"callback":"setTips", 
		"params":{
		}
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
    //UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.addresslist.PsnListExtendController',action:'getConditionDescription',callback:'setTips',params:{}}");
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$addrSearchController$doSearch(ctx){
    var condition = ctx.param("searchtext");
    var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getPersonListByCondition",
		"callback":"searchCallback", 
		"startline":"1",
		"count":"25",
		"condition":condition
	};
	UM_NativeCall.callService("UMList.getFirstPage",jsonToString(args));
    //UM_NativeCall.callService("UMList.getFirstPage","{viewid:'nc.bs.oa.oama.addresslist.PsnListExtendController',action:'getPersonListByCondition',count:'25',startline:'1',condition:'"+condition+"',callback:'searchCallback'}");
}
function nc$bs$oa$oama$ecm$addrSearchController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$getNextSearch(ctx){
    var condition = $controls.get("search0","keyword");;
	if(ctx["isSearch"]=="true"){
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
			"action":"getPersonListByCondition",
			"callback":"searchCallback",
			"condition":condition,
			"listid":"listview0",
			"autodatabinding":"false"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
		//UM_NativeCall.callService("UMList.getNextPage","{viewid:'nc.bs.oa.oama.addresslist.PsnListExtendController',action:'getPersonListByCondition',condition:'"+condition+"',callback:'searchCallback',autodatabinding:'false'}");
	}else{
		var args = {
			"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
			"action":"getPersonListByCondition",
			"callback":"searchCallback",
			"condition":condition,
			"autodatabinding":"false",
			"listid":"listview0",
			"clearData":"true"
		};
		UM_NativeCall.callService("UMList.getNextPage",jsonToString(args));
	}
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$addrSearchController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$toSearch(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$searchCallback(ctx){
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
	ctx.set("isSearch","true");
}
function nc$bs$oa$oama$ecm$addrSearchController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$addrSearchController$setTips(ctx){
    var params = {
    	"id" : "search0",
    	"placeholder" : ctx["conditiondesc"]
    };
    UM_NativeCall.callService("UMJS.setProperty", jsonToString(params));

    var param = ctx.params();
	var userid=param["userid"];
    var recentList = stringToJSON($cache.readFile(RECENTCACHEKEY + userid)) || [];
    if(recentList){
    	for(var i = 0;i<recentList.length;i++){
    		var psn = recentList[i];
    		if("1" == psn["sex"]){
				psn["ListViewSelector"]== 2;
			}else if("2" == psn["sex"]){
				psn["ListViewSelector"]== 1;
			}else{
				psn["ListViewSelector"]== 0;
			}
    	}
		ctx.load({"persons" : recentList});
    }
}
nc.bs.oa.oama.ecm.addrSearchController.prototype = {
    initialize : nc$bs$oa$oama$ecm$addrSearchController$initialize,
    tabBarOnload : nc$bs$oa$oama$ecm$addrSearchController$tabBarOnload,
    tipsOnload : nc$bs$oa$oama$ecm$addrSearchController$tipsOnload,
    doSearch : nc$bs$oa$oama$ecm$addrSearchController$doSearch,
    UMonUnload : nc$bs$oa$oama$ecm$addrSearchController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$addrSearchController$UMonComplete,
    getNextSearch : nc$bs$oa$oama$ecm$addrSearchController$getNextSearch,
    UMonDataBinding : nc$bs$oa$oama$ecm$addrSearchController$UMonDataBinding,
    toSearch : nc$bs$oa$oama$ecm$addrSearchController$toSearch,
    searchCallback : nc$bs$oa$oama$ecm$addrSearchController$searchCallback,
    UMonInit : nc$bs$oa$oama$ecm$addrSearchController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$addrSearchController$UMonLoad,
    setTips : nc$bs$oa$oama$ecm$addrSearchController$setTips
};
nc.bs.oa.oama.ecm.addrSearchController.registerClass('nc.bs.oa.oama.ecm.addrSearchController');
