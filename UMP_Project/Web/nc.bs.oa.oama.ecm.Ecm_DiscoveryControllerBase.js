Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase');
nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        shareapp : [this.shareapp],
        qrcodejs : [this.qrcodejs],
        yonyouMobileStore : [this.yonyouMobileStore],
        getcode : [this.getcode],
        toSet : [this.toSet],
        toHome : [this.toHome],
        initDiscovery : [this.initDiscovery],
        toDiscovery : [this.toDiscovery]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_DiscoveryController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_DiscoveryController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_DiscoveryController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.qrcodeEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.qrcodeEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.qrcode != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.qrcode(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$shareapp(json){
    try{
        _$sys.callAction('shareapp');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$qrcodejs(json){
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
        if(this._userController.qrcodejs){
            this._userController.qrcodejs($context);
        }else{
            alert("找不到方法[qrcodejs]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$yonyouMobileStore(json){
    try{
        _$sys.callAction('yonyouMobileStore');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$getcode(json){
    try{
        _$sys.callAction('getcode');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toSet(json){
    try{
        _$sys.callAction('toSet');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toHome(json){
    try{
        _$sys.callAction('toHome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$initDiscovery(json){
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
        if(this._userController.initDiscovery){
            this._userController.initDiscovery($context);
        }else{
            alert("找不到方法[initDiscovery]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toDiscovery(json){
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
        if(this._userController.toDiscovery){
            this._userController.toDiscovery($context);
        }else{
            alert("找不到方法[toDiscovery]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase.prototype = {
    shareapp : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$shareapp,
    qrcodejs : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$qrcodejs,
    yonyouMobileStore : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$yonyouMobileStore,
    getcode : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$getcode,
    toSet : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toSet,
    toHome : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toHome,
    initDiscovery : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$initDiscovery,
    toDiscovery : nc$bs$oa$oama$ecm$Ecm_DiscoveryControllerBase$toDiscovery
};
nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_DiscoveryControllerBase',UMP.UI.Mvc.Controller);
