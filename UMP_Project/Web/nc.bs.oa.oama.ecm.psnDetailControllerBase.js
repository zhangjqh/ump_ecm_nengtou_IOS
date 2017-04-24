Type.registerNamespace('nc.bs.oa.oama.ecm.psnDetailControllerBase');
nc.bs.oa.oama.ecm.psnDetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.psnDetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        cacheDetail : [this.cacheDetail],
        sendMsg : [this.sendMsg],
        changePGroup : [this.changePGroup],
        callOfficePhone : [this.callOfficePhone],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding],
        noCache : [this.noCache],
        forwardCard : [this.forwardCard],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        sendEmail : [this.sendEmail],
        detailOnload : [this.detailOnload],
        callMobilePhone : [this.callMobilePhone],
        saveContacts : [this.saveContacts],
        onBack : [this.onBack]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.psnDetailController){
        this._userController = new nc.bs.oa.oama.ecm.psnDetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.psnDetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.psndetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.psndetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.psndetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.psndetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$cacheDetail(json){
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
        if(this._userController.cacheDetail){
            this._userController.cacheDetail($context);
        }else{
            alert("找不到方法[cacheDetail]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$sendMsg(json){
    try{
        _$sys.callAction('sendMsg');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$changePGroup(json){
    try{
        _$sys.callAction('changePGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$callOfficePhone(json){
    try{
        _$sys.callAction('callOfficePhone');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$noCache(json){
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
        if(this._userController.noCache){
            this._userController.noCache($context);
        }else{
            alert("找不到方法[noCache]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$forwardCard(json){
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
        if(this._userController.forwardCard){
            this._userController.forwardCard($context);
        }else{
            alert("找不到方法[forwardCard]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$sendEmail(json){
    try{
        _$sys.callAction('sendEmail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$detailOnload(json){
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$callMobilePhone(json){
    try{
        _$sys.callAction('callMobilePhone');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$psnDetailControllerBase$saveContacts(json){
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
        if(this._userController.saveContacts){
            this._userController.saveContacts($context);
        }else{
            alert("找不到方法[saveContacts]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$psnDetailControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.psnDetailControllerBase.prototype = {
    cacheDetail : nc$bs$oa$oama$ecm$psnDetailControllerBase$cacheDetail,
    sendMsg : nc$bs$oa$oama$ecm$psnDetailControllerBase$sendMsg,
    changePGroup : nc$bs$oa$oama$ecm$psnDetailControllerBase$changePGroup,
    callOfficePhone : nc$bs$oa$oama$ecm$psnDetailControllerBase$callOfficePhone,
    UMonUnload : nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonDataBinding,
    noCache : nc$bs$oa$oama$ecm$psnDetailControllerBase$noCache,
    forwardCard : nc$bs$oa$oama$ecm$psnDetailControllerBase$forwardCard,
    UMonInit : nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$psnDetailControllerBase$UMonLoad,
    sendEmail : nc$bs$oa$oama$ecm$psnDetailControllerBase$sendEmail,
    detailOnload : nc$bs$oa$oama$ecm$psnDetailControllerBase$detailOnload,
    callMobilePhone : nc$bs$oa$oama$ecm$psnDetailControllerBase$callMobilePhone,
    saveContacts : nc$bs$oa$oama$ecm$psnDetailControllerBase$saveContacts,
    onBack : nc$bs$oa$oama$ecm$psnDetailControllerBase$onBack
};
nc.bs.oa.oama.ecm.psnDetailControllerBase.registerClass('nc.bs.oa.oama.ecm.psnDetailControllerBase',UMP.UI.Mvc.Controller);
