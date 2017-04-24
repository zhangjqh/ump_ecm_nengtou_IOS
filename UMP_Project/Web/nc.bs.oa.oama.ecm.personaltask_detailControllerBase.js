Type.registerNamespace('nc.bs.oa.oama.ecm.personaltask_detailControllerBase');
nc.bs.oa.oama.ecm.personaltask_detailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.personaltask_detailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        beforeEdit : [this.beforeEdit],
        addschedule : [this.addschedule],
        UMonUnload : [this.UMonUnload],
        deletePsnTask : [this.deletePsnTask],
        UMonComplete : [this.UMonComplete],
        deltask : [this.deltask],
        delError : [this.delError],
        UMonDataBinding : [this.UMonDataBinding],
        editpersonaltask : [this.editpersonaltask],
        getattchment : [this.getattchment],
        returnforlist : [this.returnforlist],
        poptip : [this.poptip],
        completetask : [this.completetask],
        returntip : [this.returntip],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        addschedulecheck : [this.addschedulecheck],
        checkscheduletip : [this.checkscheduletip],
        detailOnload : [this.detailOnload],
        poptipforall : [this.poptipforall],
        completetasktip : [this.completetasktip],
        completeError : [this.completeError]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.personaltask_detailController){
        this._userController = new nc.bs.oa.oama.ecm.personaltask_detailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.personaltask_detailController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$beforeEdit(json){
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
        if(this._userController.beforeEdit){
            this._userController.beforeEdit($context);
        }else{
            alert("找不到方法[beforeEdit]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$addschedule(json){
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
        if(this._userController.addschedule){
            this._userController.addschedule($context);
        }else{
            alert("找不到方法[addschedule]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$deletePsnTask(json){
    try{
        _$sys.callAction('deletePsnTask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$deltask(json){
    try{
        _$sys.callAction('deltask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$delError(json){
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
        if(this._userController.delError){
            this._userController.delError($context);
        }else{
            alert("找不到方法[delError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$editpersonaltask(json){
    try{
        _$sys.callAction('editpersonaltask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$getattchment(json){
    try{
        _$sys.callAction('getattchment');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$returnforlist(json){
    try{
        _$sys.callAction('returnforlist');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptip(json){
    try{
        _$sys.callAction('poptip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completetask(json){
    try{
        _$sys.callAction('completetask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$returntip(json){
    try{
        _$sys.callAction('returntip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$addschedulecheck(json){
    try{
        _$sys.callAction('addschedulecheck');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$checkscheduletip(json){
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
        if(this._userController.checkscheduletip){
            this._userController.checkscheduletip($context);
        }else{
            alert("找不到方法[checkscheduletip]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$detailOnload(json){
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
        if(this._userController.detailOnload){
            this._userController.detailOnload($context);
        }else{
            alert("找不到方法[detailOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptipforall(json){
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completetasktip(json){
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
        if(this._userController.completetasktip){
            this._userController.completetasktip($context);
        }else{
            alert("找不到方法[completetasktip]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completeError(json){
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
        if(this._userController.completeError){
            this._userController.completeError($context);
        }else{
            alert("找不到方法[completeError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.personaltask_detailControllerBase.prototype = {
    beforeEdit : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$beforeEdit,
    addschedule : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$addschedule,
    UMonUnload : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonUnload,
    deletePsnTask : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$deletePsnTask,
    UMonComplete : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonComplete,
    deltask : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$deltask,
    delError : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$delError,
    UMonDataBinding : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonDataBinding,
    editpersonaltask : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$editpersonaltask,
    getattchment : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$getattchment,
    returnforlist : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$returnforlist,
    poptip : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptip,
    completetask : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completetask,
    returntip : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$returntip,
    UMonInit : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$UMonLoad,
    addschedulecheck : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$addschedulecheck,
    checkscheduletip : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$checkscheduletip,
    detailOnload : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$detailOnload,
    poptipforall : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$poptipforall,
    completetasktip : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completetasktip,
    completeError : nc$bs$oa$oama$ecm$personaltask_detailControllerBase$completeError
};
nc.bs.oa.oama.ecm.personaltask_detailControllerBase.registerClass('nc.bs.oa.oama.ecm.personaltask_detailControllerBase',UMP.UI.Mvc.Controller);
