Type.registerNamespace('nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase');
nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        phoneCallback : [this.phoneCallback],
        onCancelBtnClick : [this.onCancelBtnClick],
        onMsgClick : [this.onMsgClick],
        msgCallback : [this.msgCallback],
        onWorkClick : [this.onWorkClick],
        onEmailClick : [this.onEmailClick],
        afterMobileClick : [this.afterMobileClick],
        onDataLoad : [this.onDataLoad],
        onReturnBtnClick : [this.onReturnBtnClick],
        onHomeClick : [this.onHomeClick],
        onPhoneClick : [this.onPhoneClick],
        onMobileClick : [this.onMobileClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.EcmPersonInfoController){
        this._userController = new nc.bs.oa.oama.ecm.EcmPersonInfoController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.EcmPersonInfoController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.PersonInfoEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.PersonInfoEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.PersonInfo != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.PersonInfo(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$phoneCallback(json){
    try{
        _$sys.callAction('phoneCallback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onCancelBtnClick(json){
    try{
        _$sys.callAction('onCancelBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onMsgClick(json){
    try{
        _$sys.callAction('onMsgClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$msgCallback(json){
    try{
        _$sys.callAction('msgCallback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onWorkClick(json){
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
        if(this._userController.onWorkClick){
            this._userController.onWorkClick($context);
        }else{
            alert("找不到方法[onWorkClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onEmailClick(json){
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
        if(this._userController.onEmailClick){
            this._userController.onEmailClick($context);
        }else{
            alert("找不到方法[onEmailClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$afterMobileClick(json){
    try{
        _$sys.callAction('afterMobileClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onHomeClick(json){
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
        if(this._userController.onHomeClick){
            this._userController.onHomeClick($context);
        }else{
            alert("找不到方法[onHomeClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onPhoneClick(json){
    try{
        _$sys.callAction('onPhoneClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onMobileClick(json){
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
        if(this._userController.onMobileClick){
            this._userController.onMobileClick($context);
        }else{
            alert("找不到方法[onMobileClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase.prototype = {
    phoneCallback : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$phoneCallback,
    onCancelBtnClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onCancelBtnClick,
    onMsgClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onMsgClick,
    msgCallback : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$msgCallback,
    onWorkClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onWorkClick,
    onEmailClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onEmailClick,
    afterMobileClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$afterMobileClick,
    onDataLoad : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onDataLoad,
    onReturnBtnClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onReturnBtnClick,
    onHomeClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onHomeClick,
    onPhoneClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onPhoneClick,
    onMobileClick : nc$bs$oa$oama$ecm$EcmPersonInfoControllerBase$onMobileClick
};
nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase.registerClass('nc.bs.oa.oama.ecm.EcmPersonInfoControllerBase',UMP.UI.Mvc.Controller);
