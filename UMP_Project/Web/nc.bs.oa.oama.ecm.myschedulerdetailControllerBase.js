Type.registerNamespace('nc.bs.oa.oama.ecm.myschedulerdetailControllerBase');
nc.bs.oa.oama.ecm.myschedulerdetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.myschedulerdetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        deleteScheduler : [this.deleteScheduler],
        cancelScheduler : [this.cancelScheduler],
        onEdid : [this.onEdid],
        onShare : [this.onShare],
        onDelete : [this.onDelete],
        detailOnload : [this.detailOnload],
        onBack : [this.onBack],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.myschedulerdetailController){
        this._userController = new nc.bs.oa.oama.ecm.myschedulerdetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.myschedulerdetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.eventDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.eventDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$deleteScheduler(json){
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
        if(this._userController.deleteScheduler){
            this._userController.deleteScheduler($context);
        }else{
            alert("找不到方法[deleteScheduler]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$cancelScheduler(json){
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
        if(this._userController.cancelScheduler){
            this._userController.cancelScheduler($context);
        }else{
            alert("找不到方法[cancelScheduler]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onEdid(json){
    try{
        _$sys.callAction('onEdid');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onShare(json){
    try{
        _$sys.callAction('onShare');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onDelete(json){
    try{
        _$sys.callAction('onDelete');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$detailOnload(json){
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
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.myschedulerdetailControllerBase.prototype = {
    deleteScheduler : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$deleteScheduler,
    cancelScheduler : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$cancelScheduler,
    onEdid : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onEdid,
    onShare : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onShare,
    onDelete : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onDelete,
    detailOnload : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$detailOnload,
    onBack : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onBack,
    onCancel : nc$bs$oa$oama$ecm$myschedulerdetailControllerBase$onCancel
};
nc.bs.oa.oama.ecm.myschedulerdetailControllerBase.registerClass('nc.bs.oa.oama.ecm.myschedulerdetailControllerBase',UMP.UI.Mvc.Controller);
