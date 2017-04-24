Type.registerNamespace('nc.bs.oa.oama.ecm.SentDetailControllerBase');
nc.bs.oa.oama.ecm.SentDetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.SentDetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onForwardBtnClick : [this.onForwardBtnClick],
        downloadContent : [this.downloadContent],
        openUnknownContent : [this.openUnknownContent],
        onDataLoad : [this.onDataLoad],
        onHistoryClick : [this.onHistoryClick],
        onContentClick : [this.onContentClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        onArchiveClick : [this.onArchiveClick],
        openWordContent : [this.openWordContent],
        openDefaultContent : [this.openDefaultContent],
        contentCallback : [this.contentCallback],
        onAttachmentClick : [this.onAttachmentClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.SentDetailController){
        this._userController = new nc.bs.oa.oama.ecm.SentDetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.SentDetailController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onForwardBtnClick(json){
    try{
        _$sys.callAction('onForwardBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$downloadContent(json){
    try{
        _$sys.callAction('downloadContent');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$openUnknownContent(json){
    try{
        _$sys.callAction('openUnknownContent');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onHistoryClick(json){
    try{
        _$sys.callAction('onHistoryClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onContentClick(json){
    try{
        _$sys.callAction('onContentClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onArchiveClick(json){
    try{
        _$sys.callAction('onArchiveClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$openWordContent(json){
    try{
        _$sys.callAction('openWordContent');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$openDefaultContent(json){
    try{
        _$sys.callAction('openDefaultContent');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$SentDetailControllerBase$contentCallback(json){
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
        if(this._userController.contentCallback){
            this._userController.contentCallback($context);
        }else{
            alert("找不到方法[contentCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$SentDetailControllerBase$onAttachmentClick(json){
    try{
        _$sys.callAction('onAttachmentClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.SentDetailControllerBase.prototype = {
    onForwardBtnClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onForwardBtnClick,
    downloadContent : nc$bs$oa$oama$ecm$SentDetailControllerBase$downloadContent,
    openUnknownContent : nc$bs$oa$oama$ecm$SentDetailControllerBase$openUnknownContent,
    onDataLoad : nc$bs$oa$oama$ecm$SentDetailControllerBase$onDataLoad,
    onHistoryClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onHistoryClick,
    onContentClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onContentClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onReturnBtnClick,
    onArchiveClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onArchiveClick,
    openWordContent : nc$bs$oa$oama$ecm$SentDetailControllerBase$openWordContent,
    openDefaultContent : nc$bs$oa$oama$ecm$SentDetailControllerBase$openDefaultContent,
    contentCallback : nc$bs$oa$oama$ecm$SentDetailControllerBase$contentCallback,
    onAttachmentClick : nc$bs$oa$oama$ecm$SentDetailControllerBase$onAttachmentClick
};
nc.bs.oa.oama.ecm.SentDetailControllerBase.registerClass('nc.bs.oa.oama.ecm.SentDetailControllerBase',UMP.UI.Mvc.Controller);
