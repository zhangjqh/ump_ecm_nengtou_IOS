Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_SetController');
nc.bs.oa.oama.ecm.Ecm_SetController = function() {}
function nc$bs$oa$oama$ecm$Ecm_SetController$initialize(ctx){}
function nc$bs$oa$oama$ecm$Ecm_SetController$toSet(ctx){}

function nc$bs$oa$oama$ecm$Ecm_SetController$initSet(ctx){
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton4',checked:'true'}");
    var ispush = $cache.readFile("ECMRECEIVERPUSH");
    if(ispush){
	    $controls.set("switch0", "value", ispush);
    }else{
    	$controls.set("switch0", "value", "on");
    }
}

function nc$bs$oa$oama$ecm$Ecm_SetController$logoutFailed(ctx){
	if(ctx && ctx["parameter"] && ctx["parameter"]["err_msg"]){
		errorMsg = ctx["parameter"]["err_msg"];
		//"nc.bs.oa.oama.ecm.EcmController.logout(java.lang.String)"
	}
	if(errorMsg && errorMsg == "nc.bs.oa.oama.ecm.EcmController.logout(java.lang.String)"){
		 _$sys.callAction('toLogin');
	}else{
		var serviceType = "UMView.openDialog";
	    var serviceparams = {
			"title" : "提示",
			"style" : "ok",
			"isDataCollect" : "true",
			"okbuttontitle" : "确定",
			"message"  : "退出异常"
		};
      var serviceparams = $jsonToString(serviceparams);              
	  UM_NativeCall.callService(serviceType,serviceparams);
	}
}
function nc$bs$oa$oama$ecm$Ecm_SetController$receiverpushevent(ctx){
	var pushstatus = ctx["parameter"]["status"];
	if(pushstatus == "on"){
		_$sys.callAction('startpushservice');
		$cache.writeFile("ECMRECEIVERPUSH", "on");
	}else{
		_$sys.callAction('stoppushservice');
		$cache.writeFile("ECMRECEIVERPUSH", "off");
	}
}

nc.bs.oa.oama.ecm.Ecm_SetController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_SetController$initialize,
    initSet : nc$bs$oa$oama$ecm$Ecm_SetController$initSet,
    toSet : nc$bs$oa$oama$ecm$Ecm_SetController$toSet,
    logoutFailed : nc$bs$oa$oama$ecm$Ecm_SetController$logoutFailed,
    receiverpushevent : nc$bs$oa$oama$ecm$Ecm_SetController$receiverpushevent
};
nc.bs.oa.oama.ecm.Ecm_SetController.registerClass('nc.bs.oa.oama.ecm.Ecm_SetController');
