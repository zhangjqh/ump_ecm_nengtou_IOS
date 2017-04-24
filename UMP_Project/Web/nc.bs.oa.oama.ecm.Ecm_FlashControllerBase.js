Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_FlashControllerBase');
nc.bs.oa.oama.ecm.Ecm_FlashControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_FlashControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        afterLogin : [this.afterLogin],
        toLogin : [this.toLogin],
        loadConfig : [this.loadConfig],
        openMainView : [this.openMainView],
        loginAction : [this.loginAction],
        beforeLogin : [this.beforeLogin],
        toWelcome : [this.toWelcome]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_FlashController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_FlashController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_FlashController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$afterLogin(json){
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
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$toLogin(json){
    try{
        _$sys.callAction('toLogin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$loadConfig(json){
    try{
        _$sys.callAction('loadConfig');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$openMainView(json){
    try{
        _$sys.callAction('openMainView');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$loginAction(json){
    try{
        _$sys.callAction('loginAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$beforeLogin(json){
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
        if(this._userController.beforeLogin){
            this._userController.beforeLogin($context);
        }else{
            alert("找不到方法[beforeLogin]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$toWelcome(json){
    try{
        _$sys.callAction('toWelcome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_FlashControllerBase.prototype = {
    afterLogin : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$afterLogin,
    toLogin : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$toLogin,
    loadConfig : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$loadConfig,
    openMainView : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$openMainView,
    loginAction : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$loginAction,
    beforeLogin : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$beforeLogin,
    toWelcome : nc$bs$oa$oama$ecm$Ecm_FlashControllerBase$toWelcome
};
nc.bs.oa.oama.ecm.Ecm_FlashControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_FlashControllerBase',UMP.UI.Mvc.Controller);
