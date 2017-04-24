Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_LoginControllerBase');
nc.bs.oa.oama.ecm.Ecm_LoginControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_LoginControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        connectSetting : [this.connectSetting],
        afterLogin : [this.afterLogin],
        connectSettingJS : [this.connectSettingJS],
        loadConfig : [this.loadConfig],
        openMainView : [this.openMainView],
        loginAction : [this.loginAction],
        loginJS : [this.loginJS],
        loginError : [this.loginError],
        onchange : [this.onchange],
        toWelcome : [this.toWelcome]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_LoginController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_LoginController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_LoginController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.USERSEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.USERSEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.USERS != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.USERS(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$connectSetting(json){
    try{
        _$sys.callAction('connectSetting');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$afterLogin(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.afterLogin){
            this._userController.afterLogin($context);
        }else{
            alert("找不到方法[afterLogin]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$connectSettingJS(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.connectSettingJS){
            this._userController.connectSettingJS($context);
        }else{
            alert("找不到方法[connectSettingJS]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loadConfig(json){
    try{
        _$sys.callAction('loadConfig');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$openMainView(json){
    try{
        _$sys.callAction('openMainView');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginAction(json){
    try{
        _$sys.callAction('loginAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginJS(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.loginJS){
            this._userController.loginJS($context);
        }else{
            alert("找不到方法[loginJS]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginError(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.loginError){
            this._userController.loginError($context);
        }else{
            alert("找不到方法[loginError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$onchange(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.onchange){
            this._userController.onchange($context);
        }else{
            alert("找不到方法[onchange]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$toWelcome(json){
    try{
        _$sys.callAction('toWelcome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_LoginControllerBase.prototype = {
    connectSetting : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$connectSetting,
    afterLogin : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$afterLogin,
    connectSettingJS : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$connectSettingJS,
    loadConfig : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loadConfig,
    openMainView : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$openMainView,
    loginAction : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginAction,
    loginJS : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginJS,
    loginError : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$loginError,
    onchange : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$onchange,
    toWelcome : nc$bs$oa$oama$ecm$Ecm_LoginControllerBase$toWelcome
};
nc.bs.oa.oama.ecm.Ecm_LoginControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_LoginControllerBase',UMP.UI.Mvc.Controller);
