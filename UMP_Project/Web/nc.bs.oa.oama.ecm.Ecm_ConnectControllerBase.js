Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase');
nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        afterSave : [this.afterSave],
        toqrcodeimg : [this.toqrcodeimg],
        getqrcodeimg : [this.getqrcodeimg],
        toLogin : [this.toLogin],
        loadConfig : [this.loadConfig],
        qrcodeError : [this.qrcodeError],
        getcode : [this.getcode],
        closeWindow : [this.closeWindow],
        saveSetting : [this.saveSetting],
        saveservice : [this.saveservice],
        shareqrcode : [this.shareqrcode]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_ConnectController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_ConnectController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_ConnectController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.connectinforEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.connectinforEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.connectinfor != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.connectinfor(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$afterSave(json){
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
        if(this._userController.afterSave){
            this._userController.afterSave($context);
        }else{
            alert("找不到方法[afterSave]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$toqrcodeimg(json){
    try{
        _$sys.callAction('toqrcodeimg');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$getqrcodeimg(json){
    try{
        _$sys.callAction('getqrcodeimg');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$toLogin(json){
    try{
        _$sys.callAction('toLogin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$loadConfig(json){
    try{
        _$sys.callAction('loadConfig');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$qrcodeError(json){
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
        if(this._userController.qrcodeError){
            this._userController.qrcodeError($context);
        }else{
            alert("找不到方法[qrcodeError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$getcode(json){
    try{
        _$sys.callAction('getcode');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$closeWindow(json){
    try{
        _$sys.callAction('closeWindow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$saveSetting(json){
    try{
        _$sys.callAction('saveSetting');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$saveservice(json){
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
        if(this._userController.saveservice){
            this._userController.saveservice($context);
        }else{
            alert("找不到方法[saveservice]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$shareqrcode(json){
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
        if(this._userController.shareqrcode){
            this._userController.shareqrcode($context);
        }else{
            alert("找不到方法[shareqrcode]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase.prototype = {
    afterSave : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$afterSave,
    toqrcodeimg : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$toqrcodeimg,
    getqrcodeimg : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$getqrcodeimg,
    toLogin : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$toLogin,
    loadConfig : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$loadConfig,
    qrcodeError : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$qrcodeError,
    getcode : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$getcode,
    closeWindow : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$closeWindow,
    saveSetting : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$saveSetting,
    saveservice : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$saveservice,
    shareqrcode : nc$bs$oa$oama$ecm$Ecm_ConnectControllerBase$shareqrcode
};
nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_ConnectControllerBase',UMP.UI.Mvc.Controller);
