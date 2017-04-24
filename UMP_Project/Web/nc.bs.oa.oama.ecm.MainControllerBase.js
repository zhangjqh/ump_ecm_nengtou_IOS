Type.registerNamespace('nc.bs.oa.oama.ecm.MainControllerBase');
nc.bs.oa.oama.ecm.MainControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.MainControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        gotoEdit : [this.gotoEdit],
        onNewBtnClick : [this.onNewBtnClick],
        onCancelBtnClick : [this.onCancelBtnClick],
        onLogin : [this.onLogin],
        loadDraftData : [this.loadDraftData],
        newCallback : [this.newCallback],
        onDownRefresh : [this.onDownRefresh],
        onItemClick : [this.onItemClick],
        onUpRefresh : [this.onUpRefresh],
        detailError : [this.detailError],
        beforeLoadDraft : [this.beforeLoadDraft],
        onTempBtnClick : [this.onTempBtnClick],
        loadSentData : [this.loadSentData],
        tempCallback : [this.tempCallback],
        gotoDetail : [this.gotoDetail],
        onCloseBtnClick : [this.onCloseBtnClick],
        resumeCallback : [this.resumeCallback],
        beforeLoadSent : [this.beforeLoadSent],
        onAddBtnClick : [this.onAddBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.MainController){
        this._userController = new nc.bs.oa.oama.ecm.MainController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.MainController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.GroupListEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.GroupListEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.GroupList != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.GroupList(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$MainControllerBase$gotoEdit(json){
    try{
        _$sys.callAction('gotoEdit');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onNewBtnClick(json){
    try{
        _$sys.callAction('onNewBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onCancelBtnClick(json){
    try{
        _$sys.callAction('onCancelBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onLogin(json){
    try{
        _$sys.callAction('onLogin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$loadDraftData(json){
    try{
        _$sys.callAction('loadDraftData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$newCallback(json){
    try{
        _$sys.callAction('newCallback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onDownRefresh(json){
    try{
        _$sys.callAction('onDownRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onItemClick(json){
    try{
        _$sys.callAction('onItemClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onUpRefresh(json){
    try{
        _$sys.callAction('onUpRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$detailError(json){
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
        if(this._userController.detailError){
            this._userController.detailError($context);
        }else{
            alert("找不到方法[detailError]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$MainControllerBase$beforeLoadDraft(json){
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
        if(this._userController.beforeLoadDraft){
            this._userController.beforeLoadDraft($context);
        }else{
            alert("找不到方法[beforeLoadDraft]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$MainControllerBase$onTempBtnClick(json){
    try{
        _$sys.callAction('onTempBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$loadSentData(json){
    try{
        _$sys.callAction('loadSentData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$tempCallback(json){
    try{
        _$sys.callAction('tempCallback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$gotoDetail(json){
    try{
        _$sys.callAction('gotoDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$onCloseBtnClick(json){
    try{
        _$sys.callAction('onCloseBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$MainControllerBase$resumeCallback(json){
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
        if(this._userController.resumeCallback){
            this._userController.resumeCallback($context);
        }else{
            alert("找不到方法[resumeCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$MainControllerBase$beforeLoadSent(json){
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
        if(this._userController.beforeLoadSent){
            this._userController.beforeLoadSent($context);
        }else{
            alert("找不到方法[beforeLoadSent]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$MainControllerBase$onAddBtnClick(json){
    try{
        _$sys.callAction('onAddBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.MainControllerBase.prototype = {
    gotoEdit : nc$bs$oa$oama$ecm$MainControllerBase$gotoEdit,
    onNewBtnClick : nc$bs$oa$oama$ecm$MainControllerBase$onNewBtnClick,
    onCancelBtnClick : nc$bs$oa$oama$ecm$MainControllerBase$onCancelBtnClick,
    onLogin : nc$bs$oa$oama$ecm$MainControllerBase$onLogin,
    loadDraftData : nc$bs$oa$oama$ecm$MainControllerBase$loadDraftData,
    newCallback : nc$bs$oa$oama$ecm$MainControllerBase$newCallback,
    onDownRefresh : nc$bs$oa$oama$ecm$MainControllerBase$onDownRefresh,
    onItemClick : nc$bs$oa$oama$ecm$MainControllerBase$onItemClick,
    onUpRefresh : nc$bs$oa$oama$ecm$MainControllerBase$onUpRefresh,
    detailError : nc$bs$oa$oama$ecm$MainControllerBase$detailError,
    beforeLoadDraft : nc$bs$oa$oama$ecm$MainControllerBase$beforeLoadDraft,
    onTempBtnClick : nc$bs$oa$oama$ecm$MainControllerBase$onTempBtnClick,
    loadSentData : nc$bs$oa$oama$ecm$MainControllerBase$loadSentData,
    tempCallback : nc$bs$oa$oama$ecm$MainControllerBase$tempCallback,
    gotoDetail : nc$bs$oa$oama$ecm$MainControllerBase$gotoDetail,
    onCloseBtnClick : nc$bs$oa$oama$ecm$MainControllerBase$onCloseBtnClick,
    resumeCallback : nc$bs$oa$oama$ecm$MainControllerBase$resumeCallback,
    beforeLoadSent : nc$bs$oa$oama$ecm$MainControllerBase$beforeLoadSent,
    onAddBtnClick : nc$bs$oa$oama$ecm$MainControllerBase$onAddBtnClick
};
nc.bs.oa.oama.ecm.MainControllerBase.registerClass('nc.bs.oa.oama.ecm.MainControllerBase',UMP.UI.Mvc.Controller);
