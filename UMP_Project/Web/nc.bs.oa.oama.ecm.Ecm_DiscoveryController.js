Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_DiscoveryController');
nc.bs.oa.oama.ecm.Ecm_DiscoveryController = function() {

}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryController$initialize(ctx){}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryController$toDiscovery(ctx){}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryController$initDiscovery(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton2',checked:'true'}");
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryController$qrcodejs(ctx){
	var key = unescape(ctx.get("key"));
	var keyjson = stringToJSON(key); 
	var yonyouECM = keyjson["yonyouECM"];
	if(yonyouECM && yonyouECM != "undefined"){//ECM 应用
		
		alert("ECM应用");
		
	}else if(key.indexOf("http")==0){//可用浏览器打开的二维码信息
		var args = {
			"url" : key,
			"action" : "VIEW"
		};
		UM_NativeCall.callService("UMDevice.openWebView",jsonToString(args));
	}else{//单纯的信息二维码，展示在新的页面
		//alert(key);
		var args = {
			"viewid" : "nc.bs.oa.oama.ecm.Ecm_Qrcodecontext",
			"iskeep" : "true",
			"key" : key
		};
		UM_NativeCall.callService("UMView.open",jsonToString(args))
	}
	
	
}
nc.bs.oa.oama.ecm.Ecm_DiscoveryController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_DiscoveryController$initialize,
    toDiscovery : nc$bs$oa$oama$ecm$Ecm_DiscoveryController$toDiscovery,
    initDiscovery : nc$bs$oa$oama$ecm$Ecm_DiscoveryController$initDiscovery,
    qrcodejs : nc$bs$oa$oama$ecm$Ecm_DiscoveryController$qrcodejs
};
nc.bs.oa.oama.ecm.Ecm_DiscoveryController.registerClass('nc.bs.oa.oama.ecm.Ecm_DiscoveryController');
