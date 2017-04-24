Type.registerNamespace('nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase');
nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onEGBtnClick : [this.onEGBtnClick],
        onOrgBtnClick : [this.onOrgBtnClick],
        catcherror : [this.catcherror],
        selectedCallback : [this.selectedCallback],
        onItemClick : [this.onItemClick],
        beforeLoad : [this.beforeLoad],
        onSeartchBtnClick : [this.onSeartchBtnClick],
        onSelectedClick : [this.onSelectedClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        loadCallback : [this.loadCallback],
        loadData : [this.loadData],
        onPGBtnClick : [this.onPGBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmSearchDeptController){
        this._userController = new nc.bs.oa.oama.ecm.EcmSearchDeptController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmSearchDeptController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onEGBtnClick(json){
    try{
        _$sys.callAction('onEGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onOrgBtnClick(json){
    try{
        _$sys.callAction('onOrgBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$catcherror(json){
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
        if(this._userController.catcherror){
            this._userController.catcherror($context);
        }else{
            alert("找不到方法[catcherror]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$selectedCallback(json){
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onItemClick(json){
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$beforeLoad(json){
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onSeartchBtnClick(json){
    try{
        _$sys.callAction('onSeartchBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onSelectedClick(json){
    try{
        _$sys.callAction('onSelectedClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$loadCallback(json){
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
        if(this._userController.loadCallback){
            this._userController.loadCallback($context);
        }else{
            alert("找不到方法[loadCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$loadData(json){
    try{
        _$sys.callAction('loadData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onPGBtnClick(json){
    try{
        _$sys.callAction('onPGBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase.prototype = {
    onEGBtnClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onEGBtnClick,
    onOrgBtnClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onOrgBtnClick,
    catcherror : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$catcherror,
    selectedCallback : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$selectedCallback,
    onItemClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onItemClick,
    beforeLoad : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$beforeLoad,
    onSeartchBtnClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onSeartchBtnClick,
    onSelectedClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onSelectedClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onReturnBtnClick,
    loadCallback : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$loadCallback,
    loadData : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$loadData,
    onPGBtnClick : nc$bs$oa$oama$ecm$EcmSearchDeptControllerBase$onPGBtnClick
};
nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmSearchDeptControllerBase',UMP.UI.Mvc.Controller);
