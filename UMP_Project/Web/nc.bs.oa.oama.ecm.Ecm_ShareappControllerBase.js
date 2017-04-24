Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase');
nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        closeshare : [this.closeshare],
        loadset : [this.loadset],
        toSet : [this.toSet],
        toHome : [this.toHome],
        openurl : [this.openurl]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_ShareappController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_ShareappController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_ShareappController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_Shareapp] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$closeshare(json){
    try{
        _$sys.callAction('closeshare');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$loadset(json){
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
        if(this._userController.loadset){
            this._userController.loadset($context);
        }else{
            alert("找不到方法[loadset]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$toSet(json){
    try{
        _$sys.callAction('toSet');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$toHome(json){
    try{
        _$sys.callAction('toHome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$openurl(json){
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
        if(this._userController.openurl){
            this._userController.openurl($context);
        }else{
            alert("找不到方法[openurl]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase.prototype = {
    closeshare : nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$closeshare,
    loadset : nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$loadset,
    toSet : nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$toSet,
    toHome : nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$toHome,
    openurl : nc$bs$oa$oama$ecm$Ecm_ShareappControllerBase$openurl
};
nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_ShareappControllerBase',UMP.UI.Mvc.Controller);
