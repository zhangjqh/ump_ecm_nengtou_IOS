Type.registerNamespace('nc.bs.oa.oama.ecm.reportwinControllerBase');
nc.bs.oa.oama.ecm.reportwinControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.reportwinControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        returntip : [this.returntip],
        attwinback : [this.attwinback],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        submitreport : [this.submitreport],
        UMonUnload : [this.UMonUnload],
        openattachwin : [this.openattachwin],
        closewin : [this.closewin],
        viewonload : [this.viewonload],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.reportwinController){
        this._userController = new nc.bs.oa.oama.ecm.reportwinController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.reportwinController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.reportEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.reportEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.report != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.report(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$returntip(json){
    try{
        _$sys.callAction('returntip');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$attwinback(json){
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
        if(this._userController.attwinback){
            this._userController.attwinback($context);
        }else{
            alert("找不到方法[attwinback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$reportwinControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$reportwinControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$reportwinControllerBase$submitreport(json){
    try{
        _$sys.callAction('submitreport');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$reportwinControllerBase$openattachwin(json){
    try{
        _$sys.callAction('openattachwin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$closewin(json){
    try{
        _$sys.callAction('closewin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$viewonload(json){
    try{
        _$sys.callAction('viewonload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$reportwinControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$reportwinControllerBase$UMonDataBinding(json){
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
nc.bs.oa.oama.ecm.reportwinControllerBase.prototype = {
    returntip : nc$bs$oa$oama$ecm$reportwinControllerBase$returntip,
    attwinback : nc$bs$oa$oama$ecm$reportwinControllerBase$attwinback,
    UMonInit : nc$bs$oa$oama$ecm$reportwinControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$reportwinControllerBase$UMonLoad,
    submitreport : nc$bs$oa$oama$ecm$reportwinControllerBase$submitreport,
    UMonUnload : nc$bs$oa$oama$ecm$reportwinControllerBase$UMonUnload,
    openattachwin : nc$bs$oa$oama$ecm$reportwinControllerBase$openattachwin,
    closewin : nc$bs$oa$oama$ecm$reportwinControllerBase$closewin,
    viewonload : nc$bs$oa$oama$ecm$reportwinControllerBase$viewonload,
    UMonComplete : nc$bs$oa$oama$ecm$reportwinControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$reportwinControllerBase$UMonDataBinding
};
nc.bs.oa.oama.ecm.reportwinControllerBase.registerClass('nc.bs.oa.oama.ecm.reportwinControllerBase',UMP.UI.Mvc.Controller);
