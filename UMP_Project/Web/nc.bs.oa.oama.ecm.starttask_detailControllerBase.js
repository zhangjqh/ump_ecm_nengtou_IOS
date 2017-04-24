Type.registerNamespace('nc.bs.oa.oama.ecm.starttask_detailControllerBase');
nc.bs.oa.oama.ecm.starttask_detailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.starttask_detailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        canceldialog : [this.canceldialog],
        altertip : [this.altertip],
        canceljs : [this.canceljs],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding],
        cancelTask : [this.cancelTask],
        delTask : [this.delTask],
        getattchment : [this.getattchment],
        returnback : [this.returnback],
        startload : [this.startload],
        edittask : [this.edittask],
        returntip : [this.returntip],
        UMonInit : [this.UMonInit],
        openUrgewin : [this.openUrgewin],
        UMonLoad : [this.UMonLoad],
        beforeedittask : [this.beforeedittask],
        getreporthistory : [this.getreporthistory],
        deldialog : [this.deldialog]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.starttask_detailController){
        this._userController = new nc.bs.oa.oama.ecm.starttask_detailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.starttask_detailController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$canceldialog(json){
    try{
        _$sys.callAction('canceldialog');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$altertip(json){
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
        if(this._userController.altertip){
            this._userController.altertip($context);
        }else{
            alert("找不到方法[altertip]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$canceljs(json){
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
        if(this._userController.canceljs){
            this._userController.canceljs($context);
        }else{
            alert("找不到方法[canceljs]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$cancelTask(json){
    try{
        _$sys.callAction('cancelTask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$delTask(json){
    try{
        _$sys.callAction('delTask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$getattchment(json){
    try{
        _$sys.callAction('getattchment');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$returnback(json){
    try{
        _$sys.callAction('returnback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$startload(json){
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
        if(this._userController.startload){
            this._userController.startload($context);
        }else{
            alert("找不到方法[startload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$edittask(json){
    try{
        _$sys.callAction('edittask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$returntip(json){
    try{
        _$sys.callAction('returntip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$openUrgewin(json){
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
        if(this._userController.openUrgewin){
            this._userController.openUrgewin($context);
        }else{
            alert("找不到方法[openUrgewin]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$beforeedittask(json){
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
        if(this._userController.beforeedittask){
            this._userController.beforeedittask($context);
        }else{
            alert("找不到方法[beforeedittask]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$getreporthistory(json){
    try{
        _$sys.callAction('getreporthistory');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$starttask_detailControllerBase$deldialog(json){
    try{
        _$sys.callAction('deldialog');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.starttask_detailControllerBase.prototype = {
    canceldialog : nc$bs$oa$oama$ecm$starttask_detailControllerBase$canceldialog,
    altertip : nc$bs$oa$oama$ecm$starttask_detailControllerBase$altertip,
    canceljs : nc$bs$oa$oama$ecm$starttask_detailControllerBase$canceljs,
    UMonUnload : nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonDataBinding,
    cancelTask : nc$bs$oa$oama$ecm$starttask_detailControllerBase$cancelTask,
    delTask : nc$bs$oa$oama$ecm$starttask_detailControllerBase$delTask,
    getattchment : nc$bs$oa$oama$ecm$starttask_detailControllerBase$getattchment,
    returnback : nc$bs$oa$oama$ecm$starttask_detailControllerBase$returnback,
    startload : nc$bs$oa$oama$ecm$starttask_detailControllerBase$startload,
    edittask : nc$bs$oa$oama$ecm$starttask_detailControllerBase$edittask,
    returntip : nc$bs$oa$oama$ecm$starttask_detailControllerBase$returntip,
    UMonInit : nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonInit,
    openUrgewin : nc$bs$oa$oama$ecm$starttask_detailControllerBase$openUrgewin,
    UMonLoad : nc$bs$oa$oama$ecm$starttask_detailControllerBase$UMonLoad,
    beforeedittask : nc$bs$oa$oama$ecm$starttask_detailControllerBase$beforeedittask,
    getreporthistory : nc$bs$oa$oama$ecm$starttask_detailControllerBase$getreporthistory,
    deldialog : nc$bs$oa$oama$ecm$starttask_detailControllerBase$deldialog
};
nc.bs.oa.oama.ecm.starttask_detailControllerBase.registerClass('nc.bs.oa.oama.ecm.starttask_detailControllerBase',UMP.UI.Mvc.Controller);
