Type.registerNamespace('nc.bs.oa.oama.ecm.task_editControllerBase');
nc.bs.oa.oama.ecm.task_editControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.task_editControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        returnlist : [this.returnlist],
        backlist : [this.backlist],
        openfathertask : [this.openfathertask],
        detailonload : [this.detailonload],
        UMonUnload : [this.UMonUnload],
        opencrowref : [this.opencrowref],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding],
        returnpsn : [this.returnpsn],
        edittask : [this.edittask],
        returntip : [this.returntip],
        setCheckboxEnable : [this.setCheckboxEnable],
        openpsnref : [this.openpsnref],
        UMonInit : [this.UMonInit],
        crtPersonInfo : [this.crtPersonInfo],
        UMonLoad : [this.UMonLoad],
        openattachwin : [this.openattachwin],
        openchargeref : [this.openchargeref],
        attchreturn : [this.attchreturn]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.task_editController){
        this._userController = new nc.bs.oa.oama.ecm.task_editController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.task_editController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detailtaskEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.detailtaskEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detailtask != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.detailtask(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$task_editControllerBase$returnlist(json){
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
        if(this._userController.returnlist){
            this._userController.returnlist($context);
        }else{
            alert("找不到方法[returnlist]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$task_editControllerBase$backlist(json){
    try{
        _$sys.callAction('backlist');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$openfathertask(json){
    try{
        _$sys.callAction('openfathertask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$detailonload(json){
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
        if(this._userController.detailonload){
            this._userController.detailonload($context);
        }else{
            alert("找不到方法[detailonload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$task_editControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$task_editControllerBase$opencrowref(json){
    try{
        _$sys.callAction('opencrowref');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$task_editControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$task_editControllerBase$returnpsn(json){
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
        if(this._userController.returnpsn){
            this._userController.returnpsn($context);
        }else{
            alert("找不到方法[returnpsn]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$task_editControllerBase$edittask(json){
    try{
        _$sys.callAction('edittask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$returntip(json){
    try{
        _$sys.callAction('returntip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$setCheckboxEnable(json){
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
        if(this._userController.setCheckboxEnable){
            this._userController.setCheckboxEnable($context);
        }else{
            alert("找不到方法[setCheckboxEnable]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$task_editControllerBase$openpsnref(json){
    try{
        _$sys.callAction('openpsnref');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$task_editControllerBase$crtPersonInfo(json){
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
        if(this._userController.crtPersonInfo){
            this._userController.crtPersonInfo($context);
        }else{
            alert("找不到方法[crtPersonInfo]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$task_editControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$task_editControllerBase$openattachwin(json){
    try{
        _$sys.callAction('openattachwin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$openchargeref(json){
    try{
        _$sys.callAction('openchargeref');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_editControllerBase$attchreturn(json){
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
nc.bs.oa.oama.ecm.task_editControllerBase.prototype = {
    returnlist : nc$bs$oa$oama$ecm$task_editControllerBase$returnlist,
    backlist : nc$bs$oa$oama$ecm$task_editControllerBase$backlist,
    openfathertask : nc$bs$oa$oama$ecm$task_editControllerBase$openfathertask,
    detailonload : nc$bs$oa$oama$ecm$task_editControllerBase$detailonload,
    UMonUnload : nc$bs$oa$oama$ecm$task_editControllerBase$UMonUnload,
    opencrowref : nc$bs$oa$oama$ecm$task_editControllerBase$opencrowref,
    UMonComplete : nc$bs$oa$oama$ecm$task_editControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$task_editControllerBase$UMonDataBinding,
    returnpsn : nc$bs$oa$oama$ecm$task_editControllerBase$returnpsn,
    edittask : nc$bs$oa$oama$ecm$task_editControllerBase$edittask,
    returntip : nc$bs$oa$oama$ecm$task_editControllerBase$returntip,
    setCheckboxEnable : nc$bs$oa$oama$ecm$task_editControllerBase$setCheckboxEnable,
    openpsnref : nc$bs$oa$oama$ecm$task_editControllerBase$openpsnref,
    UMonInit : nc$bs$oa$oama$ecm$task_editControllerBase$UMonInit,
    crtPersonInfo : nc$bs$oa$oama$ecm$task_editControllerBase$crtPersonInfo,
    UMonLoad : nc$bs$oa$oama$ecm$task_editControllerBase$UMonLoad,
    openattachwin : nc$bs$oa$oama$ecm$task_editControllerBase$openattachwin,
    openchargeref : nc$bs$oa$oama$ecm$task_editControllerBase$openchargeref,
    attchreturn : nc$bs$oa$oama$ecm$task_editControllerBase$attchreturn
};
nc.bs.oa.oama.ecm.task_editControllerBase.registerClass('nc.bs.oa.oama.ecm.task_editControllerBase',UMP.UI.Mvc.Controller);
