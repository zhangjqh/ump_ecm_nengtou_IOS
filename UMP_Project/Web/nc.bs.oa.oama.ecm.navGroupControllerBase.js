Type.registerNamespace('nc.bs.oa.oama.ecm.navGroupControllerBase');
nc.bs.oa.oama.ecm.navGroupControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.navGroupControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        doSearch : [this.doSearch],
        toDesk : [this.toDesk],
        toNearlyCheck : [this.toNearlyCheck],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        toPsnList : [this.toPsnList],
        UMonDataBinding : [this.UMonDataBinding],
        toSearch : [this.toSearch],
        toChildNav : [this.toChildNav],
        setSelector : [this.setSelector],
        toNavGroup : [this.toNavGroup],
        toEntGroup : [this.toEntGroup],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        toPsnGroup : [this.toPsnGroup],
        getNextPage : [this.getNextPage],
        listViewOnload : [this.listViewOnload]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.navGroupController){
        this._userController = new nc.bs.oa.oama.ecm.navGroupController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.navGroupController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.navListEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.navListEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.navList != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.navList(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$tabBarOnload(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$doSearch(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toDesk(json){
    try{
        _$sys.callAction('toDesk');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$toNearlyCheck(json){
    try{
        _$sys.callAction('toNearlyCheck');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toPsnList(json){
    try{
        _$sys.callAction('toPsnList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toSearch(json){
    try{
        _$sys.callAction('toSearch');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$toChildNav(json){
    try{
        _$sys.callAction('toChildNav');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$setSelector(json){
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
        if(this._userController.setSelector){
            this._userController.setSelector($context);
        }else{
            alert("找不到方法[setSelector]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toNavGroup(json){
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
        if(this._userController.toNavGroup){
            this._userController.toNavGroup($context);
        }else{
            alert("找不到方法[toNavGroup]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toEntGroup(json){
    try{
        _$sys.callAction('toEntGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$toPsnGroup(json){
    try{
        _$sys.callAction('toPsnGroup');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navGroupControllerBase$getNextPage(json){
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
        if(this._userController.getNextPage){
            this._userController.getNextPage($context);
        }else{
            alert("找不到方法[getNextPage]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$navGroupControllerBase$listViewOnload(json){
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
nc.bs.oa.oama.ecm.navGroupControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$navGroupControllerBase$tabBarOnload,
    doSearch : nc$bs$oa$oama$ecm$navGroupControllerBase$doSearch,
    toDesk : nc$bs$oa$oama$ecm$navGroupControllerBase$toDesk,
    toNearlyCheck : nc$bs$oa$oama$ecm$navGroupControllerBase$toNearlyCheck,
    UMonUnload : nc$bs$oa$oama$ecm$navGroupControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$navGroupControllerBase$UMonComplete,
    toPsnList : nc$bs$oa$oama$ecm$navGroupControllerBase$toPsnList,
    UMonDataBinding : nc$bs$oa$oama$ecm$navGroupControllerBase$UMonDataBinding,
    toSearch : nc$bs$oa$oama$ecm$navGroupControllerBase$toSearch,
    toChildNav : nc$bs$oa$oama$ecm$navGroupControllerBase$toChildNav,
    setSelector : nc$bs$oa$oama$ecm$navGroupControllerBase$setSelector,
    toNavGroup : nc$bs$oa$oama$ecm$navGroupControllerBase$toNavGroup,
    toEntGroup : nc$bs$oa$oama$ecm$navGroupControllerBase$toEntGroup,
    UMonInit : nc$bs$oa$oama$ecm$navGroupControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$navGroupControllerBase$UMonLoad,
    toPsnGroup : nc$bs$oa$oama$ecm$navGroupControllerBase$toPsnGroup,
    getNextPage : nc$bs$oa$oama$ecm$navGroupControllerBase$getNextPage,
    listViewOnload : nc$bs$oa$oama$ecm$navGroupControllerBase$listViewOnload
};
nc.bs.oa.oama.ecm.navGroupControllerBase.registerClass('nc.bs.oa.oama.ecm.navGroupControllerBase',UMP.UI.Mvc.Controller);
