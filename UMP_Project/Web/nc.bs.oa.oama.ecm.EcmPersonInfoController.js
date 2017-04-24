Type.registerNamespace('nc.bs.oa.oama.ecm.EcmPersonInfoController');
nc.bs.oa.oama.ecm.EcmPersonInfoController = function() {}

function nc$bs$oa$oama$ecm$EcmPersonInfoController$onDataLoad(ctx){
	var currentperson = stringToJSON(ctx.params()["currentperson"]);
	ctx.load(currentperson);
	
	var type = {
		"initactor" : $res.getResString("flow_initactor"), // 发起人
		"transactor" : $res.getResString("flow_transactor"), // 处理人
		"information" : $res.getResString("flow_touchmethod") // 联系方式
	}; 
	$controls.set("navLabel", "text", type[currentperson["type"]]);
}
function nc$bs$oa$oama$ecm$EcmPersonInfoController$onMobileClick(ctx){
	ctx.dispose();
	
	var person = ctx.unload();
	if(person["mobile"]){
		_$sys.callAction('afterMobileClick');
	}
}
function nc$bs$oa$oama$ecm$EcmPersonInfoController$onWorkClick(ctx){
	ctx.dispose();
	
	var person = ctx.unload();
	if(person["work"]){
		var params = {
			"tel" : person["work"]
		};
		
		$service.callService("UMDevice.callPhone", jsonToString(params));
	}
}
function nc$bs$oa$oama$ecm$EcmPersonInfoController$onHomeClick(ctx){
	ctx.dispose();
	
	var person = ctx.unload();
	if(person["home"]){
		var params = {
			"tel" : person["home"]
		};
		
		$service.callService("UMDevice.callPhone", jsonToString(params));
	}
}
function nc$bs$oa$oama$ecm$EcmPersonInfoController$onEmailClick(ctx){
	ctx.dispose();
	
	var person = ctx.unload();
	if(person["email"]){
		var params = {
			"receive" : person["email"],
			"title" : ctx.params()["title"],
			"content" : ""
		};
		
		$service.callService("UMDevice.sendMail", jsonToString(params));
	}
}

function nc$bs$oa$oama$ecm$EcmPersonInfoController$initialize(ctx){}

nc.bs.oa.oama.ecm.EcmPersonInfoController.prototype = {
    initialize : nc$bs$oa$oama$ecm$EcmPersonInfoController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$EcmPersonInfoController$onDataLoad,
    onMobileClick : nc$bs$oa$oama$ecm$EcmPersonInfoController$onMobileClick,
    onWorkClick : nc$bs$oa$oama$ecm$EcmPersonInfoController$onWorkClick,
    onHomeClick : nc$bs$oa$oama$ecm$EcmPersonInfoController$onHomeClick,
    onEmailClick : nc$bs$oa$oama$ecm$EcmPersonInfoController$onEmailClick
};
nc.bs.oa.oama.ecm.EcmPersonInfoController.registerClass('nc.bs.oa.oama.ecm.EcmPersonInfoController');
