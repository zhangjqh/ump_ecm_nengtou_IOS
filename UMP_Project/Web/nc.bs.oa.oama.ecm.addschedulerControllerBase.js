Type.registerNamespace('nc.bs.oa.oama.ecm.addschedulerControllerBase');
nc.bs.oa.oama.ecm.addschedulerControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.addschedulerControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        isalldayChanged : [this.isalldayChanged],
        onSave : [this.onSave],
        remindTypeOnload : [this.remindTypeOnload],
        detailOnload : [this.detailOnload],
        remindTypeInit : [this.remindTypeInit],
        onBack : [this.onBack],
        toRepeatRull : [this.toRepeatRull],
        toRemindRull : [this.toRemindRull]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.addschedulerController){
        this._userController = new nc.bs.oa.oama.ecm.addschedulerController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.addschedulerController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$addschedulerControllerBase$isalldayChanged(json){
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
        if(this._userController.isalldayChanged){
            this._userController.isalldayChanged($context);
        }else{
            alert("找不到方法[isalldayChanged]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addschedulerControllerBase$onSave(json){
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
        if(this._userController.onSave){
            this._userController.onSave($context);
        }else{
            alert("找不到方法[onSave]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeOnload(json){
    try{
        _$sys.callAction('remindTypeOnload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addschedulerControllerBase$detailOnload(json){
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
function nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeInit(json){
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
        if(this._userController.remindTypeInit){
            this._userController.remindTypeInit($context);
        }else{
            alert("找不到方法[remindTypeInit]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addschedulerControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addschedulerControllerBase$toRepeatRull(json){
    try{
        _$sys.callAction('toRepeatRull');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addschedulerControllerBase$toRemindRull(json){
    try{
        _$sys.callAction('toRemindRull');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.addschedulerControllerBase.prototype = {
    isalldayChanged : nc$bs$oa$oama$ecm$addschedulerControllerBase$isalldayChanged,
    onSave : nc$bs$oa$oama$ecm$addschedulerControllerBase$onSave,
    remindTypeOnload : nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeOnload,
    detailOnload : nc$bs$oa$oama$ecm$addschedulerControllerBase$detailOnload,
    remindTypeInit : nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeInit,
    onBack : nc$bs$oa$oama$ecm$addschedulerControllerBase$onBack,
    toRepeatRull : nc$bs$oa$oama$ecm$addschedulerControllerBase$toRepeatRull,
    toRemindRull : nc$bs$oa$oama$ecm$addschedulerControllerBase$toRemindRull
};
nc.bs.oa.oama.ecm.addschedulerControllerBase.registerClass('nc.bs.oa.oama.ecm.addschedulerControllerBase',UMP.UI.Mvc.Controller);
