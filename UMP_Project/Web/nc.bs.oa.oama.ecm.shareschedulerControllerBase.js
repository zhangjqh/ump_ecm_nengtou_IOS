Type.registerNamespace('nc.bs.oa.oama.ecm.shareschedulerControllerBase');
nc.bs.oa.oama.ecm.shareschedulerControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.shareschedulerControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        monthchange : [this.monthchange],
        toShareScheduler : [this.toShareScheduler],
        toMyScheduler : [this.toMyScheduler],
        setSelector : [this.setSelector],
        toTimeset : [this.toTimeset],
        toToday : [this.toToday],
        toDesk : [this.toDesk],
        toSchedulerDetailOnce : [this.toSchedulerDetailOnce],
        daychange : [this.daychange],
        toSchedulerDetail : [this.toSchedulerDetail],
        toSchedulerDetailAll : [this.toSchedulerDetailAll]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.shareschedulerController){
        this._userController = new nc.bs.oa.oama.ecm.shareschedulerController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.shareschedulerController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.calendarEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.calendarEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.calendar != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.calendar(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$tabBarOnload(json){
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
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$monthchange(json){
    try{
        _$sys.callAction('monthchange');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toShareScheduler(json){
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
        if(this._userController.toShareScheduler){
            this._userController.toShareScheduler($context);
        }else{
            alert("找不到方法[toShareScheduler]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toMyScheduler(json){
    try{
        _$sys.callAction('toMyScheduler');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$setSelector(json){
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
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toTimeset(json){
    try{
        _$sys.callAction('toTimeset');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toToday(json){
    try{
        _$sys.callAction('toToday');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toDesk(json){
    try{
        _$sys.callAction('toDesk');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailOnce(json){
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
        if(this._userController.toSchedulerDetailOnce){
            this._userController.toSchedulerDetailOnce($context);
        }else{
            alert("找不到方法[toSchedulerDetailOnce]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$daychange(json){
    try{
        _$sys.callAction('daychange');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetail(json){
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
        if(this._userController.toSchedulerDetail){
            this._userController.toSchedulerDetail($context);
        }else{
            alert("找不到方法[toSchedulerDetail]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailAll(json){
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
        if(this._userController.toSchedulerDetailAll){
            this._userController.toSchedulerDetailAll($context);
        }else{
            alert("找不到方法[toSchedulerDetailAll]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.shareschedulerControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$shareschedulerControllerBase$tabBarOnload,
    monthchange : nc$bs$oa$oama$ecm$shareschedulerControllerBase$monthchange,
    toShareScheduler : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toShareScheduler,
    toMyScheduler : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toMyScheduler,
    setSelector : nc$bs$oa$oama$ecm$shareschedulerControllerBase$setSelector,
    toTimeset : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toTimeset,
    toToday : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toToday,
    toDesk : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toDesk,
    toSchedulerDetailOnce : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailOnce,
    daychange : nc$bs$oa$oama$ecm$shareschedulerControllerBase$daychange,
    toSchedulerDetail : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetail,
    toSchedulerDetailAll : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailAll
};
nc.bs.oa.oama.ecm.shareschedulerControllerBase.registerClass('nc.bs.oa.oama.ecm.shareschedulerControllerBase',UMP.UI.Mvc.Controller);
