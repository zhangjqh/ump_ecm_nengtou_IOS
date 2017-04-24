Type.registerNamespace('nc.bs.oa.oama.ecm.responserefcopyControllerBase');
nc.bs.oa.oama.ecm.responserefcopyControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.responserefcopyControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        searchcallback : [this.searchcallback],
        getnextpage : [this.getnextpage],
        refload : [this.refload],
        okbtn : [this.okbtn],
        load : [this.load],
        serchkeyword : [this.serchkeyword],
        onEmptyClick : [this.onEmptyClick],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.responserefcopyController){
        this._userController = new nc.bs.oa.oama.ecm.responserefcopyController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.responserefcopyController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.responserefEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.responserefEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.responseref != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.responseref(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$searchcallback(json){
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
        if(this._userController.searchcallback){
            this._userController.searchcallback($context);
        }else{
            alert("找不到方法[searchcallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$getnextpage(json){
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$refload(json){
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
        if(this._userController.refload){
            this._userController.refload($context);
        }else{
            alert("找不到方法[refload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$okbtn(json){
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
        if(this._userController.okbtn){
            this._userController.okbtn($context);
        }else{
            alert("找不到方法[okbtn]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$serchkeyword(json){
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
        if(this._userController.serchkeyword){
            this._userController.serchkeyword($context);
        }else{
            alert("找不到方法[serchkeyword]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$onEmptyClick(json){
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
        if(this._userController.onEmptyClick){
            this._userController.onEmptyClick($context);
        }else{
            alert("找不到方法[onEmptyClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$responserefcopyControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.responserefcopyControllerBase.prototype = {
    searchcallback : nc$bs$oa$oama$ecm$responserefcopyControllerBase$searchcallback,
    getnextpage : nc$bs$oa$oama$ecm$responserefcopyControllerBase$getnextpage,
    refload : nc$bs$oa$oama$ecm$responserefcopyControllerBase$refload,
    okbtn : nc$bs$oa$oama$ecm$responserefcopyControllerBase$okbtn,
    load : nc$bs$oa$oama$ecm$responserefcopyControllerBase$load,
    serchkeyword : nc$bs$oa$oama$ecm$responserefcopyControllerBase$serchkeyword,
    onEmptyClick : nc$bs$oa$oama$ecm$responserefcopyControllerBase$onEmptyClick,
    onCancel : nc$bs$oa$oama$ecm$responserefcopyControllerBase$onCancel
};
nc.bs.oa.oama.ecm.responserefcopyControllerBase.registerClass('nc.bs.oa.oama.ecm.responserefcopyControllerBase',UMP.UI.Mvc.Controller);
