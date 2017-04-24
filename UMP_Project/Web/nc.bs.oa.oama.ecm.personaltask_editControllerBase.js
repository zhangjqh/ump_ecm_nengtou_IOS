Type.registerNamespace('nc.bs.oa.oama.ecm.personaltask_editControllerBase');
nc.bs.oa.oama.ecm.personaltask_editControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.personaltask_editControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        closeWin : [this.closeWin],
        openstateref : [this.openstateref],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        saveError : [this.saveError],
        UMonDataBinding : [this.UMonDataBinding],
        saveClick : [this.saveClick],
        dataonload : [this.dataonload],
        returndialog : [this.returndialog],
        returntip : [this.returntip],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        openattachwin : [this.openattachwin],
        poptipforall : [this.poptipforall],
        attchreturn : [this.attchreturn]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.personaltask_editController){
        this._userController = new nc.bs.oa.oama.ecm.personaltask_editController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.personaltask_editController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.personaltaskEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.personaltaskEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.personaltask != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.personaltask(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$closeWin(json){
    try{
        _$sys.callAction('closeWin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$openstateref(json){
    try{
        _$sys.callAction('openstateref');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$saveError(json){
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
        if(this._userController.saveError){
            this._userController.saveError($context);
        }else{
            alert("找不到方法[saveError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$saveClick(json){
    try{
        _$sys.callAction('saveClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$dataonload(json){
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
        if(this._userController.dataonload){
            this._userController.dataonload($context);
        }else{
            alert("找不到方法[dataonload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$returndialog(json){
    try{
        _$sys.callAction('returndialog');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$returntip(json){
    try{
        _$sys.callAction('returntip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$openattachwin(json){
    try{
        _$sys.callAction('openattachwin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$poptipforall(json){
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
        if(this._userController.poptipforall){
            this._userController.poptipforall($context);
        }else{
            alert("找不到方法[poptipforall]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_editControllerBase$attchreturn(json){
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
        if(this._userController.attchreturn){
            this._userController.attchreturn($context);
        }else{
            alert("找不到方法[attchreturn]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.personaltask_editControllerBase.prototype = {
    closeWin : nc$bs$oa$oama$ecm$personaltask_editControllerBase$closeWin,
    openstateref : nc$bs$oa$oama$ecm$personaltask_editControllerBase$openstateref,
    UMonUnload : nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonComplete,
    saveError : nc$bs$oa$oama$ecm$personaltask_editControllerBase$saveError,
    UMonDataBinding : nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonDataBinding,
    saveClick : nc$bs$oa$oama$ecm$personaltask_editControllerBase$saveClick,
    dataonload : nc$bs$oa$oama$ecm$personaltask_editControllerBase$dataonload,
    returndialog : nc$bs$oa$oama$ecm$personaltask_editControllerBase$returndialog,
    returntip : nc$bs$oa$oama$ecm$personaltask_editControllerBase$returntip,
    UMonInit : nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$personaltask_editControllerBase$UMonLoad,
    openattachwin : nc$bs$oa$oama$ecm$personaltask_editControllerBase$openattachwin,
    poptipforall : nc$bs$oa$oama$ecm$personaltask_editControllerBase$poptipforall,
    attchreturn : nc$bs$oa$oama$ecm$personaltask_editControllerBase$attchreturn
};
nc.bs.oa.oama.ecm.personaltask_editControllerBase.registerClass('nc.bs.oa.oama.ecm.personaltask_editControllerBase',UMP.UI.Mvc.Controller);
