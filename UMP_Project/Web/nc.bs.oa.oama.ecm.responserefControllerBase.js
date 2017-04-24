Type.registerNamespace('nc.bs.oa.oama.ecm.responserefControllerBase');
nc.bs.oa.oama.ecm.responserefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.responserefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        searchcallback : [this.searchcallback],
        getnextpage : [this.getnextpage],
        refload : [this.refload],
        okbtn : [this.okbtn],
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        serchkeyword : [this.serchkeyword],
        onEmptyClick : [this.onEmptyClick],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.responserefController){
        this._userController = new nc.bs.oa.oama.ecm.responserefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.responserefController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$responserefControllerBase$searchcallback(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$getnextpage(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$refload(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$okbtn(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$responserefControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$responserefControllerBase$serchkeyword(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$onEmptyClick(json){
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
function nc$bs$oa$oama$ecm$responserefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.responserefControllerBase.prototype = {
    searchcallback : nc$bs$oa$oama$ecm$responserefControllerBase$searchcallback,
    getnextpage : nc$bs$oa$oama$ecm$responserefControllerBase$getnextpage,
    refload : nc$bs$oa$oama$ecm$responserefControllerBase$refload,
    okbtn : nc$bs$oa$oama$ecm$responserefControllerBase$okbtn,
    onClickListRow : nc$bs$oa$oama$ecm$responserefControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$responserefControllerBase$load,
    serchkeyword : nc$bs$oa$oama$ecm$responserefControllerBase$serchkeyword,
    onEmptyClick : nc$bs$oa$oama$ecm$responserefControllerBase$onEmptyClick,
    onCancel : nc$bs$oa$oama$ecm$responserefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.responserefControllerBase.registerClass('nc.bs.oa.oama.ecm.responserefControllerBase',UMP.UI.Mvc.Controller);
