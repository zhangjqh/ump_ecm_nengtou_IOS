Type.registerNamespace('nc.bs.oa.oama.ecm.info_wordControllerBase');
nc.bs.oa.oama.ecm.info_wordControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.info_wordControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        afterInfoLoad : [this.afterInfoLoad],
        doSubmitComment : [this.doSubmitComment],
        label0_onclick : [this.label0_onclick],
        bindWord : [this.bindWord],
        UMonUnload : [this.UMonUnload],
        openWord : [this.openWord],
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
    if(nc.bs.oa.oama.ecm.info_wordController){
        this._userController = new nc.bs.oa.oama.ecm.info_wordController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.info_wordController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$afterInfoLoad(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$doSubmitComment(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$label0_onclick(json){
    try{
        _$sys.callAction('label0_onclick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$bindWord(json){
    try{
        _$sys.callAction('bindWord');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$openWord(json){
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
        if(this._userController.openWord){
            this._userController.openWord($context);
        }else{
            alert("找不到方法[openWord]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$infoLoad(json){
    try{
        _$sys.callAction('infoLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$toComment(json){
    try{
        _$sys.callAction('toComment');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$toAttach(json){
    try{
        _$sys.callAction('toAttach');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$afterLoadError(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$info_wordControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$info_wordControllerBase$UMonLoad(json){
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
nc.bs.oa.oama.ecm.info_wordControllerBase.prototype = {
    afterInfoLoad : nc$bs$oa$oama$ecm$info_wordControllerBase$afterInfoLoad,
    doSubmitComment : nc$bs$oa$oama$ecm$info_wordControllerBase$doSubmitComment,
    label0_onclick : nc$bs$oa$oama$ecm$info_wordControllerBase$label0_onclick,
    bindWord : nc$bs$oa$oama$ecm$info_wordControllerBase$bindWord,
    UMonUnload : nc$bs$oa$oama$ecm$info_wordControllerBase$UMonUnload,
    openWord : nc$bs$oa$oama$ecm$info_wordControllerBase$openWord,
    UMonComplete : nc$bs$oa$oama$ecm$info_wordControllerBase$UMonComplete,
    infoLoad : nc$bs$oa$oama$ecm$info_wordControllerBase$infoLoad,
    toComment : nc$bs$oa$oama$ecm$info_wordControllerBase$toComment,
    toAttach : nc$bs$oa$oama$ecm$info_wordControllerBase$toAttach,
    UMonDataBinding : nc$bs$oa$oama$ecm$info_wordControllerBase$UMonDataBinding,
    afterLoadError : nc$bs$oa$oama$ecm$info_wordControllerBase$afterLoadError,
    toClose : nc$bs$oa$oama$ecm$info_wordControllerBase$toClose,
    UMonInit : nc$bs$oa$oama$ecm$info_wordControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$info_wordControllerBase$UMonLoad
};
nc.bs.oa.oama.ecm.info_wordControllerBase.registerClass('nc.bs.oa.oama.ecm.info_wordControllerBase',UMP.UI.Mvc.Controller);
