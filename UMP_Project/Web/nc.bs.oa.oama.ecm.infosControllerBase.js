Type.registerNamespace('nc.bs.oa.oama.ecm.infosControllerBase');
nc.bs.oa.oama.ecm.infosControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.infosControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        toSearchInfos : [this.toSearchInfos],
        toInfos : [this.toInfos],
        infoNextPage : [this.infoNextPage],
        loginAction : [this.loginAction],
        toClose : [this.toClose],
        nextImgLoad : [this.nextImgLoad],
        exchangeToolbar : [this.exchangeToolbar],
        toInformation : [this.toInformation],
        onCloseBtnClick : [this.onCloseBtnClick],
        toGroupInfos : [this.toGroupInfos]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.infosController){
        this._userController = new nc.bs.oa.oama.ecm.infosController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.infosController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oainflistEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.oainflistEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oainflist != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.oainflist(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$infosControllerBase$toSearchInfos(json){
    try{
        _$sys.callAction('toSearchInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$toInfos(json){
    try{
        _$sys.callAction('toInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$infoNextPage(json){
    try{
        _$sys.callAction('infoNextPage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$loginAction(json){
    try{
        _$sys.callAction('loginAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$nextImgLoad(json){
    try{
        _$sys.callAction('nextImgLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$exchangeToolbar(json){
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
function nc$bs$oa$oama$ecm$infosControllerBase$toInformation(json){
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
function nc$bs$oa$oama$ecm$infosControllerBase$onCloseBtnClick(json){
    try{
        _$sys.callAction('onCloseBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$infosControllerBase$toGroupInfos(json){
    try{
        _$sys.callAction('toGroupInfos');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.infosControllerBase.prototype = {
    toSearchInfos : nc$bs$oa$oama$ecm$infosControllerBase$toSearchInfos,
    toInfos : nc$bs$oa$oama$ecm$infosControllerBase$toInfos,
    infoNextPage : nc$bs$oa$oama$ecm$infosControllerBase$infoNextPage,
    loginAction : nc$bs$oa$oama$ecm$infosControllerBase$loginAction,
    toClose : nc$bs$oa$oama$ecm$infosControllerBase$toClose,
    nextImgLoad : nc$bs$oa$oama$ecm$infosControllerBase$nextImgLoad,
    exchangeToolbar : nc$bs$oa$oama$ecm$infosControllerBase$exchangeToolbar,
    toInformation : nc$bs$oa$oama$ecm$infosControllerBase$toInformation,
    onCloseBtnClick : nc$bs$oa$oama$ecm$infosControllerBase$onCloseBtnClick,
    toGroupInfos : nc$bs$oa$oama$ecm$infosControllerBase$toGroupInfos
};
nc.bs.oa.oama.ecm.infosControllerBase.registerClass('nc.bs.oa.oama.ecm.infosControllerBase',UMP.UI.Mvc.Controller);
