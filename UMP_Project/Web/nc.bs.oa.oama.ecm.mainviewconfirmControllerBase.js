Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewconfirmControllerBase');
nc.bs.oa.oama.ecm.mainviewconfirmControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.mainviewconfirmControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        querytasklist : [this.querytasklist],
        getnextpage : [this.getnextpage],
        tasklistonload : [this.tasklistonload],
        showItemClick : [this.showItemClick],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        mypublish : [this.mypublish],
        getfirstpage : [this.getfirstpage],
        UMonDataBinding : [this.UMonDataBinding],
        addtask : [this.addtask],
        mytask : [this.mytask],
        setSelector : [this.setSelector],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        initbtnclick : [this.initbtnclick],
        returnhome : [this.returnhome],
        confirm : [this.confirm]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.mainviewconfirmController){
        this._userController = new nc.bs.oa.oama.ecm.mainviewconfirmController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.mainviewconfirmController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detaillistEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.detaillistEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detaillist != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.detaillist(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$querytasklist(json){
    try{
        _$sys.callAction('querytasklist');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$getnextpage(json){
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
        if(this._userController.getnextpage){
            this._userController.getnextpage($context);
        }else{
            alert("找不到方法[getnextpage]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$tasklistonload(json){
    try{
        _$sys.callAction('tasklistonload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$showItemClick(json){
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
        if(this._userController.showItemClick){
            this._userController.showItemClick($context);
        }else{
            alert("找不到方法[showItemClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$mypublish(json){
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
        if(this._userController.mypublish){
            this._userController.mypublish($context);
        }else{
            alert("找不到方法[mypublish]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$getfirstpage(json){
    try{
        _$sys.callAction('getfirstpage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$addtask(json){
    try{
        _$sys.callAction('addtask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$mytask(json){
    try{
        _$sys.callAction('mytask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$setSelector(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$initbtnclick(json){
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
        if(this._userController.initbtnclick){
            this._userController.initbtnclick($context);
        }else{
            alert("找不到方法[initbtnclick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$returnhome(json){
    try{
        _$sys.callAction('returnhome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$confirm(json){
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
        if(this._userController.confirm){
            this._userController.confirm($context);
        }else{
            alert("找不到方法[confirm]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.mainviewconfirmControllerBase.prototype = {
    querytasklist : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$querytasklist,
    getnextpage : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$getnextpage,
    tasklistonload : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$tasklistonload,
    showItemClick : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$showItemClick,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonComplete,
    mypublish : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$mypublish,
    getfirstpage : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$getfirstpage,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonDataBinding,
    addtask : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$addtask,
    mytask : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$mytask,
    setSelector : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$setSelector,
    UMonInit : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$UMonLoad,
    initbtnclick : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$initbtnclick,
    returnhome : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$returnhome,
    confirm : nc$bs$oa$oama$ecm$mainviewconfirmControllerBase$confirm
};
nc.bs.oa.oama.ecm.mainviewconfirmControllerBase.registerClass('nc.bs.oa.oama.ecm.mainviewconfirmControllerBase',UMP.UI.Mvc.Controller);
