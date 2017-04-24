Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchPGControllerBase');
nc.bs.oa.oama.ecm.EcmSearchPGControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchPGControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        loadError : [this.loadError],
        onEGBtnClick : [this.onEGBtnClick],
        onOrgBtnClick : [this.onOrgBtnClick],
        selectedCallback : [this.selectedCallback],
        onItemClick : [this.onItemClick],
        beforeLoad : [this.beforeLoad],
        onSeartchBtnClick : [this.onSeartchBtnClick],
        onSelectedClick : [this.onSelectedClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        loadData : [this.loadData],
        onDeptBtnClick : [this.onDeptBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchPGController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchPGController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchPGController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.SearchEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.SearchEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.Search != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.Search(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$loadError(json){
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
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onEGBtnClick(json){
    try{
        _$sys.callAction('onEGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onOrgBtnClick(json){
    try{
        _$sys.callAction('onOrgBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$selectedCallback(json){
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
        if(this._userController.selectedCallback){
            this._userController.selectedCallback($context);
        }else{
            alert("找不到方法[selectedCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onItemClick(json){
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
        if(this._userController.onItemClick){
            this._userController.onItemClick($context);
        }else{
            alert("找不到方法[onItemClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$beforeLoad(json){
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
        if(this._userController.beforeLoad){
            this._userController.beforeLoad($context);
        }else{
            alert("找不到方法[beforeLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onSeartchBtnClick(json){
    try{
        _$sys.callAction('onSeartchBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$loadData(json){
    try{
        _$sys.callAction('loadData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onDeptBtnClick(json){
    try{
        _$sys.callAction('onDeptBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.EcmSearchPGControllerBase.prototype = {
    loadError : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$loadError,
    onEGBtnClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onEGBtnClick,
    onOrgBtnClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onOrgBtnClick,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$beforeLoad,
    onSeartchBtnClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onSeartchBtnClick,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onSelectedClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onReturnBtnClick,
    loadData : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$loadData,
    onDeptBtnClick : nc$bs$oa$oama$ecm$EcmSearchPGControllerBase$onDeptBtnClick
};
nc.bs.oa.oama.ecm.EcmSearchPGControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchPGControllerBase',UMP.UI.Mvc.Controller);
