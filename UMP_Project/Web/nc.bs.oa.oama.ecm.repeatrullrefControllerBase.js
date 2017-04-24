Type.registerNamespace('nc.bs.oa.oama.ecm.repeatrullrefControllerBase');
nc.bs.oa.oama.ecm.repeatrullrefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.repeatrullrefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        toOneRepeatdayRef : [this.toOneRepeatdayRef],
        endrepeattypeDate : [this.endrepeattypeDate],
        returnCallback : [this.returnCallback],
        repeatDay : [this.repeatDay],
        repeatMonth : [this.repeatMonth],
        repeatYear : [this.repeatYear],
        endrepeattype : [this.endrepeattype],
        returnResult : [this.returnResult],
        toRepeatdayRef : [this.toRepeatdayRef],
        repeattypeDate : [this.repeattypeDate],
        isRepeatChanged : [this.isRepeatChanged],
        repeattypeWeekday : [this.repeattypeWeekday],
        repeattypeDay : [this.repeattypeDay],
        toMonthRef : [this.toMonthRef],
        load : [this.load],
        endrepeattypeTimes : [this.endrepeattypeTimes],
        repeatWeek : [this.repeatWeek],
        repeattypeWeek : [this.repeattypeWeek],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.repeatrullrefController){
        this._userController = new nc.bs.oa.oama.ecm.repeatrullrefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.repeatrullrefController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.eventDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.eventDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toOneRepeatdayRef(json){
    try{
        _$sys.callAction('toOneRepeatdayRef');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattypeDate(json){
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
        if(this._userController.endrepeattypeDate){
            this._userController.endrepeattypeDate($context);
        }else{
            alert("找不到方法[endrepeattypeDate]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnCallback(json){
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
        if(this._userController.returnCallback){
            this._userController.returnCallback($context);
        }else{
            alert("找不到方法[returnCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatDay(json){
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
        if(this._userController.repeatDay){
            this._userController.repeatDay($context);
        }else{
            alert("找不到方法[repeatDay]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatMonth(json){
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
        if(this._userController.repeatMonth){
            this._userController.repeatMonth($context);
        }else{
            alert("找不到方法[repeatMonth]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatYear(json){
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
        if(this._userController.repeatYear){
            this._userController.repeatYear($context);
        }else{
            alert("找不到方法[repeatYear]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattype(json){
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
        if(this._userController.endrepeattype){
            this._userController.endrepeattype($context);
        }else{
            alert("找不到方法[endrepeattype]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnResult(json){
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
        if(this._userController.returnResult){
            this._userController.returnResult($context);
        }else{
            alert("找不到方法[returnResult]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toRepeatdayRef(json){
    try{
        _$sys.callAction('toRepeatdayRef');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeDate(json){
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
        if(this._userController.repeattypeDate){
            this._userController.repeattypeDate($context);
        }else{
            alert("找不到方法[repeattypeDate]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$isRepeatChanged(json){
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
        if(this._userController.isRepeatChanged){
            this._userController.isRepeatChanged($context);
        }else{
            alert("找不到方法[isRepeatChanged]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeWeekday(json){
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
        if(this._userController.repeattypeWeekday){
            this._userController.repeattypeWeekday($context);
        }else{
            alert("找不到方法[repeattypeWeekday]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeDay(json){
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
        if(this._userController.repeattypeDay){
            this._userController.repeattypeDay($context);
        }else{
            alert("找不到方法[repeattypeDay]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toMonthRef(json){
    try{
        _$sys.callAction('toMonthRef');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$load(json){
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
        if(this._userController.load){
            this._userController.load($context);
        }else{
            alert("找不到方法[load]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattypeTimes(json){
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
        if(this._userController.endrepeattypeTimes){
            this._userController.endrepeattypeTimes($context);
        }else{
            alert("找不到方法[endrepeattypeTimes]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatWeek(json){
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
        if(this._userController.repeatWeek){
            this._userController.repeatWeek($context);
        }else{
            alert("找不到方法[repeatWeek]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeWeek(json){
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
        if(this._userController.repeattypeWeek){
            this._userController.repeattypeWeek($context);
        }else{
            alert("找不到方法[repeattypeWeek]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.repeatrullrefControllerBase.prototype = {
    toOneRepeatdayRef : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toOneRepeatdayRef,
    endrepeattypeDate : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattypeDate,
    returnCallback : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnCallback,
    repeatDay : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatDay,
    repeatMonth : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatMonth,
    repeatYear : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatYear,
    endrepeattype : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattype,
    returnResult : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnResult,
    toRepeatdayRef : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toRepeatdayRef,
    repeattypeDate : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeDate,
    isRepeatChanged : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$isRepeatChanged,
    repeattypeWeekday : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeWeekday,
    repeattypeDay : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeDay,
    toMonthRef : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$toMonthRef,
    load : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$load,
    endrepeattypeTimes : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$endrepeattypeTimes,
    repeatWeek : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeatWeek,
    repeattypeWeek : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$repeattypeWeek,
    onCancel : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.repeatrullrefControllerBase.registerClass('nc.bs.oa.oama.ecm.repeatrullrefControllerBase',UMP.UI.Mvc.Controller);
