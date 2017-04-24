Type.registerNamespace('nc.bs.oa.oama.ecm.DraftEditControllerBase');
nc.bs.oa.oama.ecm.DraftEditControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.DraftEditControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onCancelBtnClick : [this.onCancelBtnClick],
        onCloseClick : [this.onCloseClick],
        onFlowClick : [this.onFlowClick],
        submitFailed : [this.submitFailed],
        cacheDraft : [this.cacheDraft],
        onDataLoad : [this.onDataLoad],
        onSubmitBtnClick : [this.onSubmitBtnClick],
        attachmentCallback : [this.attachmentCallback],
        beforeCancel : [this.beforeCancel],
        onArchiveClick : [this.onArchiveClick],
        cacheSent : [this.cacheSent],
        onAttachmentClick : [this.onAttachmentClick],
        flowCallback : [this.flowCallback],
        errorDialog : [this.errorDialog],
        submitSuccess : [this.submitSuccess],
        archiveCallback : [this.archiveCallback],
        onDraftBtnClick : [this.onDraftBtnClick],
        draftFailed : [this.draftFailed],
        draftSuccess : [this.draftSuccess]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.DraftEditController){
        this._userController = new nc.bs.oa.oama.ecm.DraftEditController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.DraftEditController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.WorkDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.WorkDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onCancelBtnClick(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onCloseClick(json){
    try{
        _$sys.callAction('onCloseClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onFlowClick(json){
    try{
        _$sys.callAction('onFlowClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$submitFailed(json){
    try{
        _$sys.callAction('submitFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$cacheDraft(json){
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
        if(this._userController.cacheDraft){
            this._userController.cacheDraft($context);
        }else{
            alert("找不到方法[cacheDraft]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onSubmitBtnClick(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$attachmentCallback(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$beforeCancel(json){
    try{
        _$sys.callAction('beforeCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onArchiveClick(json){
    try{
        _$sys.callAction('onArchiveClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$cacheSent(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onAttachmentClick(json){
    try{
        _$sys.callAction('onAttachmentClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$flowCallback(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$errorDialog(json){
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$submitSuccess(json){
    try{
        _$sys.callAction('submitSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$archiveCallback(json){
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
        if(this._userController.archiveCallback){
            this._userController.archiveCallback($context);
        }else{
            alert("找不到方法[archiveCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$onDraftBtnClick(json){
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
        if(this._userController.onDraftBtnClick){
            this._userController.onDraftBtnClick($context);
        }else{
            alert("找不到方法[onDraftBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$DraftEditControllerBase$draftFailed(json){
    try{
        _$sys.callAction('draftFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftEditControllerBase$draftSuccess(json){
    try{
        _$sys.callAction('draftSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.DraftEditControllerBase.prototype = {
    onCancelBtnClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onCancelBtnClick,
    onCloseClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onCloseClick,
    onFlowClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onFlowClick,
    submitFailed : nc$bs$oa$oama$ecm$DraftEditControllerBase$submitFailed,
    cacheDraft : nc$bs$oa$oama$ecm$DraftEditControllerBase$cacheDraft,
    onDataLoad : nc$bs$oa$oama$ecm$DraftEditControllerBase$onDataLoad,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onSubmitBtnClick,
    attachmentCallback : nc$bs$oa$oama$ecm$DraftEditControllerBase$attachmentCallback,
    beforeCancel : nc$bs$oa$oama$ecm$DraftEditControllerBase$beforeCancel,
    onArchiveClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onArchiveClick,
    cacheSent : nc$bs$oa$oama$ecm$DraftEditControllerBase$cacheSent,
    onAttachmentClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onAttachmentClick,
    flowCallback : nc$bs$oa$oama$ecm$DraftEditControllerBase$flowCallback,
    errorDialog : nc$bs$oa$oama$ecm$DraftEditControllerBase$errorDialog,
    submitSuccess : nc$bs$oa$oama$ecm$DraftEditControllerBase$submitSuccess,
    archiveCallback : nc$bs$oa$oama$ecm$DraftEditControllerBase$archiveCallback,
    onDraftBtnClick : nc$bs$oa$oama$ecm$DraftEditControllerBase$onDraftBtnClick,
    draftFailed : nc$bs$oa$oama$ecm$DraftEditControllerBase$draftFailed,
    draftSuccess : nc$bs$oa$oama$ecm$DraftEditControllerBase$draftSuccess
};
nc.bs.oa.oama.ecm.DraftEditControllerBase.registerClass('nc.bs.oa.oama.ecm.DraftEditControllerBase',UMP.UI.Mvc.Controller);
