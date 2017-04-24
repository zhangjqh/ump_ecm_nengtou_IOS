Type.registerNamespace('nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase');
nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onDeleteBtnClick : [this.onDeleteBtnClick],
        OnLoadData : [this.OnLoadData],
        onItemClick : [this.onItemClick],
        addCallback : [this.addCallback],
        deleteCallback : [this.deleteCallback],
        onReturnBtnClick : [this.onReturnBtnClick],
        onAddBtnClick : [this.onAddBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Msg_AttachmentListController){
        this._userController = new nc.bs.oa.oama.ecm.Msg_AttachmentListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Msg_AttachmentListController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessageEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.msg_CreateMessageEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessage != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.msg_CreateMessage(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onDeleteBtnClick(json){
    try{
        _$sys.callAction('onDeleteBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$OnLoadData(json){
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
        if(this._userController.OnLoadData){
            this._userController.OnLoadData($context);
        }else{
            alert("找不到方法[OnLoadData]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onItemClick(json){
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
        if(this._userController.onItemClick){
            this._userController.onItemClick($context);
        }else{
            alert("找不到方法[onItemClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$addCallback(json){
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
        if(this._userController.addCallback){
            this._userController.addCallback($context);
        }else{
            alert("找不到方法[addCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$deleteCallback(json){
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
        if(this._userController.deleteCallback){
            this._userController.deleteCallback($context);
        }else{
            alert("找不到方法[deleteCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onAddBtnClick(json){
    try{
        _$sys.callAction('onAddBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase.prototype = {
    onDeleteBtnClick : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onDeleteBtnClick,
    OnLoadData : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$OnLoadData,
    onItemClick : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onItemClick,
    addCallback : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$addCallback,
    deleteCallback : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$deleteCallback,
    onReturnBtnClick : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onReturnBtnClick,
    onAddBtnClick : nc$bs$oa$oama$ecm$Msg_AttachmentListControllerBase$onAddBtnClick
};
nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase.registerClass('nc.bs.oa.oama.ecm.Msg_AttachmentListControllerBase',UMP.UI.Mvc.Controller);
