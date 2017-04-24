Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchListControllerBase');
nc.bs.oa.oama.ecm.EcmSearchListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        loadError : [this.loadError],
        onDataLoad : [this.onDataLoad],
        selectedCallback : [this.selectedCallback],
        onItemClick : [this.onItemClick],
        onDownRefresh : [this.onDownRefresh],
        onDownRefreshFive : [this.onDownRefreshFive],
        onDataLoadFive : [this.onDataLoadFive],
        onSelectedClick : [this.onSelectedClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        onOkBtnClick : [this.onOkBtnClick],
        refreshError : [this.refreshError]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchListController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchListController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$loadError(json){
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
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDataLoad(json){
    try{
        _$sys.callAction('onDataLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$selectedCallback(json){
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
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onItemClick(json){
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
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDownRefresh(json){
    try{
        _$sys.callAction('onDownRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDownRefreshFive(json){
    try{
        _$sys.callAction('onDownRefreshFive');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDataLoadFive(json){
    try{
        _$sys.callAction('onDataLoadFive');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onOkBtnClick(json){
    try{
        _$sys.callAction('onOkBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchListControllerBase$refreshError(json){
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
        if(this._userController.refreshError){
            this._userController.refreshError($context);
        }else{
            alert("找不到方法[refreshError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.EcmSearchListControllerBase.prototype = {
    loadError : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$loadError,
    onDataLoad : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDataLoad,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onItemClick,
    onDownRefresh : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDownRefresh,
    onDownRefreshFive : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDownRefreshFive,
    onDataLoadFive : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onDataLoadFive,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onSelectedClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onReturnBtnClick,
    onOkBtnClick : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$onOkBtnClick,
    refreshError : nc$bs$oa$oama$ecm$EcmSearchListControllerBase$refreshError
};
nc.bs.oa.oama.ecm.EcmSearchListControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchListControllerBase',UMP.UI.Mvc.Controller);
