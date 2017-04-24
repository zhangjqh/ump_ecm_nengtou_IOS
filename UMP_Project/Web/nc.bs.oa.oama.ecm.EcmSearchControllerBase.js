Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchControllerBase');
nc.bs.oa.oama.ecm.EcmSearchControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        searchError : [this.searchError],
        loadCondition : [this.loadCondition],
        selectedCallback : [this.selectedCallback],
        onItemClick : [this.onItemClick],
        onSelectedClick : [this.onSelectedClick],
        conditionError : [this.conditionError],
        onReturnBtnClick : [this.onReturnBtnClick],
        setCondition : [this.setCondition],
        onSearchClick : [this.onSearchClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$searchError(json){
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
        if(this._userController.searchError){
            this._userController.searchError($context);
        }else{
            alert("找不到方法[searchError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$loadCondition(json){
    try{
        _$sys.callAction('loadCondition');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$selectedCallback(json){
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$onItemClick(json){
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$conditionError(json){
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
        if(this._userController.conditionError){
            this._userController.conditionError($context);
        }else{
            alert("找不到方法[conditionError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$setCondition(json){
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
        if(this._userController.setCondition){
            this._userController.setCondition($context);
        }else{
            alert("找不到方法[setCondition]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchControllerBase$onSearchClick(json){
    try{
        _$sys.callAction('onSearchClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.EcmSearchControllerBase.prototype = {
    searchError : nc$bs$oa$oama$ecm$EcmSearchControllerBase$searchError,
    loadCondition : nc$bs$oa$oama$ecm$EcmSearchControllerBase$loadCondition,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchControllerBase$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchControllerBase$onItemClick,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchControllerBase$onSelectedClick,
    conditionError : nc$bs$oa$oama$ecm$EcmSearchControllerBase$conditionError,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchControllerBase$onReturnBtnClick,
    setCondition : nc$bs$oa$oama$ecm$EcmSearchControllerBase$setCondition,
    onSearchClick : nc$bs$oa$oama$ecm$EcmSearchControllerBase$onSearchClick
};
nc.bs.oa.oama.ecm.EcmSearchControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchControllerBase',UMP.UI.Mvc.Controller);
