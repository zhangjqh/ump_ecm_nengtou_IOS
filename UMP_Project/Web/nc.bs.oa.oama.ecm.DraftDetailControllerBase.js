Type.registerNamespace('nc.bs.oa.oama.ecm.DraftDetailControllerBase');
nc.bs.oa.oama.ecm.DraftDetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.DraftDetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onCloseClick : [this.onCloseClick],
        onFlowClick : [this.onFlowClick],
        submitFailed : [this.submitFailed],
        cacheDraft : [this.cacheDraft],
        onDataLoad : [this.onDataLoad],
        onSubmitBtnClick : [this.onSubmitBtnClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        onArchiveClick : [this.onArchiveClick],
        cacheSent : [this.cacheSent],
        onAttachmentClick : [this.onAttachmentClick],
        onEditBtnClick : [this.onEditBtnClick],
        onDeleteBtnClick : [this.onDeleteBtnClick],
        errorDialog : [this.errorDialog],
        submitSuccess : [this.submitSuccess],
        deleteSuccess : [this.deleteSuccess],
        deleteFailed : [this.deleteFailed],
        deleteWork : [this.deleteWork]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.DraftDetailController){
        this._userController = new nc.bs.oa.oama.ecm.DraftDetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.DraftDetailController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onCloseClick(json){
    try{
        _$sys.callAction('onCloseClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onFlowClick(json){
    try{
        _$sys.callAction('onFlowClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$submitFailed(json){
    try{
        _$sys.callAction('submitFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$cacheDraft(json){
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onSubmitBtnClick(json){
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onArchiveClick(json){
    try{
        _$sys.callAction('onArchiveClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$cacheSent(json){
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onAttachmentClick(json){
    try{
        _$sys.callAction('onAttachmentClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onEditBtnClick(json){
    try{
        _$sys.callAction('onEditBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$onDeleteBtnClick(json){
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
        if(this._userController.onDeleteBtnClick){
            this._userController.onDeleteBtnClick($context);
        }else{
            alert("找不到方法[onDeleteBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$errorDialog(json){
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
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$submitSuccess(json){
    try{
        _$sys.callAction('submitSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteSuccess(json){
    try{
        _$sys.callAction('deleteSuccess');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteFailed(json){
    try{
        _$sys.callAction('deleteFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteWork(json){
    try{
        _$sys.callAction('deleteWork');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.DraftDetailControllerBase.prototype = {
    onCloseClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onCloseClick,
    onFlowClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onFlowClick,
    submitFailed : nc$bs$oa$oama$ecm$DraftDetailControllerBase$submitFailed,
    cacheDraft : nc$bs$oa$oama$ecm$DraftDetailControllerBase$cacheDraft,
    onDataLoad : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onDataLoad,
    onSubmitBtnClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onSubmitBtnClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onReturnBtnClick,
    onArchiveClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onArchiveClick,
    cacheSent : nc$bs$oa$oama$ecm$DraftDetailControllerBase$cacheSent,
    onAttachmentClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onAttachmentClick,
    onEditBtnClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onEditBtnClick,
    onDeleteBtnClick : nc$bs$oa$oama$ecm$DraftDetailControllerBase$onDeleteBtnClick,
    errorDialog : nc$bs$oa$oama$ecm$DraftDetailControllerBase$errorDialog,
    submitSuccess : nc$bs$oa$oama$ecm$DraftDetailControllerBase$submitSuccess,
    deleteSuccess : nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteSuccess,
    deleteFailed : nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteFailed,
    deleteWork : nc$bs$oa$oama$ecm$DraftDetailControllerBase$deleteWork
};
nc.bs.oa.oama.ecm.DraftDetailControllerBase.registerClass('nc.bs.oa.oama.ecm.DraftDetailControllerBase',UMP.UI.Mvc.Controller);
