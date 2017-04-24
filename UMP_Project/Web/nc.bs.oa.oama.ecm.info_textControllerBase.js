Type.registerNamespace('nc.bs.oa.oama.ecm.info_textControllerBase');
nc.bs.oa.oama.ecm.info_textControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.info_textControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        afterInfoLoad : [this.afterInfoLoad],
        doSubmitComment : [this.doSubmitComment],
        htmlBind : [this.htmlBind],
        label0_onclick : [this.label0_onclick],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        infoLoad : [this.infoLoad],
        toComment : [this.toComment],
        toAttach : [this.toAttach],
        UMonDataBinding : [this.UMonDataBinding],
        afterLoadError : [this.afterLoadError],
        toClose : [this.toClose],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.info_textController){
        this._userController = new nc.bs.oa.oama.ecm.info_textController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.info_textController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$info_textControllerBase$afterInfoLoad(json){
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
        if(this._userController.afterInfoLoad){
            this._userController.afterInfoLoad($context);
        }else{
            alert("找不到方法[afterInfoLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$info_textControllerBase$doSubmitComment(json){
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
        if(this._userController.doSubmitComment){
            this._userController.doSubmitComment($context);
        }else{
            alert("找不到方法[doSubmitComment]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$info_textControllerBase$htmlBind(json){
    try{
        _$sys.callAction('htmlBind');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$label0_onclick(json){
    try{
        _$sys.callAction('label0_onclick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$info_textControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$info_textControllerBase$infoLoad(json){
    try{
        _$sys.callAction('infoLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$toComment(json){
    try{
        _$sys.callAction('toComment');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$toAttach(json){
    try{
        _$sys.callAction('toAttach');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$info_textControllerBase$afterLoadError(json){
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
        if(this._userController.afterLoadError){
            this._userController.afterLoadError($context);
        }else{
            alert("找不到方法[afterLoadError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$info_textControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_textControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$info_textControllerBase$UMonLoad(json){
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
nc.bs.oa.oama.ecm.info_textControllerBase.prototype = {
    afterInfoLoad : nc$bs$oa$oama$ecm$info_textControllerBase$afterInfoLoad,
    doSubmitComment : nc$bs$oa$oama$ecm$info_textControllerBase$doSubmitComment,
    htmlBind : nc$bs$oa$oama$ecm$info_textControllerBase$htmlBind,
    label0_onclick : nc$bs$oa$oama$ecm$info_textControllerBase$label0_onclick,
    UMonUnload : nc$bs$oa$oama$ecm$info_textControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$info_textControllerBase$UMonComplete,
    infoLoad : nc$bs$oa$oama$ecm$info_textControllerBase$infoLoad,
    toComment : nc$bs$oa$oama$ecm$info_textControllerBase$toComment,
    toAttach : nc$bs$oa$oama$ecm$info_textControllerBase$toAttach,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_textControllerBase$UMonDataBinding,
    afterLoadError : nc$bs$oa$oama$ecm$info_textControllerBase$afterLoadError,
    toClose : nc$bs$oa$oama$ecm$info_textControllerBase$toClose,
    UMonInit : nc$bs$oa$oama$ecm$info_textControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_textControllerBase$UMonLoad
};
nc.bs.oa.oama.ecm.info_textControllerBase.registerClass('nc.bs.oa.oama.ecm.info_textControllerBase',UMP.UI.Mvc.Controller);
