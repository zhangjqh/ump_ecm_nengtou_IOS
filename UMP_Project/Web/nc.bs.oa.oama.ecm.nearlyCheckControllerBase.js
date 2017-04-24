Type.registerNamespace('nc.bs.oa.oama.ecm.nearlyCheckControllerBase');
nc.bs.oa.oama.ecm.nearlyCheckControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.nearlyCheckControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        toNearlyCheck : [this.toNearlyCheck],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        UMonDataBinding : [this.UMonDataBinding],
        toSearch : [this.toSearch],
        toNavGroup : [this.toNavGroup],
        toPsnDetail : [this.toPsnDetail],
        toEntGroup : [this.toEntGroup],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        toPsnGroup : [this.toPsnGroup],
        listViewOnload : [this.listViewOnload]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.nearlyCheckController){
        this._userController = new nc.bs.oa.oama.ecm.nearlyCheckController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.nearlyCheckController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$tabBarOnload(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNearlyCheck(json){
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
        if(this._userController.toNearlyCheck){
            this._userController.toNearlyCheck($context);
        }else{
            alert("找不到方法[toNearlyCheck]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toSearch(json){
    try{
        _$sys.callAction('toSearch');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNavGroup(json){
    try{
        _$sys.callAction('toNavGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toPsnDetail(json){
    try{
        _$sys.callAction('toPsnDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toEntGroup(json){
    try{
        _$sys.callAction('toEntGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toPsnGroup(json){
    try{
        _$sys.callAction('toPsnGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$nearlyCheckControllerBase$listViewOnload(json){
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
        if(this._userController.listViewOnload){
            this._userController.listViewOnload($context);
        }else{
            alert("找不到方法[listViewOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.nearlyCheckControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$tabBarOnload,
    toNearlyCheck : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNearlyCheck,
    UMonUnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonDataBinding,
    toSearch : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toSearch,
    toNavGroup : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toNavGroup,
    toPsnDetail : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toPsnDetail,
    toEntGroup : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toEntGroup,
    UMonInit : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$UMonLoad,
    toPsnGroup : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$toPsnGroup,
    listViewOnload : nc$bs$oa$oama$ecm$nearlyCheckControllerBase$listViewOnload
};
nc.bs.oa.oama.ecm.nearlyCheckControllerBase.registerClass('nc.bs.oa.oama.ecm.nearlyCheckControllerBase',UMP.UI.Mvc.Controller);
