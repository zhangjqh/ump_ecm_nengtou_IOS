Type.registerNamespace('nc.bs.oa.oama.ecm.repeatdayrefControllerBase');
nc.bs.oa.oama.ecm.repeatdayrefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.repeatdayrefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        returnResult : [this.returnResult],
        initChecked : [this.initChecked],
        load : [this.load],
        setChecked : [this.setChecked],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.repeatdayrefController){
        this._userController = new nc.bs.oa.oama.ecm.repeatdayrefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.repeatdayrefController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$returnResult(json){
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
        if(this._userController.returnResult){
            this._userController.returnResult($context);
        }else{
            alert("找不到方法[returnResult]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$initChecked(json){
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
        if(this._userController.initChecked){
            this._userController.initChecked($context);
        }else{
            alert("找不到方法[initChecked]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$setChecked(json){
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
        if(this._userController.setChecked){
            this._userController.setChecked($context);
        }else{
            alert("找不到方法[setChecked]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatdayrefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.repeatdayrefControllerBase.prototype = {
    returnResult : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$returnResult,
    initChecked : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$initChecked,
    load : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$load,
    setChecked : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$setChecked,
    onCancel : nc$bs$oa$oama$ecm$repeatdayrefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.repeatdayrefControllerBase.registerClass('nc.bs.oa.oama.ecm.repeatdayrefControllerBase',UMP.UI.Mvc.Controller);
