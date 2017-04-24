Type.registerNamespace('nc.bs.oa.oama.ecm.groupinfosControllerBase');
nc.bs.oa.oama.ecm.groupinfosControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.groupinfosControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        loadError : [this.loadError],
        groupInfoDataLoad : [this.groupInfoDataLoad],
        toSearchInfos : [this.toSearchInfos],
        toInfos : [this.toInfos],
        toClose : [this.toClose],
        exchangeToolbar : [this.exchangeToolbar],
        toInformation : [this.toInformation],
        toGroupInfos : [this.toGroupInfos],
        toColumnInfos : [this.toColumnInfos]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.groupinfosController){
        this._userController = new nc.bs.oa.oama.ecm.groupinfosController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.groupinfosController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oainfototalEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.oainfototalEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oainfototal != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.oainfototal(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$loadError(json){
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
        if(this._userController.loadError){
            this._userController.loadError($context);
        }else{
            alert("找不到方法[loadError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$groupinfosControllerBase$groupInfoDataLoad(json){
    try{
        _$sys.callAction('groupInfoDataLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toSearchInfos(json){
    try{
        _$sys.callAction('toSearchInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toInfos(json){
    try{
        _$sys.callAction('toInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$exchangeToolbar(json){
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
        if(this._userController.exchangeToolbar){
            this._userController.exchangeToolbar($context);
        }else{
            alert("找不到方法[exchangeToolbar]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toInformation(json){
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
        if(this._userController.toInformation){
            this._userController.toInformation($context);
        }else{
            alert("找不到方法[toInformation]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toGroupInfos(json){
    try{
        _$sys.callAction('toGroupInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$groupinfosControllerBase$toColumnInfos(json){
    try{
        _$sys.callAction('toColumnInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.groupinfosControllerBase.prototype = {
    loadError : nc$bs$oa$oama$ecm$groupinfosControllerBase$loadError,
    groupInfoDataLoad : nc$bs$oa$oama$ecm$groupinfosControllerBase$groupInfoDataLoad,
    toSearchInfos : nc$bs$oa$oama$ecm$groupinfosControllerBase$toSearchInfos,
    toInfos : nc$bs$oa$oama$ecm$groupinfosControllerBase$toInfos,
    toClose : nc$bs$oa$oama$ecm$groupinfosControllerBase$toClose,
    exchangeToolbar : nc$bs$oa$oama$ecm$groupinfosControllerBase$exchangeToolbar,
    toInformation : nc$bs$oa$oama$ecm$groupinfosControllerBase$toInformation,
    toGroupInfos : nc$bs$oa$oama$ecm$groupinfosControllerBase$toGroupInfos,
    toColumnInfos : nc$bs$oa$oama$ecm$groupinfosControllerBase$toColumnInfos
};
nc.bs.oa.oama.ecm.groupinfosControllerBase.registerClass('nc.bs.oa.oama.ecm.groupinfosControllerBase',UMP.UI.Mvc.Controller);
