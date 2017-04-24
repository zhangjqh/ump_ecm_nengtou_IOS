Type.registerNamespace('nc.bs.oa.oama.ecm.myschedulerControllerBase');
nc.bs.oa.oama.ecm.myschedulerControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.myschedulerControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        tabBarOnload : [this.tabBarOnload],
        toMyScheduler : [this.toMyScheduler],
        toAddScheduler : [this.toAddScheduler],
        toDesk : [this.toDesk],
        daychange : [this.daychange],
        loginFailed : [this.loginFailed],
        monthchange : [this.monthchange],
        toShareScheduler : [this.toShareScheduler],
        toTimeset : [this.toTimeset],
        setSelector : [this.setSelector],
        toToday : [this.toToday],
        toSchedulerDetailOnce : [this.toSchedulerDetailOnce],
        login : [this.login],
        toSchedulerDetail : [this.toSchedulerDetail],
        toSchedulerDetailAll : [this.toSchedulerDetailAll]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.myschedulerController){
        this._userController = new nc.bs.oa.oama.ecm.myschedulerController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.myschedulerController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$tabBarOnload(json){
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toMyScheduler(json){
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
        if(this._userController.toMyScheduler){
            this._userController.toMyScheduler($context);
        }else{
            alert("找不到方法[toMyScheduler]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toAddScheduler(json){
    try{
        _$sys.callAction('toAddScheduler');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toDesk(json){
    try{
        _$sys.callAction('toDesk');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$daychange(json){
    try{
        _$sys.callAction('daychange');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$loginFailed(json){
    try{
        _$sys.callAction('loginFailed');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$monthchange(json){
    try{
        _$sys.callAction('monthchange');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toShareScheduler(json){
    try{
        _$sys.callAction('toShareScheduler');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toTimeset(json){
    try{
        _$sys.callAction('toTimeset');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$setSelector(json){
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toToday(json){
    try{
        _$sys.callAction('toToday');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailOnce(json){
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$login(json){
    try{
        _$sys.callAction('login');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetail(json){
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
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailAll(json){
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
nc.bs.oa.oama.ecm.myschedulerControllerBase.prototype = {
    tabBarOnload : nc$bs$oa$oama$ecm$myschedulerControllerBase$tabBarOnload,
    toMyScheduler : nc$bs$oa$oama$ecm$myschedulerControllerBase$toMyScheduler,
    toAddScheduler : nc$bs$oa$oama$ecm$myschedulerControllerBase$toAddScheduler,
    toDesk : nc$bs$oa$oama$ecm$myschedulerControllerBase$toDesk,
    daychange : nc$bs$oa$oama$ecm$myschedulerControllerBase$daychange,
    loginFailed : nc$bs$oa$oama$ecm$myschedulerControllerBase$loginFailed,
    monthchange : nc$bs$oa$oama$ecm$myschedulerControllerBase$monthchange,
    toShareScheduler : nc$bs$oa$oama$ecm$myschedulerControllerBase$toShareScheduler,
    toTimeset : nc$bs$oa$oama$ecm$myschedulerControllerBase$toTimeset,
    setSelector : nc$bs$oa$oama$ecm$myschedulerControllerBase$setSelector,
    toToday : nc$bs$oa$oama$ecm$myschedulerControllerBase$toToday,
    toSchedulerDetailOnce : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailOnce,
    login : nc$bs$oa$oama$ecm$myschedulerControllerBase$login,
    toSchedulerDetail : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetail,
    toSchedulerDetailAll : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailAll
};
nc.bs.oa.oama.ecm.myschedulerControllerBase.registerClass('nc.bs.oa.oama.ecm.myschedulerControllerBase',UMP.UI.Mvc.Controller);
