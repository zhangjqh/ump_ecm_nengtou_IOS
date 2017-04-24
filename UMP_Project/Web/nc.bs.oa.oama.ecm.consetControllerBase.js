Type.registerNamespace('nc.bs.oa.oama.ecm.consetControllerBase');
nc.bs.oa.oama.ecm.consetControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.consetControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding],
        consetSave : [this.consetSave],
        closeView : [this.closeView]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.consetController){
        this._userController = new nc.bs.oa.oama.ecm.consetController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.consetController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.consetEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.consetEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.conset != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.conset(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$consetControllerBase$UMonInit(json){
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
        this._userController.UMonInit($context);
    	
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
function nc$bs$oa$oama$ecm$consetControllerBase$UMonLoad(json){
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
        this._userController.UMonLoad($context);
    	
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
function nc$bs$oa$oama$ecm$consetControllerBase$UMonUnload(json){
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
        this._userController.UMonUnload($context);
    	
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
function nc$bs$oa$oama$ecm$consetControllerBase$UMonComplete(json){
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
        this._userController.UMonComplete($context);
    	
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
function nc$bs$oa$oama$ecm$consetControllerBase$UMonDataBinding(json){
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
        this._userController.UMonDataBinding($context);
    	
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
function nc$bs$oa$oama$ecm$consetControllerBase$consetSave(json){
    try{
        _$sys.callAction('consetSave');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$consetControllerBase$closeView(json){
    try{
        _$sys.callAction('closeView');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.consetControllerBase.prototype = {
    UMonInit : nc$bs$oa$oama$ecm$consetControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$consetControllerBase$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$consetControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$consetControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$consetControllerBase$UMonDataBinding,
    consetSave : nc$bs$oa$oama$ecm$consetControllerBase$consetSave,
    closeView : nc$bs$oa$oama$ecm$consetControllerBase$closeView
};
nc.bs.oa.oama.ecm.consetControllerBase.registerClass('nc.bs.oa.oama.ecm.consetControllerBase',UMP.UI.Mvc.Controller);
