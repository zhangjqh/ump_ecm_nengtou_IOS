Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_LoginController');
nc.bs.oa.oama.ecm.Ecm_LoginController = function() {}
function nc$bs$oa$oama$ecm$Ecm_LoginController$initialize(ctx){}

function nc$bs$oa$oama$ecm$Ecm_LoginController$loginJS(ctx){
	var userName = ctx.get("username").trim();
	var passWord = ctx.get("password").trim();
	var check = !userName ? $res.getResString("nameplaceholder") : (!passWord ? $res.getResString("passwordholder") : "");
	if (check) {
		alert(check);
		return;
	}
	
	var ip = ctx.get("ip").trim();
	var port = ctx.get("port").trim();
	if(!ip || !port)
	{
	   alert($res.getResString("servernull"));
	   return;
	}
	
	var params = {
		 "username" : userName,
		 "oldname" : userName,
		 "host" : ip,
		 "port" : port
	};
	var autoLogin = ctx.get("autologin");
	if (autoLogin && (autoLogin==true || autoLogin=="true")) {
		params["autologin"] = true;
		params["password"] = passWord;
	} else {
		params["autologin"] = false;
	}
	
	$service.call("UMService.writeConfigure", jsonToString(params));
	
	_$sys.callAction('loginAction');
}
function nc$bs$oa$oama$ecm$Ecm_LoginController$loginError(ctx){
	ctx.dispose();
	var errCode = ctx.params()["err_code"];
	var errMsg = stringToJSON(ctx.params()["err_msg"]);
	if("99" == errCode){
		alert($res.getResString("servererror"));
	} else {
		if(errMsg){
			var index = errMsg.indexOf(":");
			alert(errMsg.substring(index+1));
		} else {
			alert($res.getResString("ecm_login_unknown"));
		}
	}
}
function nc$bs$oa$oama$ecm$Ecm_LoginController$afterLogin(ctx){
    var showed = $cache.readFile("ECMWelcomeShowed");
    var oldVersion = $cache.readFile("ECMVersion");
    var newVersion = ctx.params()["version"];
    if((oldVersion==newVersion)&&showed && "true"==showed){
  		// 已显示过欢迎页面
  		_$sys.callAction('openMainView');
  	} else {
  		// 未显示过欢迎页面
		$cache.writeFile("ECMWelcomeShowed", "true"); // 标记
        $cache.writeFile("ECMVersion", newVersion); // 记录应用版本
		_$sys.callAction('toWelcome');
	}
}
function nc$bs$oa$oama$ecm$Ecm_LoginController$onchange(ctx){
	var oldName = (ctx.get("oldname")||"").trim();
	var userName = (ctx.get("username")||"").trim();
	if(oldName != userName){
		ctx.set("password","");
	}
}
function nc$bs$oa$oama$ecm$Ecm_LoginController$connectSettingJS(ctx){
	var userName = ctx.get("username").trim();
	var passWord = ctx.get("password").trim();
	if(userName){
		var params = {
			 "username" : userName,
			 "password" : passWord,
		};
		var autoLogin = ctx.get("autologin");
		if (autoLogin && (autoLogin==true || autoLogin=="true")) {
			params["autologin"] = true;
			params["password"] = passWord;
		} else {
			params["autologin"] = false;
		}
		
		$service.call("UMService.writeConfigure", jsonToString(params));
	
	}
	_$sys.callAction('connectSetting');
}
nc.bs.oa.oama.ecm.Ecm_LoginController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_LoginController$initialize,
    afterLogin : nc$bs$oa$oama$ecm$Ecm_LoginController$afterLogin,
    loginError : nc$bs$oa$oama$ecm$Ecm_LoginController$loginError,
    loginJS : nc$bs$oa$oama$ecm$Ecm_LoginController$loginJS,
    onchange: nc$bs$oa$oama$ecm$Ecm_LoginController$onchange,
    connectSettingJS : nc$bs$oa$oama$ecm$Ecm_LoginController$connectSettingJS
};
nc.bs.oa.oama.ecm.Ecm_LoginController.registerClass('nc.bs.oa.oama.ecm.Ecm_LoginController');
