Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchEGControllerBase');
nc.bs.oa.oama.ecm.EcmSearchEGControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchEGControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        loadError : [this.loadError],
        onOrgBtnClick : [this.onOrgBtnClick],
        selectedCallback : [this.selectedCallback],
        onItemClick : [this.onItemClick],
        beforeLoad : [this.beforeLoad],
        onSeartchBtnClick : [this.onSeartchBtnClick],
        onSelectedClick : [this.onSelectedClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        loadData : [this.loadData],
        onPGBtnClick : [this.onPGBtnClick],
        onDeptBtnClick : [this.onDeptBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchEGController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchEGController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchEGController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$loadError(json){
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
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onOrgBtnClick(json){
    try{
        _$sys.callAction('onOrgBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$selectedCallback(json){
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
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onItemClick(json){
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
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$beforeLoad(json){
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
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onSeartchBtnClick(json){
    try{
        _$sys.callAction('onSeartchBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$loadData(json){
    try{
        _$sys.callAction('loadData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onPGBtnClick(json){
    try{
        _$sys.callAction('onPGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onDeptBtnClick(json){
    try{
        _$sys.callAction('onDeptBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.EcmSearchEGControllerBase.prototype = {
    loadError : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$loadError,
    onOrgBtnClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onOrgBtnClick,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$beforeLoad,
    onSeartchBtnClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onSeartchBtnClick,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onSelectedClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onReturnBtnClick,
    loadData : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$loadData,
    onPGBtnClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onPGBtnClick,
    onDeptBtnClick : nc$bs$oa$oama$ecm$EcmSearchEGControllerBase$onDeptBtnClick
};
nc.bs.oa.oama.ecm.EcmSearchEGControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchEGControllerBase',UMP.UI.Mvc.Controller);
