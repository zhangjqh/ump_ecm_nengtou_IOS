Type.registerNamespace('nc.bs.oa.oama.ecm.attach_listControllerBase');
nc.bs.oa.oama.ecm.attach_listControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.attach_listControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        toClose : [this.toClose],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        attachLoad : [this.attachLoad],
        UMonUnload : [this.UMonUnload],
        toOpenAttach : [this.toOpenAttach],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.attach_listController){
        this._userController = new nc.bs.oa.oama.ecm.attach_listController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.attach_listController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oneinfoEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.oneinfoEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oneinfo != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.oneinfo(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$attach_listControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$attach_listControllerBase$UMonInit(json){
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
        if(this._userController.UMonInit){
            this._userController.UMonInit($context);
        }else{
            alert("找不到方法[UMonInit]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$attach_listControllerBase$UMonLoad(json){
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
        if(this._userController.UMonLoad){
            this._userController.UMonLoad($context);
        }else{
            alert("找不到方法[UMonLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$attach_listControllerBase$attachLoad(json){
    try{
        _$sys.callAction('attachLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$attach_listControllerBase$UMonUnload(json){
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
        if(this._userController.UMonUnload){
            this._userController.UMonUnload($context);
        }else{
            alert("找不到方法[UMonUnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$attach_listControllerBase$toOpenAttach(json){
    try{
        _$sys.callAction('toOpenAttach');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$attach_listControllerBase$UMonComplete(json){
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
        if(this._userController.UMonComplete){
            this._userController.UMonComplete($context);
        }else{
            alert("找不到方法[UMonComplete]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$attach_listControllerBase$UMonDataBinding(json){
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
        if(this._userController.UMonDataBinding){
            this._userController.UMonDataBinding($context);
        }else{
            alert("找不到方法[UMonDataBinding]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.attach_listControllerBase.prototype = {
    toClose : nc$bs$oa$oama$ecm$attach_listControllerBase$toClose,
    UMonInit : nc$bs$oa$oama$ecm$attach_listControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$attach_listControllerBase$UMonLoad,
    attachLoad : nc$bs$oa$oama$ecm$attach_listControllerBase$attachLoad,
    UMonUnload : nc$bs$oa$oama$ecm$attach_listControllerBase$UMonUnload,
    toOpenAttach : nc$bs$oa$oama$ecm$attach_listControllerBase$toOpenAttach,
    UMonComplete : nc$bs$oa$oama$ecm$attach_listControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$attach_listControllerBase$UMonDataBinding
};
nc.bs.oa.oama.ecm.attach_listControllerBase.registerClass('nc.bs.oa.oama.ecm.attach_listControllerBase',UMP.UI.Mvc.Controller);
