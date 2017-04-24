Type.registerNamespace('nc.bs.oa.oama.ecm.ForwardControllerBase');
nc.bs.oa.oama.ecm.ForwardControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.ForwardControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onCancelBtnClick : [this.onCancelBtnClick],
        onCloseClick : [this.onCloseClick],
        onFlowClick : [this.onFlowClick],
        submitFailed : [this.submitFailed],
        onDataLoad : [this.onDataLoad],
        onSubmitBtnClick : [this.onSubmitBtnClick],
        attachmentCallback : [this.attachmentCallback],
        beforeCancel : [this.beforeCancel],
        onAttachmentClick : [this.onAttachmentClick],
        flowCallback : [this.flowCallback],
        cacheSent : [this.cacheSent],
        errorDialog : [this.errorDialog],
        submitSuccess : [this.submitSuccess]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.ForwardController){
        this._userController = new nc.bs.oa.oama.ecm.ForwardController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.ForwardController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.ForwardDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.ForwardDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.ForwardDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.ForwardDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$ForwardControllerBase$onCancelBtnClick(json){
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
        if(this._userController.onCancelBtnClick){
            this._userController.onCancelBtnClick($context);
        }else{
            alert("找不到方法[onCancelBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$onCloseClick(json){
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
        if(this._userController.onCloseClick){
            this._userController.onCloseClick($context);
        }else{
            alert("找不到方法[onCloseClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$onFlowClick(json){
    try{
        _$sys.callAction('onFlowClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$ForwardControllerBase$submitFailed(json){
    try{
        _$sys.callAction('submitFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$ForwardControllerBase$onDataLoad(json){
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
        if(this._userController.onDataLoad){
            this._userController.onDataLoad($context);
        }else{
            alert("找不到方法[onDataLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$onSubmitBtnClick(json){
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
        if(this._userController.onSubmitBtnClick){
            this._userController.onSubmitBtnClick($context);
        }else{
            alert("找不到方法[onSubmitBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$attachmentCallback(json){
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
        if(this._userController.attachmentCallback){
            this._userController.attachmentCallback($context);
        }else{
            alert("找不到方法[attachmentCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$beforeCancel(json){
    try{
        _$sys.callAction('beforeCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$ForwardControllerBase$onAttachmentClick(json){
    try{
        _$sys.callAction('onAttachmentClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$ForwardControllerBase$flowCallback(json){
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
        if(this._userController.flowCallback){
            this._userController.flowCallback($context);
        }else{
            alert("找不到方法[flowCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$cacheSent(json){
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
        if(this._userController.cacheSent){
            this._userController.cacheSent($context);
        }else{
            alert("找不到方法[cacheSent]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$errorDialog(json){
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
        if(this._userController.errorDialog){
            this._userController.errorDialog($context);
        }else{
            alert("找不到方法[errorDialog]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$ForwardControllerBase$submitSuccess(json){
    try{
        _$sys.callAction('submitSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.ForwardControllerBase.prototype = {
    onCancelBtnClick : nc$bs$oa$oama$ecm$ForwardControllerBase$onCancelBtnClick,
    onCloseClick : nc$bs$oa$oama$ecm$ForwardControllerBase$onCloseClick,
    onFlowClick : nc$bs$oa$oama$ecm$ForwardControllerBase$onFlowClick,
    submitFailed : nc$bs$oa$oama$ecm$ForwardControllerBase$submitFailed,
    onDataLoad : nc$bs$oa$oama$ecm$ForwardControllerBase$onDataLoad,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$ForwardControllerBase$onSubmitBtnClick,
    attachmentCallback : nc$bs$oa$oama$ecm$ForwardControllerBase$attachmentCallback,
    beforeCancel : nc$bs$oa$oama$ecm$ForwardControllerBase$beforeCancel,
    onAttachmentClick : nc$bs$oa$oama$ecm$ForwardControllerBase$onAttachmentClick,
    flowCallback : nc$bs$oa$oama$ecm$ForwardControllerBase$flowCallback,
    cacheSent : nc$bs$oa$oama$ecm$ForwardControllerBase$cacheSent,
    errorDialog : nc$bs$oa$oama$ecm$ForwardControllerBase$errorDialog,
    submitSuccess : nc$bs$oa$oama$ecm$ForwardControllerBase$submitSuccess
};
nc.bs.oa.oama.ecm.ForwardControllerBase.registerClass('nc.bs.oa.oama.ecm.ForwardControllerBase',UMP.UI.Mvc.Controller);
