Type.registerNamespace('nc.bs.oa.oama.ecm.StepEditControllerBase');
nc.bs.oa.oama.ecm.StepEditControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.StepEditControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onUpBtnClick : [this.onUpBtnClick],
        onSeizeBtnClick : [this.onSeizeBtnClick],
        onDeleteBtnClick : [this.onDeleteBtnClick],
        onSerialBtnClick : [this.onSerialBtnClick],
        onCountersignBtnClick : [this.onCountersignBtnClick],
        onParallelBtnClick : [this.onParallelBtnClick],
        onDataLoad : [this.onDataLoad],
        onDownBtnClick : [this.onDownBtnClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        addCallBack : [this.addCallBack],
        onAddBtnClick : [this.onAddBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.StepEditController){
        this._userController = new nc.bs.oa.oama.ecm.StepEditController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.StepEditController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.WorkDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.WorkDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$StepEditControllerBase$onUpBtnClick(json){
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
        if(this._userController.onUpBtnClick){
            this._userController.onUpBtnClick($context);
        }else{
            alert("找不到方法[onUpBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onSeizeBtnClick(json){
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
        if(this._userController.onSeizeBtnClick){
            this._userController.onSeizeBtnClick($context);
        }else{
            alert("找不到方法[onSeizeBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onDeleteBtnClick(json){
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
        if(this._userController.onDeleteBtnClick){
            this._userController.onDeleteBtnClick($context);
        }else{
            alert("找不到方法[onDeleteBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onSerialBtnClick(json){
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
        if(this._userController.onSerialBtnClick){
            this._userController.onSerialBtnClick($context);
        }else{
            alert("找不到方法[onSerialBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onCountersignBtnClick(json){
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
        if(this._userController.onCountersignBtnClick){
            this._userController.onCountersignBtnClick($context);
        }else{
            alert("找不到方法[onCountersignBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onParallelBtnClick(json){
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
        if(this._userController.onParallelBtnClick){
            this._userController.onParallelBtnClick($context);
        }else{
            alert("找不到方法[onParallelBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onDataLoad(json){
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
        if(this._userController.onDataLoad){
            this._userController.onDataLoad($context);
        }else{
            alert("找不到方法[onDataLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onDownBtnClick(json){
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
        if(this._userController.onDownBtnClick){
            this._userController.onDownBtnClick($context);
        }else{
            alert("找不到方法[onDownBtnClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$StepEditControllerBase$addCallBack(json){
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
        if(this._userController.addCallBack){
            this._userController.addCallBack($context);
        }else{
            alert("找不到方法[addCallBack]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$StepEditControllerBase$onAddBtnClick(json){
    try{
        _$sys.callAction('onAddBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.StepEditControllerBase.prototype = {
    onUpBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onUpBtnClick,
    onSeizeBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onSeizeBtnClick,
    onDeleteBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onDeleteBtnClick,
    onSerialBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onSerialBtnClick,
    onCountersignBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onCountersignBtnClick,
    onParallelBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onParallelBtnClick,
    onDataLoad : nc$bs$oa$oama$ecm$StepEditControllerBase$onDataLoad,
    onDownBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onDownBtnClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onReturnBtnClick,
    addCallBack : nc$bs$oa$oama$ecm$StepEditControllerBase$addCallBack,
    onAddBtnClick : nc$bs$oa$oama$ecm$StepEditControllerBase$onAddBtnClick
};
nc.bs.oa.oama.ecm.StepEditControllerBase.registerClass('nc.bs.oa.oama.ecm.StepEditControllerBase',UMP.UI.Mvc.Controller);
