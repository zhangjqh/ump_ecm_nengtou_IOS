Type.registerNamespace('nc.bs.oa.oama.ecm.sharedgrouopControllerBase');
nc.bs.oa.oama.ecm.sharedgrouopControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.sharedgrouopControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        delShared : [this.delShared],
        toSearchShared : [this.toSearchShared],
        toEditShared : [this.toEditShared],
        listViewOnload : [this.listViewOnload],
        onBack : [this.onBack]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.sharedgrouopController){
        this._userController = new nc.bs.oa.oama.ecm.sharedgrouopController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.sharedgrouopController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.eventDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.eventDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$sharedgrouopControllerBase$delShared(json){
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
        if(this._userController.delShared){
            this._userController.delShared($context);
        }else{
            alert("找不到方法[delShared]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$sharedgrouopControllerBase$toSearchShared(json){
    try{
        _$sys.callAction('toSearchShared');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$sharedgrouopControllerBase$toEditShared(json){
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
        if(this._userController.toEditShared){
            this._userController.toEditShared($context);
        }else{
            alert("找不到方法[toEditShared]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$sharedgrouopControllerBase$listViewOnload(json){
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
        if(this._userController.listViewOnload){
            this._userController.listViewOnload($context);
        }else{
            alert("找不到方法[listViewOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$sharedgrouopControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.sharedgrouopControllerBase.prototype = {
    delShared : nc$bs$oa$oama$ecm$sharedgrouopControllerBase$delShared,
    toSearchShared : nc$bs$oa$oama$ecm$sharedgrouopControllerBase$toSearchShared,
    toEditShared : nc$bs$oa$oama$ecm$sharedgrouopControllerBase$toEditShared,
    listViewOnload : nc$bs$oa$oama$ecm$sharedgrouopControllerBase$listViewOnload,
    onBack : nc$bs$oa$oama$ecm$sharedgrouopControllerBase$onBack
};
nc.bs.oa.oama.ecm.sharedgrouopControllerBase.registerClass('nc.bs.oa.oama.ecm.sharedgrouopControllerBase',UMP.UI.Mvc.Controller);
