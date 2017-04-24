Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_MainControllerBase');
nc.bs.oa.oama.ecm.Ecm_MainControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_MainControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        getAppList : [this.getAppList],
        initMainView : [this.initMainView],
        toSet : [this.toSet],
        toHome : [this.toHome],
        toDiscovery : [this.toDiscovery],
        appsCallback : [this.appsCallback]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_MainController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_MainController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_MainController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$getAppList(json){
    try{
        _$sys.callAction('getAppList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$initMainView(json){
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
        if(this._userController.initMainView){
            this._userController.initMainView($context);
        }else{
            alert("找不到方法[initMainView]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toSet(json){
    try{
        _$sys.callAction('toSet');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toHome(json){
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
        if(this._userController.toHome){
            this._userController.toHome($context);
        }else{
            alert("找不到方法[toHome]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toDiscovery(json){
    try{
        _$sys.callAction('toDiscovery');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_MainControllerBase$appsCallback(json){
    try{
        _$sys.callAction('appsCallback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_MainControllerBase.prototype = {
    getAppList : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$getAppList,
    initMainView : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$initMainView,
    toSet : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toSet,
    toHome : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toHome,
    toDiscovery : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$toDiscovery,
    appsCallback : nc$bs$oa$oama$ecm$Ecm_MainControllerBase$appsCallback
};
nc.bs.oa.oama.ecm.Ecm_MainControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_MainControllerBase',UMP.UI.Mvc.Controller);
