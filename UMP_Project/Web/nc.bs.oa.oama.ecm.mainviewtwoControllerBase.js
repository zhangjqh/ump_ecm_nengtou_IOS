Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewtwoControllerBase');
nc.bs.oa.oama.ecm.mainviewtwoControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.mainviewtwoControllerBase.initializeBase(this);

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
    if(nc.bs.oa.oama.ecm.mainviewtwoController){
        this._userController = new nc.bs.oa.oama.ecm.mainviewtwoController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.mainviewtwoController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$querytasklist(json){
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
        if(this._userController.querytasklist){
            this._userController.querytasklist($context);
        }else{
            alert("找不到方法[querytasklist]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$getnextpage(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$tasklistonload(json){
    try{
        _$sys.callAction('tasklistonload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$showItemClick(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$mypublish(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$getfirstpage(json){
    try{
        _$sys.callAction('getfirstpage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$addtask(json){
    try{
        _$sys.callAction('addtask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$mytask(json){
    try{
        _$sys.callAction('mytask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$setSelector(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$initbtnclick(json){
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
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$returnhome(json){
    try{
        _$sys.callAction('returnhome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewtwoControllerBase$confirm(json){
    try{
        _$sys.callAction('confirm');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.mainviewtwoControllerBase.prototype = {
    querytasklist : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$querytasklist,
    getnextpage : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$getnextpage,
    tasklistonload : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$tasklistonload,
    showItemClick : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$showItemClick,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonComplete,
    mypublish : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$mypublish,
    getfirstpage : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$getfirstpage,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonDataBinding,
    addtask : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$addtask,
    mytask : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$mytask,
    setSelector : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$setSelector,
    UMonInit : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$UMonLoad,
    initbtnclick : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$initbtnclick,
    returnhome : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$returnhome,
    confirm : nc$bs$oa$oama$ecm$mainviewtwoControllerBase$confirm
};
nc.bs.oa.oama.ecm.mainviewtwoControllerBase.registerClass('nc.bs.oa.oama.ecm.mainviewtwoControllerBase',UMP.UI.Mvc.Controller);
