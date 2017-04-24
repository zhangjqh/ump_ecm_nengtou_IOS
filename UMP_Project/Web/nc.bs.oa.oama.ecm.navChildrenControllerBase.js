Type.registerNamespace('nc.bs.oa.oama.ecm.navChildrenControllerBase');
nc.bs.oa.oama.ecm.navChildrenControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.navChildrenControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        toChildNav : [this.toChildNav],
        setSelector : [this.setSelector],
        toPsnDetail : [this.toPsnDetail],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        UMonUnload : [this.UMonUnload],
        getNextPage : [this.getNextPage],
        listViewOnload : [this.listViewOnload],
        UMonComplete : [this.UMonComplete],
        toPsnList : [this.toPsnList],
        onBack : [this.onBack],
        UMonDataBinding : [this.UMonDataBinding]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.navChildrenController){
        this._userController = new nc.bs.oa.oama.ecm.navChildrenController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.navChildrenController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$toChildNav(json){
    try{
        _$sys.callAction('toChildNav');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$setSelector(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$toPsnDetail(json){
    try{
        _$sys.callAction('toPsnDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$getNextPage(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$listViewOnload(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$navChildrenControllerBase$toPsnList(json){
    try{
        _$sys.callAction('toPsnList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonDataBinding(json){
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
nc.bs.oa.oama.ecm.navChildrenControllerBase.prototype = {
    toChildNav : nc$bs$oa$oama$ecm$navChildrenControllerBase$toChildNav,
    setSelector : nc$bs$oa$oama$ecm$navChildrenControllerBase$setSelector,
    toPsnDetail : nc$bs$oa$oama$ecm$navChildrenControllerBase$toPsnDetail,
    UMonInit : nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonUnload,
    getNextPage : nc$bs$oa$oama$ecm$navChildrenControllerBase$getNextPage,
    listViewOnload : nc$bs$oa$oama$ecm$navChildrenControllerBase$listViewOnload,
    UMonComplete : nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonComplete,
    toPsnList : nc$bs$oa$oama$ecm$navChildrenControllerBase$toPsnList,
    onBack : nc$bs$oa$oama$ecm$navChildrenControllerBase$onBack,
    UMonDataBinding : nc$bs$oa$oama$ecm$navChildrenControllerBase$UMonDataBinding
};
nc.bs.oa.oama.ecm.navChildrenControllerBase.registerClass('nc.bs.oa.oama.ecm.navChildrenControllerBase',UMP.UI.Mvc.Controller);
