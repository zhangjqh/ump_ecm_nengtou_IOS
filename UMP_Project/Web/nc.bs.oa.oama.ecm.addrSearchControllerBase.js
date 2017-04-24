Type.registerNamespace('nc.bs.oa.oama.ecm.addrSearchControllerBase');
nc.bs.oa.oama.ecm.addrSearchControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.addrSearchControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        tipsOnload : [this.tipsOnload],
        doSearch : [this.doSearch],
        toDesk : [this.toDesk],
        toNearlyCheck : [this.toNearlyCheck],
        UMonUnload : [this.UMonUnload],
        loginFailed : [this.loginFailed],
        UMonComplete : [this.UMonComplete],
        getNextSearch : [this.getNextSearch],
        UMonDataBinding : [this.UMonDataBinding],
        toSearch : [this.toSearch],
        toEntGroup : [this.toEntGroup],
        toNavGroup : [this.toNavGroup],
        toPsnDetail : [this.toPsnDetail],
        searchCallback : [this.searchCallback],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        toPsnGroup : [this.toPsnGroup],
        login : [this.login],
        setTips : [this.setTips]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.addrSearchController){
        this._userController = new nc.bs.oa.oama.ecm.addrSearchController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.addrSearchController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.psnListEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.psnListEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.psnList != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.psnList(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$tabBarOnload(json){
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
        if(this._userController.tabBarOnload){
            this._userController.tabBarOnload($context);
        }else{
            alert("找不到方法[tabBarOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$tipsOnload(json){
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
        if(this._userController.tipsOnload){
            this._userController.tipsOnload($context);
        }else{
            alert("找不到方法[tipsOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$doSearch(json){
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
        if(this._userController.doSearch){
            this._userController.doSearch($context);
        }else{
            alert("找不到方法[doSearch]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toDesk(json){
    try{
        _$sys.callAction('toDesk');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toNearlyCheck(json){
    try{
        _$sys.callAction('toNearlyCheck');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$loginFailed(json){
    try{
        _$sys.callAction('loginFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$getNextSearch(json){
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
        if(this._userController.getNextSearch){
            this._userController.getNextSearch($context);
        }else{
            alert("找不到方法[getNextSearch]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toSearch(json){
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
        if(this._userController.toSearch){
            this._userController.toSearch($context);
        }else{
            alert("找不到方法[toSearch]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toEntGroup(json){
    try{
        _$sys.callAction('toEntGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toNavGroup(json){
    try{
        _$sys.callAction('toNavGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toPsnDetail(json){
    try{
        _$sys.callAction('toPsnDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$searchCallback(json){
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
        if(this._userController.searchCallback){
            this._userController.searchCallback($context);
        }else{
            alert("找不到方法[searchCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$addrSearchControllerBase$toPsnGroup(json){
    try{
        _$sys.callAction('toPsnGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$login(json){
    try{
        _$sys.callAction('login');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$addrSearchControllerBase$setTips(json){
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
        if(this._userController.setTips){
            this._userController.setTips($context);
        }else{
            alert("找不到方法[setTips]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.addrSearchControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$addrSearchControllerBase$tabBarOnload,
    tipsOnload : nc$bs$oa$oama$ecm$addrSearchControllerBase$tipsOnload,
    doSearch : nc$bs$oa$oama$ecm$addrSearchControllerBase$doSearch,
    toDesk : nc$bs$oa$oama$ecm$addrSearchControllerBase$toDesk,
    toNearlyCheck : nc$bs$oa$oama$ecm$addrSearchControllerBase$toNearlyCheck,
    UMonUnload : nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonUnload,
    loginFailed : nc$bs$oa$oama$ecm$addrSearchControllerBase$loginFailed,
    UMonComplete : nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonComplete,
    getNextSearch : nc$bs$oa$oama$ecm$addrSearchControllerBase$getNextSearch,
    UMonDataBinding : nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonDataBinding,
    toSearch : nc$bs$oa$oama$ecm$addrSearchControllerBase$toSearch,
    toEntGroup : nc$bs$oa$oama$ecm$addrSearchControllerBase$toEntGroup,
    toNavGroup : nc$bs$oa$oama$ecm$addrSearchControllerBase$toNavGroup,
    toPsnDetail : nc$bs$oa$oama$ecm$addrSearchControllerBase$toPsnDetail,
    searchCallback : nc$bs$oa$oama$ecm$addrSearchControllerBase$searchCallback,
    UMonInit : nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$addrSearchControllerBase$UMonLoad,
    toPsnGroup : nc$bs$oa$oama$ecm$addrSearchControllerBase$toPsnGroup,
    login : nc$bs$oa$oama$ecm$addrSearchControllerBase$login,
    setTips : nc$bs$oa$oama$ecm$addrSearchControllerBase$setTips
};
nc.bs.oa.oama.ecm.addrSearchControllerBase.registerClass('nc.bs.oa.oama.ecm.addrSearchControllerBase',UMP.UI.Mvc.Controller);
