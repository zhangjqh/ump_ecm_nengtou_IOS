Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase');
nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onItemClick : [this.onItemClick],
        selectedCallback : [this.selectedCallback],
        onSelectedClick : [this.onSelectedClick],
        onSeartchBtnClick : [this.onSeartchBtnClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        onDeptBtnClick : [this.onDeptBtnClick],
        nextData : [this.nextData],
        loadError : [this.loadError],
        onEGBtnClick : [this.onEGBtnClick],
        nextDataError : [this.nextDataError],
        beforeLoad : [this.beforeLoad],
        loadDataFive : [this.loadDataFive],
        nextDataFive : [this.nextDataFive],
        onPGBtnClick : [this.onPGBtnClick],
        loadData : [this.loadData]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchOrgController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchOrgController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchOrgController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onItemClick(json){
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$selectedCallback(json){
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onSeartchBtnClick(json){
    try{
        _$sys.callAction('onSeartchBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onDeptBtnClick(json){
    try{
        _$sys.callAction('onDeptBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextData(json){
    try{
        _$sys.callAction('nextData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadError(json){
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onEGBtnClick(json){
    try{
        _$sys.callAction('onEGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextDataError(json){
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
        if(this._userController.nextDataError){
            this._userController.nextDataError($context);
        }else{
            alert("找不到方法[nextDataError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$beforeLoad(json){
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
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadDataFive(json){
    try{
        _$sys.callAction('loadDataFive');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextDataFive(json){
    try{
        _$sys.callAction('nextDataFive');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onPGBtnClick(json){
    try{
        _$sys.callAction('onPGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadData(json){
    try{
        _$sys.callAction('loadData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase.prototype = {
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onItemClick,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$selectedCallback,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onSelectedClick,
    onSeartchBtnClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onSeartchBtnClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onReturnBtnClick,
    onDeptBtnClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onDeptBtnClick,
    nextData : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextData,
    loadError : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadError,
    onEGBtnClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onEGBtnClick,
    nextDataError : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextDataError,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$beforeLoad,
    loadDataFive : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadDataFive,
    nextDataFive : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$nextDataFive,
    onPGBtnClick : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$onPGBtnClick,
    loadData : nc$bs$oa$oama$ecm$EcmSearchOrgControllerBase$loadData
};
nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchOrgControllerBase',UMP.UI.Mvc.Controller);
