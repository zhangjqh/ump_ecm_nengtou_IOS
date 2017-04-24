Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_FlashController');
nc.bs.oa.oama.ecm.Ecm_FlashController = function() {}
function nc$bs$oa$oama$ecm$Ecm_FlashController$initialize(ctx){}

function nc$bs$oa$oama$ecm$Ecm_FlashController$beforeLogin(ctx){
	ctx.dispose();
	//$service.call("UMJS.setlsShowLoadingForHttpService", {"isshow":true});
	 $service.call("UMJS.setIsShowLoadingForHttpService", {"isshow":true});

	var userName = ctx.get("username").trim();
	var passWord = ctx.get("password").trim();
	var ip = ctx.get("ip").trim();
	var port = ctx.get("port").trim();
	
	if(!userName || !passWord || !ip || !port)
	{
	   _$sys.callAction('toLogin');
	   return;
	}
	
	var autologin = ctx.get("autologin");
	if(autologin == true || autologin == "true")
	{
		_$sys.callAction('loginAction');
	}
	else
	{
	   _$sys.callAction('toLogin');
	}
}
function nc$bs$oa$oama$ecm$Ecm_FlashController$afterLogin(ctx){
    var showed = $cache.readFile("ECMWelcomeShowed");
    var oldVersion = $cache.readFile("ECMVersion");
    var newVersion = ctx.params()["version"];
  	if((oldVersion==newVersion)&& showed && (showed == true || "true" == showed)){
  		// 已显示过欢迎页面
  		_$sys.callAction('openMainView');
  	} else {
  		// 未显示过欢迎页面
		$cache.writeFile("ECMWelcomeShowed", true); // 标记
        $cache.writeFile("ECMVersion", newVersion); // 记录应用版本
		_$sys.callAction('toWelcome');
	}
}

nc.bs.oa.oama.ecm.Ecm_FlashController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_FlashController$initialize,
    afterLogin : nc$bs$oa$oama$ecm$Ecm_FlashController$afterLogin,
    beforeLogin : nc$bs$oa$oama$ecm$Ecm_FlashController$beforeLogin
};
nc.bs.oa.oama.ecm.Ecm_FlashController.registerClass('nc.bs.oa.oama.ecm.Ecm_FlashController');
