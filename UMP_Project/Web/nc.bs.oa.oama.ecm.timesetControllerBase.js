Type.registerNamespace('nc.bs.oa.oama.ecm.timesetControllerBase');
nc.bs.oa.oama.ecm.timesetControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.timesetControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        toShareScheduler : [this.toShareScheduler],
        toMyScheduler : [this.toMyScheduler],
        toTimeset : [this.toTimeset]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.timesetController){
        this._userController = new nc.bs.oa.oama.ecm.timesetController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.timesetController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[timeset] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$timesetControllerBase$tabBarOnload(json){
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
function nc$bs$oa$oama$ecm$timesetControllerBase$toShareScheduler(json){
    try{
        _$sys.callAction('toShareScheduler');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$timesetControllerBase$toMyScheduler(json){
    try{
        _$sys.callAction('toMyScheduler');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$timesetControllerBase$toTimeset(json){
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
        if(this._userController.toTimeset){
            this._userController.toTimeset($context);
        }else{
            alert("找不到方法[toTimeset]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.timesetControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$timesetControllerBase$tabBarOnload,
    toShareScheduler : nc$bs$oa$oama$ecm$timesetControllerBase$toShareScheduler,
    toMyScheduler : nc$bs$oa$oama$ecm$timesetControllerBase$toMyScheduler,
    toTimeset : nc$bs$oa$oama$ecm$timesetControllerBase$toTimeset
};
nc.bs.oa.oama.ecm.timesetControllerBase.registerClass('nc.bs.oa.oama.ecm.timesetControllerBase',UMP.UI.Mvc.Controller);
