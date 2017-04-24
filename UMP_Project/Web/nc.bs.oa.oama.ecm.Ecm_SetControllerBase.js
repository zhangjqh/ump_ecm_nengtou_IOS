Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_SetControllerBase');
nc.bs.oa.oama.ecm.Ecm_SetControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_SetControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        beforeLogout : [this.beforeLogout],
        initSet : [this.initSet],
        logoutSuccess : [this.logoutSuccess],
        toSet : [this.toSet],
        toHome : [this.toHome],
        receiverpushevent : [this.receiverpushevent],
        toDiscovery : [this.toDiscovery],
        logoutAction : [this.logoutAction],
        ecm_about : [this.ecm_about],
        toLogin : [this.toLogin],
        stoppushservice : [this.stoppushservice],
        logoutFailed : [this.logoutFailed],
        resetConnet : [this.resetConnet],
        startpushservice : [this.startpushservice]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_SetController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_SetController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_SetController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_set] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$beforeLogout(json){
    try{
        _$sys.callAction('beforeLogout');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$initSet(json){
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
        if(this._userController.initSet){
            this._userController.initSet($context);
        }else{
            alert("找不到方法[initSet]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutSuccess(json){
    try{
        _$sys.callAction('logoutSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toSet(json){
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
        if(this._userController.toSet){
            this._userController.toSet($context);
        }else{
            alert("找不到方法[toSet]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toHome(json){
    try{
        _$sys.callAction('toHome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$receiverpushevent(json){
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
        if(this._userController.receiverpushevent){
            this._userController.receiverpushevent($context);
        }else{
            alert("找不到方法[receiverpushevent]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toDiscovery(json){
    try{
        _$sys.callAction('toDiscovery');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutAction(json){
    try{
        _$sys.callAction('logoutAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$ecm_about(json){
    try{
        _$sys.callAction('ecm_about');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toLogin(json){
    try{
        _$sys.callAction('toLogin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$stoppushservice(json){
    try{
        _$sys.callAction('stoppushservice');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutFailed(json){
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
        if(this._userController.logoutFailed){
            this._userController.logoutFailed($context);
        }else{
            alert("找不到方法[logoutFailed]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$resetConnet(json){
    try{
        _$sys.callAction('resetConnet');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_SetControllerBase$startpushservice(json){
    try{
        _$sys.callAction('startpushservice');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_SetControllerBase.prototype = {
    beforeLogout : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$beforeLogout,
    initSet : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$initSet,
    logoutSuccess : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutSuccess,
    toSet : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toSet,
    toHome : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toHome,
    receiverpushevent : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$receiverpushevent,
    toDiscovery : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toDiscovery,
    logoutAction : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutAction,
    ecm_about : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$ecm_about,
    toLogin : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$toLogin,
    stoppushservice : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$stoppushservice,
    logoutFailed : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$logoutFailed,
    resetConnet : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$resetConnet,
    startpushservice : nc$bs$oa$oama$ecm$Ecm_SetControllerBase$startpushservice
};
nc.bs.oa.oama.ecm.Ecm_SetControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_SetControllerBase',UMP.UI.Mvc.Controller);
